package gui;

import data.dao.DataChangeListener;
import data.dao.NaploDAO;
import data.dao.SerultDAO;
import data.domain.Naplo;
import data.domain.Serult;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class SerultTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 8;
    private final SerultDAO dao;
    List<Serult> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "TAJ";
            case 2:
                return "Név";
            case 3:
                return "Irányítószám";
            case 4:
                return "Város";
            case 5:
                return "Ország";
            case 6:
                return "Közterülelt";
            case 7:
                return "Házszám";
        }
        return super.getColumnName(column);
    }

    public SerultTableModel(){
        dao = new SerultDAO();
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
        Serult serult = list.get(rowIndex);
        switch (columnIndex) {
                case 0:
                    return serult.getId();
                case 1:
                    return serult.getTaj();
                case 2:
                    return serult.getNev();
                case 3:
                    return serult.getIranyitoszam();
                case 4:
                    return serult.getVaros();
                case 5:
                    return serult.getOrszag();
                case 6:
                    return serult.getKozterulet();
                case 7:
                    return serult.getHaszszam();
        }
        return null;
    }
    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
