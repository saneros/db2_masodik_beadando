package data.domain;

import java.sql.Date;

public class Hivas {

    private int id;
    private Date idopont;
    private int diszpecser;
    private String bejelento;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getIdopont() {
        return idopont;
    }

    public void setIdopont(Date idopont) {
        this.idopont = idopont;
    }

    public int getDiszpecser() {
        return diszpecser;
    }

    public void setDiszpecser(int diszpecser) {
        this.diszpecser = diszpecser;
    }

    public String getBejelento() {
        return bejelento;
    }

    public void setBejelento(String bejelento) {
        this.bejelento = bejelento;
    }
}
