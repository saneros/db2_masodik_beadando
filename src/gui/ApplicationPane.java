package gui;

import data.helpers.DolgozoExportHelper;
import data.jdbc.JdbcConnectListener;
import data.jdbc.JdbcConnector;
import data.dao.DataChangeListener;
import data.dao.DolgozoDAO;
import data.dao.SchemaDAO;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ApplicationPane implements JdbcConnectListener, DataChangeListener {

    private JTabbedPane tabbedPanel;
    private JPanel mainPanel;
    private JTable dolgozoTable;
    private JTable esetTable;
    private JTable esetkocsiTable;
    private JTable naploTable;
    private JTable serultTable;
    private JTable hivasokTable;
    private JButton logoutButton;
    private JButton loginButton;
    private JLabel loginLabel;
    private JButton addDolgozoButton;
    private JButton reinitButton;
    private JButton dolgozoExportButton;
    private JTable vonulasTable;
    private JButton rendszamAtirasButton;
    private SchemaDAO schemaDAO;
    private DolgozoDAO dolgozoDAO;


    public ApplicationPane() {
        schemaDAO = new SchemaDAO();
        schemaDAO.addDataChangeListener(this);
        dolgozoDAO = new DolgozoDAO();
        dolgozoDAO.addDataChangeListener(this);

        dolgozoTable.setModel(new DolgozoTableModel());
        esetTable.setModel(new EsetTableModel());
        esetkocsiTable.setModel(new EsetkocsiTableModel());
        naploTable.setModel(new NaploTableModel());
        serultTable.setModel(new SerultTableModel());
        hivasokTable.setModel(new HivasTableModel());
        vonulasTable.setModel(new VonulasTableModel());

        JdbcConnector.getInstance().openConnection();

        JdbcConnector.getInstance().addJdbcConnectListerer(this);

        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JdbcConnector.getInstance().openConnection();
            }
        });
        onJdbcConnect(JdbcConnector.getInstance().isConnected(), JdbcConnector.getInstance().getJdbcUser());
        logoutButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JdbcConnector.getInstance().closeConnection();
            }
        });
        addDolgozoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame jFrame = new JFrame("Dolgozó");
                jFrame.setContentPane(new DolgozoPane(jFrame).getContent());
                jFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
                jFrame.pack();
                jFrame.setVisible(true);
            }
        });
        reinitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                schemaDAO.reinitData();
            }
        });
        dolgozoExportButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFileChooser chooser = new JFileChooser();
                int returnVal = chooser.showSaveDialog(null);
                if (returnVal == JFileChooser.APPROVE_OPTION) {
                    new DolgozoExportHelper().saveListToFile(dolgozoDAO.get(), chooser.getSelectedFile().getPath());
                }
            }
        });
        rendszamAtirasButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFrame jFrame = new JFrame("Rendszám átírás");
                jFrame.setContentPane(new RendszamPane(jFrame, (String) esetkocsiTable.getModel().getValueAt(esetkocsiTable.getSelectedRow(), 0)).getContent());
                jFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
                jFrame.pack();
                jFrame.setVisible(true);
            }
        });
    }

    public Container getContent() {
        return mainPanel;
    }

    @Override
    public void onJdbcConnect(boolean connected, String username) {
        logoutButton.setVisible(connected);
        loginButton.setVisible(!connected);
        loginLabel.setText(connected ? "Connected as " + username : "Disconnected");
        reinitModels();
    }

    @Override
    public void onDataChange() {
        reinitModels();
    }

    private void reinitModels() {
        ((DataChangeListener) dolgozoTable.getModel()).onDataChange();
        ((DataChangeListener) esetTable.getModel()).onDataChange();
        ((DataChangeListener) esetkocsiTable.getModel()).onDataChange();
        ((DataChangeListener) naploTable.getModel()).onDataChange();
        ((DataChangeListener) serultTable.getModel()).onDataChange();
        ((DataChangeListener) hivasokTable.getModel()).onDataChange();
        ((DataChangeListener) vonulasTable.getModel()).onDataChange();
    }
}
