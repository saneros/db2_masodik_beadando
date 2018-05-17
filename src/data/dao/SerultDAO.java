package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Serult;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SerultDAO implements DataChangeAwareDAO {

    private static final String SELECT = "SELECT * FROM serult";

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

    public List<Serult> get() {
        List<Serult> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Serult serult = new Serult();
                serult.setId(resultSet.getInt("id"));
                serult.setTaj(resultSet.getString("taj"));
                serult.setNev(resultSet.getString("nev"));
                serult.setIranyitoszam(resultSet.getString("iranyitoszam"));
                serult.setVaros(resultSet.getString("varos"));
                serult.setOrszag(resultSet.getString("orszag"));
                serult.setKozterulet(resultSet.getString("kozterulet"));
                serult.setHaszszam(resultSet.getString("hazszam"));
                list.add(serult);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

}
