package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Dolgozo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DolgozoDAO implements DataChangeAwareDAO {

    static final List<DataChangeListener> listeners = new ArrayList<>();
    private static final String SELECT = "SELECT * FROM dolgozo";
    private static final String INSERT = "INSERT INTO dolgozo (nev, beosztas) VALUES (?, ?)";

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


    public List<Dolgozo> get() {
        List<Dolgozo> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Dolgozo dolgozo = new Dolgozo();
                dolgozo.setId(resultSet.getInt("id"));
                dolgozo.setNev(resultSet.getString("nev"));
                dolgozo.setBeosztas(resultSet.getString("beosztas"));
                list.add(dolgozo);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

    public boolean insert(Dolgozo dolgozo) {
        try {
            PreparedStatement preparedStatement = JdbcConnector.getInstance().getConnection().prepareStatement(INSERT, new String[]{"id"});
            preparedStatement.setString(1, dolgozo.getNev());
            preparedStatement.setString(2, dolgozo.getBeosztas());
            preparedStatement.execute();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            generatedKeys.next();
            dolgozo.setId(generatedKeys.getInt(1));
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        notifyDataChangeListeners();
        return true;
    }

}
