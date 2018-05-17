package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Naplo;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NaploDAO implements DataChangeAwareDAO {

    private static final String SELECT = "SELECT * FROM naplo";
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


    public List<Naplo> get() {
        List<Naplo> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Naplo naplo = new Naplo();
                naplo.setId(resultSet.getInt("id"));
                naplo.setEsemeny(resultSet.getString("esemeny"));
                naplo.setIdopont(resultSet.getDate("idopont"));
                list.add(naplo);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

}
