package data.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JdbcConnector {

    private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:XE";
    private String jdbcUser = "db2";
    private String jdbcPassword = "db2";

    private List<JdbcConnectListener> jdbcConnectListeners = new ArrayList<>();

    private static JdbcConnector jdbcConnector;

    Connection connection;

    public JdbcConnector() {
    }

    public void addJdbcConnectListerer(JdbcConnectListener listener) {
        jdbcConnectListeners.add(listener);
    }

    public void removeJdbcConnectListener(JdbcConnectListener listener) {
        jdbcConnectListeners.remove(listener);
    }

    public void openConnection() {
        try {
            if (connection == null) {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                connection = DriverManager.getConnection(JDBC_URL, jdbcUser, jdbcPassword);
                System.out.println("JDBC getConnection successful");
                notifyJdbcConnectListeners(true);
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            System.out.println("JDBC getConnection ");
            notifyJdbcConnectListeners(false);
        }
    }

    public Connection getConnection() {
        return connection;
    }

    private void notifyJdbcConnectListeners(boolean connected) {
        for (JdbcConnectListener listener : jdbcConnectListeners) {
            listener.onJdbcConnect(connected, jdbcUser);
        }
    }

    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        connection = null;
        notifyJdbcConnectListeners(false);
    }

    public static JdbcConnector getInstance() {
        if (jdbcConnector == null) {
            jdbcConnector = new JdbcConnector();
        }
        return jdbcConnector;
    }

    public boolean isConnected() {
        return connection != null;
    }

    public String getJdbcUser() {
        return jdbcUser;
    }
}

