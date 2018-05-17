package data.domain;

import java.sql.Date;

public class Vonulas {

    private int eset;
    private String esetkocsi;
    private int dolgozo;
    private Date indulas;

    public int getEset() {
        return eset;
    }

    public void setEset(int eset) {
        this.eset = eset;
    }

    public String getEsetkocsi() {
        return esetkocsi;
    }

    public void setEsetkocsi(String esetkocsi) {
        this.esetkocsi = esetkocsi;
    }

    public int getDolgozo() {
        return dolgozo;
    }

    public void setDolgozo(int dolgozo) {
        this.dolgozo = dolgozo;
    }

    public Date getIndulas() {
        return indulas;
    }

    public void setIndulas(Date indulas) {
        this.indulas = indulas;
    }

}

