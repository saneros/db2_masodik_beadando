package gui;

import data.dao.DataChangeListener;
import data.dao.EsetDAO;
import data.domain.Eset;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class EsetTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 7;
    private final EsetDAO dao;
    List<Eset> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "Irányítószám";
            case 2:
                return "Város";
            case 3:
                return "Közterület";
            case 4:
                return "Házszám";
            case 5:
                return "Megnevezés";
            case 6:
                return "Hívás ID";
        }
        return super.getColumnName(column);
    }

    public EsetTableModel(){
        dao = new EsetDAO();
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
        Eset eset = list.get(rowIndex);
        switch (columnIndex) {
                case 0:
                    return eset.getId();
                case 1:
                    return eset.getIranyitoszam();
                case 2:
                    return eset.getVaros();
                case 3:
                    return eset.getKozterulet();
                case 4:
                    return eset.getHazszam();
                case 5:
                    return eset.getMegnevezes();
                case 6:
                    return eset.getHivas();
        }
        return null;
    }
    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
