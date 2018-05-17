package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Esetkocsi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SchemaDAO implements DataChangeAwareDAO {

    static final List<DataChangeListener> listeners = new ArrayList<>();

    private static final String REINIT = "{CALL db2_elso.feltolt}";

    @Override
    public synchronized void notifyDataChangeListeners() {
        for (DataChangeListener listener : listeners) {
            listener.onDataChange();
        }
    }

    @Override
    public synchronized void addDataChangeListener(DataChangeListener listener) {
        if (!listeners.contains(listener)) {
            listeners.add(listener);
        }
    }

    @Override
    public synchronized void removeDataChangeListener(DataChangeListener listener) {
        listeners.remove(listener);
    }


    public void reinitData() {
        try {
            CallableStatement callableStatement = JdbcConnector.getInstance().getConnection().prepareCall(REINIT);
            callableStatement.execute();
            notifyDataChangeListeners();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isColumnNullable(String tableName, String columnname) {
        try {
            Connection connection = JdbcConnector.getInstance().getConnection();
            DatabaseMetaData metaData = connection.getMetaData();
            ResultSet columns = metaData.getColumns(null, null, tableName.toUpperCase(), columnname.toUpperCase());
            while (columns.next()) {
                if (columns.getString("IS_NULLABLE").equalsIgnoreCase("YES")) {
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean rendszamAtiras(String regiRendszam, String ujRendszam) {

        Esetkocsi esetkocsi = new EsetkocsiDAO().getById(regiRendszam);

        String REGI_ESETKOCSI = "DELETE esetkocsi WHERE rendszam = ?";
        String UJ_ESETKOCSI = "INSERT INTO esetkocsi (rendszam, tipus) VALUES (?, ?)";
        String ESET = "UPDATE vonulas SET esetkocsi = ? WHERE esetkocsi = ?";

        Connection connection = null;
        try {

            connection = JdbcConnector.getInstance().getConnection();
            connection.setAutoCommit(false);

            PreparedStatement preparedStatement2 = connection.prepareStatement(UJ_ESETKOCSI);
            preparedStatement2.setString(1, ujRendszam);
            preparedStatement2.setString(2, esetkocsi.getTipus());
            preparedStatement2.executeUpdate();

            PreparedStatement preparedStatement1 = connection.prepareStatement(ESET);
            preparedStatement1.setString(1, ujRendszam);
            preparedStatement1.setString(2, regiRendszam);
            preparedStatement1.executeUpdate();

            PreparedStatement preparedStatement3 = connection.prepareStatement(REGI_ESETKOCSI);
            preparedStatement3.setString(1, regiRendszam);
            preparedStatement3.executeUpdate();

            connection.commit();
            connection.setAutoCommit(true);

            notifyDataChangeListeners();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            } catch (NullPointerException e1) {
                e1.printStackTrace();
            }

        }

        return false;
    }

}
