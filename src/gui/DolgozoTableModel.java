package gui;

import data.dao.DataChangeListener;
import data.dao.DolgozoDAO;
import data.domain.Dolgozo;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class DolgozoTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 3;
    private final DolgozoDAO dao = new DolgozoDAO();
    List<Dolgozo> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "ID";
            case 1:
                return "Név";
            case 2:
                return "Beosztás";
        }
        return super.getColumnName(column);
    }

    public DolgozoTableModel(){
        onDataChange();
        dao.addDataChangeListener(this);
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
        Dolgozo dolgozo = list.get(rowIndex);
        switch (columnIndex) {
            case 0:
                return dolgozo.getId();
            case 1:
                return dolgozo.getNev();
            case 2:
                return dolgozo.getBeosztas();
        }
        return null;
    }

    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }
}
