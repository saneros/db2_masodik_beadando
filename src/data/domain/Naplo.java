package data.domain;

import java.sql.Date;

public class Naplo {

    private int id;
    private String esemeny;
    private Date idopont;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEsemeny() {
        return esemeny;
    }

    public void setEsemeny(String esemeny) {
        this.esemeny = esemeny;
    }

    public Date getIdopont() {
        return idopont;
    }

    public void setIdopont(Date idopont) {
        this.idopont = idopont;
    }
}

