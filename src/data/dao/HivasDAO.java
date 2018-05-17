package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Hivas;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HivasDAO implements DataChangeAwareDAO {

    static final List<DataChangeListener> listeners = new ArrayList<>();
    private static final String SELECT = "SELECT * FROM hivas";

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


    public List<Hivas> get() {
        List<Hivas> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Hivas hivas = new Hivas();
                hivas.setId(resultSet.getInt("id"));
                hivas.setIdopont(resultSet.getDate("idopont"));
                hivas.setDiszpecser(resultSet.getInt("diszpecser"));
                hivas.setBejelento(resultSet.getString("bejelento"));
                list.add(hivas);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

}
