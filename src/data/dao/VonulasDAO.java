package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Vonulas;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class VonulasDAO implements DataChangeAwareDAO {

    private static final String SELECT = "SELECT * FROM vonulas";

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

    public List<Vonulas> get() {
        List<Vonulas> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Vonulas vonulas = new Vonulas();
                vonulas.setEset(resultSet.getInt("eset"));
                vonulas.setEsetkocsi(resultSet.getString("esetkocsi"));
                vonulas.setDolgozo(resultSet.getInt("dolgozo"));
                vonulas.setIndulas(resultSet.getDate("indulas"));
                list.add(vonulas);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

}
