package data.dao;

import data.jdbc.JdbcConnector;
import data.domain.Esetkocsi;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EsetkocsiDAO implements DataChangeAwareDAO {

    static final List<DataChangeListener> listeners = new ArrayList<>();
    private static final String SELECT = "SELECT * FROM esetkocsi";
    private static final String SELECT_BY_ID = "SELECT * FROM esetkocsi WHERE rendszam = ?";

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


    public List<Esetkocsi> get() {
        List<Esetkocsi> list = new ArrayList<>();
        try {
            Statement statement = JdbcConnector.getInstance().getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                Esetkocsi esetkocsi = new Esetkocsi();
                esetkocsi.setRendszam(resultSet.getString("rendszam"));
                esetkocsi.setTipus(resultSet.getString("tipus"));
                list.add(esetkocsi);
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return list;
    }

    public Esetkocsi getById(String rendszam) {
        List<Esetkocsi> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = JdbcConnector.getInstance().getConnection().prepareStatement(SELECT_BY_ID);
            preparedStatement.setString(1, rendszam);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Esetkocsi esetkocsi = new Esetkocsi();
                esetkocsi.setRendszam(resultSet.getString("rendszam"));
                esetkocsi.setTipus(resultSet.getString("tipus"));
                return esetkocsi;
            }
        } catch (Exception e) {
            // e.printStackTrace();
        }
        return null;
    }

}
