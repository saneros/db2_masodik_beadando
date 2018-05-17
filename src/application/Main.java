package application;

import data.jdbc.JdbcConnector;
import gui.ApplicationPane;

import javax.swing.*;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) {
        JFrame jFrame = new JFrame("Adatbázis Rendszerek II - Második beadandó");
        jFrame.setContentPane(new ApplicationPane().getContent());
        jFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        jFrame.pack();
        jFrame.setVisible(true);
    }

}
