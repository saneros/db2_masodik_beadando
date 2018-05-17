package gui;

import data.dao.DataChangeListener;
import data.dao.HivasDAO;
import data.dao.SerultDAO;
import data.domain.Hivas;
import data.domain.Serult;

import javax.swing.table.AbstractTableModel;
import javax.xml.crypto.Data;
import java.util.List;

public class HivasTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 4;
    private final HivasDAO dao;
    List<Hivas> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "Időpont";
            case 2:
                return "Diszpécser";
            case 3:
                return "Bejelentő";
        }
        return super.getColumnName(column);
    }

    public HivasTableModel(){
        dao = new HivasDAO();
        list = dao.get();
    }

    @Override
    public int getRowCount() {
        return list.size();
    }

    @Override
    public int getColumnCount() {
        return COLUMN_COUNT;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Hivas hivas = list.get(rowIndex);
        switch (columnIndex) {
                case 0:
                    return hivas.getId();
                case 1:
                    return hivas.getIdopont();
                case 2:
                    return hivas.getDiszpecser();
                case 3:
                    return hivas.getBejelento();
        }
        return null;
    }

    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
