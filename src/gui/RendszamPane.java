package gui;

import data.dao.SchemaDAO;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class RendszamPane {
    private JTextField regiRendszamField;
    private JTextField ujRendszamField;
    private JButton okButton;
    private JButton megseButton;
    private JPanel container;

    public RendszamPane(JFrame jFrame, String rendszam) {
        if (rendszam != null) {
            regiRendszamField.setText(rendszam);
            ujRendszamField.grabFocus();
        }
        okButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (new SchemaDAO().rendszamAtiras(regiRendszamField.getText(), ujRendszamField.getText())) {
                    jFrame.dispose();

                }
            }
        });
        megseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                jFrame.dispose();
            }
        });
    }

    public Container getContent() {
        return container;
    }
}
