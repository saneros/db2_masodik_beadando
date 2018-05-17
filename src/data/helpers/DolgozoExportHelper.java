package data.helpers;

import data.domain.Dolgozo;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

public class DolgozoExportHelper {

    public void saveListToFile(List<Dolgozo> list, String path) {

        BufferedWriter writer = null;
        try {
            writer = new BufferedWriter(new FileWriter(path));
            String newLine = System.getProperty("line.separator");
            for (Dolgozo dolgozo : list) {
                String dolgozoCsv = dolgozo.getId() + ", " + dolgozo.getNev() + ", " + dolgozo.getBeosztas() + newLine;
                writer.write(dolgozoCsv);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}

