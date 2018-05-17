package gui;

import data.dao.DataChangeListener;
import data.dao.EsetkocsiDAO;
import data.domain.Esetkocsi;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class EsetkocsiTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 2;
    private final EsetkocsiDAO dao;
    List<Esetkocsi> list;

    public EsetkocsiTableModel() {
        dao = new EsetkocsiDAO();
        list = dao.get();
    }

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "Rendszám";
            case 1:
                return "Típus";
        }
        return super.getColumnName(column);
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
        Esetkocsi esetkocsi = list.get(rowIndex);
        switch (columnIndex) {
            case 0:
                return esetkocsi.getRendszam();
            case 1:
                return esetkocsi.getTipus();
        }
        return null;
    }

    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
