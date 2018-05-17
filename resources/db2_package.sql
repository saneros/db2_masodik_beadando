CREATE OR REPLACE PACKAGE db2_elso AS
  TYPE CHARRAY IS VARRAY(100) OF CHAR(50);
  TYPE INTARRAY IS VARRAY(100) OF INT;
  TYPE HIVASOK IS TABLE OF hivas%ROWTYPE;
  FUNCTION veletlenelem (tomb CHARRAY) RETURN CHAR;
  FUNCTION veletlenelem (tomb INTARRAY) RETURN INT;
  FUNCTION nevgenerator RETURN CHAR;
  FUNCTION hivasok_szama (nap DATE) RETURN INT;
  FUNCTION hivasok_szemely_szerint (bejelento CHAR) RETURN HIVASOK;
  FUNCTION hivasok_idoszak_szerint (kezdo DATE, veg DATE) RETURN HIVASOK;
  FUNCTION hivasok_beteg_szerint (beteg CHAR) RETURN HIVASOK;
  PROCEDURE beolvas_esetkocsi (filenev CHAR);
  PROCEDURE feltolt;
  PROCEDURE uj_hivas(diszpecser INT, bejelento CHAR);
END db2_elso;

/

CREATE OR REPLACE PACKAGE BODY db2_elso AS

  FUNCTION veletlenelem (tomb IN CHARRAY) RETURN CHAR IS
    BEGIN
      RETURN TRIM(TRAILING FROM tomb(ROUND(SYS.DBMS_RANDOM.VALUE(1, tomb.count()))));
    END;

  FUNCTION veletlenelem (tomb IN INTARRAY) RETURN INT IS
    BEGIN
      RETURN tomb(ROUND(SYS.DBMS_RANDOM.VALUE(1, tomb.count())));
    END;

  FUNCTION nevgenerator RETURN CHAR IS
    vezeteknevek CHARRAY := CHARRAY('Kovács', 'Szabó', 'Nagy', 'Tóth', 'Kis', 'Horváth', 'Szûcs', 'Varga', 'Molnár', 'Juhász');
    keresztnevek CHARRAY := CHARRAY('Zoltán', 'László', 'Gábor', 'Attila', 'Péter', 'Andrea', 'Krisztina', 'Katalin', 'Mónika', 'Szilvia');
    nev CHAR(50);
    BEGIN
      nev := veletlenelem(vezeteknevek) || ' ' || veletlenelem(keresztnevek);
      RETURN TRIM(TRAILING FROM nev);
    END nevgenerator;
  
  FUNCTION hivasok_szama (nap DATE) RETURN INT IS
    hivasok INT;
    BEGIN
      SELECT COUNT(*) INTO hivasok FROM hivas WHERE idopont BETWEEN TRUNC(nap) AND TRUNC(nap) + 1 ORDER BY idopont;
      RETURN hivasok;
    END;
    
  FUNCTION hivasok_szemely_szerint (bejelento CHAR) RETURN HIVASOK IS
    TYPE CUR_TYPE IS REF CURSOR;
    cur CUR_TYPE;
    h HIVASOK;
    hiv HIVAS%ROWTYPE;
    i INT;
    BEGIN
      OPEN cur FOR 'SELECT * FROM hivas WHERE hivas.bejelento = ' || bejelento || ';';
      i := 1;
      LOOP
        FETCH cur INTO hiv;
        h(i) := hiv;
        i := i + 1;
        EXIT WHEN cur%NOTFOUND;
      END LOOP;
      RETURN h;
    END;
  
  FUNCTION hivasok_idoszak_szerint (kezdo DATE, veg DATE) RETURN HIVASOK IS
    TYPE CUR_TYPE IS REF CURSOR;
    cur CUR_TYPE;
    h HIVASOK;
    hiv HIVAS%ROWTYPE;
    i INT;
    BEGIN
      OPEN cur FOR 'SELECT * FROM hivas WHERE hivas.idopont BETWEEN TO_DATE(' || TO_CHAR(kezdo) || ') AND TO_DATE(' || TO_CHAR(veg) || ');';
      i := 1;
      LOOP
        FETCH cur INTO hiv;
        h(i) := hiv;
        i := i + 1;
        EXIT WHEN cur%NOTFOUND;
      END LOOP;
      RETURN h;
    END;

  FUNCTION hivasok_beteg_szerint (beteg CHAR) RETURN HIVASOK IS 
    TYPE CUR_TYPE IS REF CURSOR;
    cur CUR_TYPE;
    h HIVASOK;
    hiv HIVAS%ROWTYPE;
    i INT;
    BEGIN
      OPEN cur FOR 'SELECT * FROM hivas WHERE id IN (SELECT hivasid FROM (SELECT hivasid, esetid, serult FROM ' ||
                    '(SELECT hivas.ID as hivasid, eset.id as esetid FROM hivas INNER JOIN ESET ON hivas.ID = ESET.hivas) esethivas ' ||
                      'INNER JOIN eset_serult ON esethivas.esetid = eset_serult.eset) serultek ' ||
                        'INNER JOIN serult ON serult.ID = serultek.serult WHERE nev = ''' || beteg || ''')';

      i := 1;
      LOOP
        FETCH cur INTO hiv;
        h(i) := hiv;
        i := i + 1;
        EXIT WHEN cur%NOTFOUND;
      END LOOP;
      RETURN h;
    END;

  
  PROCEDURE beolvas_esetkocsi (filenev CHAR) AS
    f UTL_FILE.FILE_TYPE;
    csvline CHAR(1000);
    rsz CHAR(10);
    tipus CHAR(50);
    BEGIN
      f := UTL_FILE.FOPEN('DB2', filenev, 'r');
        IF UTL_FILE.IS_OPEN(f) THEN
          LOOP
            BEGIN
              UTL_FILE.GET_LINE(f, csvline, 1000);
              IF csvline IS NULL THEN
                EXIT;
              END IF;
              rsz := REGEXP_SUBSTR(TRIM(csvline), '[^,]+', 1, 1);
              tipus := REGEXP_SUBSTR(TRIM(csvline), '[^,]+', 1, 2);
              INSERT INTO esetkocsi (RENDSZAM, ESETKOCSI.TIPUS) VALUES (rsz, tipus);
              COMMIT;
            EXCEPTION
              WHEN NO_DATA_FOUND THEN EXIT;
            END;
          END LOOP;
        END IF;
      UTL_FILE.FCLOSE(f);
    END;

  PROCEDURE feltolt AS
    autotipusok CHARRAY := CHARRAY('Mercedes Sprinter', 'Volkswagen Transporter', 'Fiat Ducato');
    kozteruletek CHARRAY := CHARRAY('Széchenyi István', 'Kossuth Lajos', 'Petõfi Sándor', 'Ady Endre', 'Szabadság u', 'Dózsa György', 'Katona József', 'Madách Imre', 'Szilágyi Dezsõ', 'Pesti u', 'Bajcsy', 'József Attila', 'Barátság u', 'Borsodi u', 'Damjanich u', 'Andrássy u', 'Ifjúság u', 'Szentgyörgyi u', 'Semmelweis u', 'Szemere Bertalan');
    telepules CHARRAY := CHARRAY('Miskolc', 'Budapest', 'Nyíregyháza', 'Debrecen', 'Szekszárd', 'Eger', 'Székesfehérvár', 'Vác', 'Hatvan', 'Szolnok', 'Szeged', 'Békéscsaba', 'Sajószentpéter', 'Kazincbarcika', 'Edelény', 'Füzesabony', 'Mezõkövesd');
    esetek CHARRAY := CHARRAY('Rosszullét', 'Autóbaleset', 'Gázolás', 'Kerékpárbaleset');
    rendszamok CHARRAY := CHARRAY();
    diszpecseridk INTARRAY := INTARRAY();
    mentosidk INTARRAY := INTARRAY();
    serultidk INTARRAY := INTARRAY();
    datum DATE;
    serultid INT;
    dolgozoid INT;
    mentosid INT;
    hivasid INT;
    db INT;
    beoszt CHAR(50);
    rsz CHAR(6);
    tipus CHAR(50);
    varos CHAR(50);
    kozterulet CHAR(50);
    megnevezes CHAR(50);
    dolgozok_szama INT := 20;
    esetkocsik_szama INT := 5;
    serultek_szama INT := 50;
    hivasok_szama INT := 100;
    esetid INT;
    BEGIN
    
      DELETE FROM eset_serult;
      DELETE FROM vonulas;
      DELETE FROM eset;
      DELETE FROM hivas;

      DELETE FROM dolgozo;
      DELETE FROM esetkocsi;
      DELETE FROM serult;

      DELETE FROM naplo;
      
      FOR i IN 1..dolgozok_szama LOOP
        INSERT INTO DOLGOZO (DOLGOZO.NEV) VALUES (DB2_ELSO.NEVGENERATOR()) RETURNING DOLGOZO.id INTO dolgozoid;
        IF MOD(i, 5) = 0 THEN
          beoszt := 'diszpécser';
          diszpecseridk.extend();
          diszpecseridk(diszpecseridk.count) := dolgozoid;
        ELSE
          beoszt := 'mentõs';
          mentosidk.extend();
          mentosidk(mentosidk.count) := dolgozoid;
        END IF;
        UPDATE DOLGOZO SET DOLGOZO.BEOSZTAS = (TRIM(TRAILING FROM beoszt)) WHERE DOLGOZO.id = dolgozoid;
      END LOOP;
      
      FOR i IN 1..esetkocsik_szama LOOP
        tipus := veletlenelem(autotipusok);
        rsz := CHR(TRUNC(SYS.DBMS_RANDOM.VALUE(65,91))) || CHR(TRUNC(SYS.DBMS_RANDOM.VALUE(65,91))) || CHR(TRUNC(SYS.DBMS_RANDOM.VALUE(65,91))) || TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(100,999)));
        INSERT INTO ESETKOCSI (RENDSZAM, ESETKOCSI.TIPUS) VALUES (rsz, tipus);
        rendszamok.extend();
        rendszamok(rendszamok.count) := rsz;
      END LOOP;
      
      FOR i IN 1..serultek_szama LOOP
        varos := veletlenelem(telepules);
        kozterulet := veletlenelem(kozteruletek);
        INSERT INTO serult (taj, nev, iranyitoszam, serult.varos, orszag, serult.kozterulet, hazszam) VALUES (TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(100000000,999999999))), nevgenerator(), TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(1000,9999))), varos, 'Magyarország', kozterulet, TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(1,120)))) RETURNING id INTO serultid;
        serultidk.extend();
        serultidk(serultidk.count) := serultid;
      END LOOP;
      
      FOR i IN 1..hivasok_szama LOOP

        dolgozoid := veletlenelem(diszpecseridk);
        datum := SYSTIMESTAMP - NUMTODSINTERVAL(DBMS_RANDOM.VALUE(0, 60 * 60 * 24 * 30),'SECOND');
        INSERT INTO hivas (idopont, diszpecser, bejelento) VALUES (datum, dolgozoid, nevgenerator()) RETURNING id INTO hivasid;

        varos := veletlenelem(telepules);
        kozterulet := veletlenelem(kozteruletek);
        megnevezes := veletlenelem(esetek);
        INSERT INTO eset (iranyitoszam, eset.varos, eset.kozterulet, hazszam, eset.megnevezes, hivas) VALUES (TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(1000,9999))), varos, kozterulet, TO_CHAR(ROUND(SYS.DBMS_RANDOM.VALUE(1,120))), megnevezes, hivasid) RETURNING id INTO esetid;
        
        serultid := veletlenelem(serultidk);
        INSERT INTO eset_serult (eset, serult) VALUES (esetid, serultid);
        
        rsz := veletlenelem(rendszamok);
        datum := datum + NUMTODSINTERVAL(DBMS_RANDOM.VALUE(30, 60 * 30),'SECOND');
        FOR j IN 1..3 LOOP
         LOOP
            dolgozoid := veletlenelem(mentosidk);
            SELECT COUNT(*) INTO db FROM vonulas WHERE ESET = esetid AND DOLGOZO = dolgozoid;
            EXIT WHEN db = 0;
          END LOOP;
          INSERT INTO vonulas (eset, esetkocsi, dolgozo, indulas) VALUES (esetid, rsz, dolgozoid, datum);
        END LOOP;
      END LOOP;
      
    END;

    PROCEDURE uj_hivas (diszpecser INT, bejelento CHAR) AS
    BEGIN
      INSERT INTO hivas (idopont, hivas.diszpecser, hivas.bejelento) VALUES (SYSDATE, diszpecser, bejelento);
    END;

END db2_elso;