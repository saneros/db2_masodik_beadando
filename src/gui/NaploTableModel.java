package gui;

import data.dao.DataChangeListener;
import data.dao.EsetDAO;
import data.dao.NaploDAO;
import data.domain.Eset;
import data.domain.Naplo;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class NaploTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 3;
    private final NaploDAO dao;
    List<Naplo> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "Esemény";
            case 2:
                return "Időpont";
        }
        return super.getColumnName(column);
    }

    public NaploTableModel(){
        dao = new NaploDAO();
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
        Naplo naplo = list.get(rowIndex);
        switch (columnIndex) {
                case 0:
                    return naplo.getId();
                case 1:
                    return naplo.getEsemeny();
                case 2:
                    return naplo.getIdopont();
        }
        return null;
    }
    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
