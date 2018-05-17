package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Eset;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EsetDAO implements DataChangeAwareDAO {

    private static final String SELECT = "SELECT * FROM eset";

    static final List<DataChangeListener> listeners = new ArrayList<>();

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

    public List<Eset> get() {
        List<Eset> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Eset eset = new Eset();
                eset.setId(resultSet.getInt("id"));
                eset.setIranyitoszam(resultSet.getString("iranyitoszam"));
                eset.setVaros(resultSet.getString("varos"));
                eset.setKozterulet(resultSet.getString("kozterulet"));
                eset.setHazszam(resultSet.getString("hazszam"));
                eset.setMegnevezes(resultSet.getString("megnevezes"));
                eset.setHivas(resultSet.getInt("hivas"));
                list.add(eset);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

}
