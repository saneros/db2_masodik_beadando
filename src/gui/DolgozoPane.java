package gui;

import data.dao.DolgozoDAO;
import data.dao.SchemaDAO;
import data.domain.Dolgozo;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class DolgozoPane {
    private JPanel panel1;
    private JButton OKButton;
    private JButton megsemButton;
    private JTextField nevField;
    private JTextField beosztasField;
    private JLabel idLabel;
    private JLabel idField;
    private JLabel beosztasLabel;
    private JLabel nevLabel;
    private JLabel beosztasNullableLabel;
    private JLabel nevNullableLabel;
    private Container container;

    public DolgozoPane(final JFrame jFrame) {
        SchemaDAO dao = new SchemaDAO();
        nevNullableLabel.setText(dao.isColumnNullable("dolgozo", "nev") ? "" : "Kötelező");
        beosztasNullableLabel.setText(dao.isColumnNullable("dolgozo", "beosztas") ? "" : "Kötelező");
        megsemButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                jFrame.dispose();
            }
        });
        OKButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Dolgozo dolgozo = new Dolgozo();
                dolgozo.setNev(nevField.getText());
                dolgozo.setBeosztas(beosztasField.getText());
                DolgozoDAO dolgozoDAO = new DolgozoDAO();
                if (dolgozoDAO.insert(dolgozo)) {
                    jFrame.dispose();
                }
            }
        });
    }

    public Container getContent() {
        return panel1;
    }
}
