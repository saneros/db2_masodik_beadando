package gui;

import data.dao.DataChangeListener;
import data.dao.SerultDAO;
import data.dao.VonulasDAO;
import data.domain.Serult;
import data.domain.Vonulas;

import javax.swing.table.AbstractTableModel;
import java.util.List;

public class VonulasTableModel extends AbstractTableModel implements DataChangeListener {

    private final int COLUMN_COUNT = 4;
    private final VonulasDAO dao;
    List<Vonulas> list;

    @Override
    public String getColumnName(int column) {
        switch (column) {
            case 0:
                return "Eset";
            case 1:
                return "Esetkocsi";
            case 2:
                return "Dolgozó";
            case 3:
                return "Indulás";
        }
        return super.getColumnName(column);
    }

    public VonulasTableModel(){
        dao = new VonulasDAO();
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
        Vonulas vonulas = list.get(rowIndex);
        switch (columnIndex) {
                case 0:
                    return vonulas.getEset();
                case 1:
                    return vonulas.getEsetkocsi();
                case 2:
                    return vonulas.getDolgozo();
                case 3:
                    return vonulas.getIndulas();
        }
        return null;
    }
    @Override
    public void onDataChange() {
        list = dao.get();
        this.fireTableDataChanged();
    }

}
