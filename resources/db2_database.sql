--------------------------------------------------------
--  File created - csütörtök-május-17-2018   
--------------------------------------------------------
DROP TABLE "DB2"."ESET" cascade constraints;
DROP TABLE "DB2"."DOLGOZO" cascade constraints;
DROP TABLE "DB2"."ESET_SERULT" cascade constraints;
DROP TABLE "DB2"."SERULT" cascade constraints;
DROP TABLE "DB2"."VONULAS" cascade constraints;
DROP TABLE "DB2"."NAPLO" cascade constraints;
DROP TABLE "DB2"."HIVAS" cascade constraints;
DROP TABLE "DB2"."ESETKOCSI" cascade constraints;
--------------------------------------------------------
--  DDL for Table ESET
--------------------------------------------------------

  CREATE TABLE "DB2"."ESET" 
   (	"ID" NUMBER(*,0), 
	"IRANYITOSZAM" VARCHAR2(4 BYTE), 
	"VAROS" VARCHAR2(50 BYTE), 
	"KOZTERULET" VARCHAR2(50 BYTE), 
	"HAZSZAM" VARCHAR2(10 BYTE), 
	"MEGNEVEZES" VARCHAR2(100 BYTE), 
	"HIVAS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table DOLGOZO
--------------------------------------------------------

  CREATE TABLE "DB2"."DOLGOZO" 
   (	"ID" NUMBER(*,0), 
	"NEV" VARCHAR2(50 BYTE), 
	"BEOSZTAS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table ESET_SERULT
--------------------------------------------------------

  CREATE TABLE "DB2"."ESET_SERULT" 
   (	"ESET" NUMBER(*,0), 
	"SERULT" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table SERULT
--------------------------------------------------------

  CREATE TABLE "DB2"."SERULT" 
   (	"ID" NUMBER(*,0), 
	"TAJ" VARCHAR2(9 BYTE), 
	"NEV" VARCHAR2(50 BYTE), 
	"IRANYITOSZAM" VARCHAR2(4 BYTE), 
	"VAROS" VARCHAR2(50 BYTE), 
	"ORSZAG" VARCHAR2(50 BYTE), 
	"KOZTERULET" VARCHAR2(50 BYTE), 
	"HAZSZAM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table VONULAS
--------------------------------------------------------

  CREATE TABLE "DB2"."VONULAS" 
   (	"ESET" NUMBER(*,0), 
	"ESETKOCSI" VARCHAR2(10 BYTE), 
	"DOLGOZO" NUMBER(*,0), 
	"INDULAS" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table NAPLO
--------------------------------------------------------

  CREATE TABLE "DB2"."NAPLO" 
   (	"ID" NUMBER(*,0), 
	"ESEMENY" VARCHAR2(100 BYTE), 
	"IDOPONT" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table HIVAS
--------------------------------------------------------

  CREATE TABLE "DB2"."HIVAS" 
   (	"ID" NUMBER(*,0), 
	"IDOPONT" DATE DEFAULT SYSDATE, 
	"DISZPECSER" NUMBER(*,0), 
	"BEJELENTO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Table ESETKOCSI
--------------------------------------------------------

  CREATE TABLE "DB2"."ESETKOCSI" 
   (	"RENDSZAM" VARCHAR2(10 BYTE), 
	"TIPUS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Sequence DB2_ID_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "DB2"."DB2_ID_SEQUENCE"  MINVALUE 1 MAXVALUE 1000000 INCREMENT BY 1 START WITH 29739 CACHE 20 NOORDER  NOCYCLE ;
REM INSERTING into DB2.ESET
SET DEFINE OFF;
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29437','2889','Nyíregyháza                                     ','Szilágyi Dezső                                  ','111','Gázolás                                         ','29435');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29440','4939','Edelény                                          ','Szentgyörgyi u                                   ','39','Rosszullét                                       ','29438');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29443','2378','Edelény                                          ','Ifjúság u                                       ','109','Rosszullét                                       ','29441');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29446','5576','Szekszárd                                        ','Pesti u                                           ','60','Autóbaleset                                      ','29444');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29449','2321','Szekszárd                                        ','Szilágyi Dezső                                  ','3','Rosszullét                                       ','29447');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29452','1955','Sajószentpéter                                  ','Pesti u                                           ','104','Rosszullét                                       ','29450');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29455','9876','Budapest                                          ','József Attila                                    ','67','Autóbaleset                                      ','29453');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29458','9068','Békéscsaba                                      ','Szabadság u                                      ','45','Rosszullét                                       ','29456');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29461','2844','Kazincbarcika                                     ','Semmelweis u                                      ','98','Autóbaleset                                      ','29459');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29464','5368','Füzesabony                                       ','Madách Imre                                      ','68','Autóbaleset                                      ','29462');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29467','8598','Sajószentpéter                                  ','Szentgyörgyi u                                   ','83','Gázolás                                         ','29465');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29470','3491','Nyíregyháza                                     ','Bajcsy                                            ','20','Kerékpárbaleset                                 ','29468');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29473','2795','Edelény                                          ','Széchenyi István                                ','9','Kerékpárbaleset                                 ','29471');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29476','4841','Sajószentpéter                                  ','Andrássy u                                       ','56','Rosszullét                                       ','29474');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29479','3209','Mezőkövesd                                      ','Ifjúság u                                       ','100','Rosszullét                                       ','29477');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29482','7365','Székesfehérvár                                 ','Szemere Bertalan                                  ','74','Gázolás                                         ','29480');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29485','8969','Eger                                              ','Petőfi Sándor                                   ','50','Kerékpárbaleset                                 ','29483');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29488','5680','Békéscsaba                                      ','Ifjúság u                                       ','36','Autóbaleset                                      ','29486');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29491','6582','Hatvan                                            ','Pesti u                                           ','65','Gázolás                                         ','29489');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29494','7364','Székesfehérvár                                 ','Ady Endre                                         ','53','Gázolás                                         ','29492');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29497','2385','Nyíregyháza                                     ','Széchenyi István                                ','18','Gázolás                                         ','29495');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29500','9971','Füzesabony                                       ','Semmelweis u                                      ','55','Autóbaleset                                      ','29498');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29503','7064','Budapest                                          ','Kossuth Lajos                                     ','23','Kerékpárbaleset                                 ','29501');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29506','3706','Kazincbarcika                                     ','Dózsa György                                    ','47','Gázolás                                         ','29504');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29509','9143','Budapest                                          ','Semmelweis u                                      ','9','Kerékpárbaleset                                 ','29507');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29512','8343','Hatvan                                            ','Dózsa György                                    ','30','Gázolás                                         ','29510');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29515','2740','Sajószentpéter                                  ','Barátság u                                      ','34','Autóbaleset                                      ','29513');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29518','5878','Füzesabony                                       ','József Attila                                    ','43','Autóbaleset                                      ','29516');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29521','9780','Hatvan                                            ','Ifjúság u                                       ','54','Kerékpárbaleset                                 ','29519');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29524','4983','Sajószentpéter                                  ','Pesti u                                           ','64','Gázolás                                         ','29522');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29527','3566','Vác                                              ','Szilágyi Dezső                                  ','41','Rosszullét                                       ','29525');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29530','2273','Debrecen                                          ','Barátság u                                      ','69','Autóbaleset                                      ','29528');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29533','5945','Békéscsaba                                      ','Katona József                                    ','23','Rosszullét                                       ','29531');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29536','4778','Szekszárd                                        ','Szentgyörgyi u                                   ','72','Gázolás                                         ','29534');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29539','1771','Kazincbarcika                                     ','Széchenyi István                                ','92','Gázolás                                         ','29537');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29542','5720','Szeged                                            ','Barátság u                                      ','10','Kerékpárbaleset                                 ','29540');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29545','4160','Szeged                                            ','Katona József                                    ','98','Autóbaleset                                      ','29543');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29548','3332','Szeged                                            ','Széchenyi István                                ','105','Autóbaleset                                      ','29546');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29551','6338','Budapest                                          ','Dózsa György                                    ','46','Rosszullét                                       ','29549');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29554','2999','Miskolc                                           ','Bajcsy                                            ','90','Autóbaleset                                      ','29552');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29557','7411','Békéscsaba                                      ','József Attila                                    ','15','Autóbaleset                                      ','29555');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29560','8870','Székesfehérvár                                 ','Madách Imre                                      ','9','Kerékpárbaleset                                 ','29558');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29563','7476','Vác                                              ','Dózsa György                                    ','30','Gázolás                                         ','29561');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29566','1242','Székesfehérvár                                 ','Dózsa György                                    ','16','Gázolás                                         ','29564');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29569','5393','Kazincbarcika                                     ','Széchenyi István                                ','44','Gázolás                                         ','29567');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29572','3440','Szekszárd                                        ','Szentgyörgyi u                                   ','17','Kerékpárbaleset                                 ','29570');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29575','6297','Mezőkövesd                                      ','Kossuth Lajos                                     ','19','Rosszullét                                       ','29573');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29578','9413','Vác                                              ','Bajcsy                                            ','67','Gázolás                                         ','29576');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29581','4126','Szeged                                            ','Semmelweis u                                      ','50','Autóbaleset                                      ','29579');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29584','2419','Szekszárd                                        ','Szentgyörgyi u                                   ','28','Gázolás                                         ','29582');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29587','2057','Budapest                                          ','Pesti u                                           ','105','Gázolás                                         ','29585');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29590','8409','Székesfehérvár                                 ','Barátság u                                      ','1','Gázolás                                         ','29588');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29593','6168','Vác                                              ','Petőfi Sándor                                   ','91','Gázolás                                         ','29591');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29596','7848','Eger                                              ','Ady Endre                                         ','27','Gázolás                                         ','29594');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29599','5885','Nyíregyháza                                     ','Ifjúság u                                       ','27','Autóbaleset                                      ','29597');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29602','7532','Szeged                                            ','Dózsa György                                    ','38','Autóbaleset                                      ','29600');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29605','1485','Szolnok                                           ','Ifjúság u                                       ','110','Autóbaleset                                      ','29603');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29608','9158','Sajószentpéter                                  ','Kossuth Lajos                                     ','9','Kerékpárbaleset                                 ','29606');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29611','2383','Budapest                                          ','Pesti u                                           ','97','Autóbaleset                                      ','29609');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29614','8468','Debrecen                                          ','Katona József                                    ','107','Gázolás                                         ','29612');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29617','6697','Debrecen                                          ','Ifjúság u                                       ','18','Autóbaleset                                      ','29615');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29620','1384','Békéscsaba                                      ','Szentgyörgyi u                                   ','78','Rosszullét                                       ','29618');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29623','8081','Székesfehérvár                                 ','Damjanich u                                       ','108','Autóbaleset                                      ','29621');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29626','5587','Szekszárd                                        ','Andrássy u                                       ','7','Kerékpárbaleset                                 ','29624');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29629','9082','Vác                                              ','Dózsa György                                    ','46','Autóbaleset                                      ','29627');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29632','1395','Kazincbarcika                                     ','Bajcsy                                            ','110','Gázolás                                         ','29630');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29635','2786','Mezőkövesd                                      ','Semmelweis u                                      ','98','Kerékpárbaleset                                 ','29633');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29638','1258','Füzesabony                                       ','Borsodi u                                         ','21','Autóbaleset                                      ','29636');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29641','6984','Vác                                              ','Katona József                                    ','35','Gázolás                                         ','29639');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29644','2648','Mezőkövesd                                      ','Andrássy u                                       ','112','Autóbaleset                                      ','29642');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29647','3459','Edelény                                          ','Szentgyörgyi u                                   ','20','Rosszullét                                       ','29645');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29650','2060','Szeged                                            ','Bajcsy                                            ','78','Autóbaleset                                      ','29648');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29653','1663','Miskolc                                           ','Katona József                                    ','37','Gázolás                                         ','29651');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29656','2670','Eger                                              ','Barátság u                                      ','33','Gázolás                                         ','29654');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29659','8150','Nyíregyháza                                     ','Ady Endre                                         ','93','Gázolás                                         ','29657');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29662','5332','Sajószentpéter                                  ','Kossuth Lajos                                     ','112','Autóbaleset                                      ','29660');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29665','3127','Hatvan                                            ','Damjanich u                                       ','108','Kerékpárbaleset                                 ','29663');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29668','5437','Mezőkövesd                                      ','Kossuth Lajos                                     ','81','Gázolás                                         ','29666');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29671','1049','Füzesabony                                       ','Ifjúság u                                       ','62','Rosszullét                                       ','29669');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29674','8403','Füzesabony                                       ','Andrássy u                                       ','87','Gázolás                                         ','29672');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29677','3623','Székesfehérvár                                 ','Dózsa György                                    ','42','Gázolás                                         ','29675');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29680','1434','Szeged                                            ','Pesti u                                           ','10','Gázolás                                         ','29678');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29683','4528','Békéscsaba                                      ','Szilágyi Dezső                                  ','51','Rosszullét                                       ','29681');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29686','8234','Szekszárd                                        ','Semmelweis u                                      ','95','Autóbaleset                                      ','29684');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29689','2035','Kazincbarcika                                     ','Szemere Bertalan                                  ','58','Gázolás                                         ','29687');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29692','2466','Nyíregyháza                                     ','Szemere Bertalan                                  ','116','Gázolás                                         ','29690');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29695','8615','Vác                                              ','Katona József                                    ','19','Gázolás                                         ','29693');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29698','8233','Budapest                                          ','Bajcsy                                            ','48','Kerékpárbaleset                                 ','29696');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29701','8800','Füzesabony                                       ','Katona József                                    ','67','Kerékpárbaleset                                 ','29699');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29704','8392','Eger                                              ','Pesti u                                           ','37','Autóbaleset                                      ','29702');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29707','3189','Szekszárd                                        ','Szilágyi Dezső                                  ','65','Autóbaleset                                      ','29705');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29710','1509','Debrecen                                          ','Szentgyörgyi u                                   ','78','Autóbaleset                                      ','29708');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29713','8887','Szekszárd                                        ','Szentgyörgyi u                                   ','89','Kerékpárbaleset                                 ','29711');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29716','7739','Békéscsaba                                      ','Szabadság u                                      ','19','Autóbaleset                                      ','29714');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29719','5373','Sajószentpéter                                  ','Pesti u                                           ','41','Gázolás                                         ','29717');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29722','9968','Eger                                              ','Borsodi u                                         ','66','Kerékpárbaleset                                 ','29720');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29725','1835','Szolnok                                           ','Bajcsy                                            ','29','Gázolás                                         ','29723');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29728','5393','Szekszárd                                        ','Andrássy u                                       ','44','Rosszullét                                       ','29726');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29731','8398','Miskolc                                           ','Andrássy u                                       ','91','Kerékpárbaleset                                 ','29729');
Insert into DB2.ESET (ID,IRANYITOSZAM,VAROS,KOZTERULET,HAZSZAM,MEGNEVEZES,HIVAS) values ('29734','6415','Nyíregyháza                                     ','Kossuth Lajos                                     ','104','Autóbaleset                                      ','29732');
REM INSERTING into DB2.DOLGOZO
SET DEFINE OFF;
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29365','Molnár Andrea','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29366','Szabó Attila','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29367','Szűcs Andrea','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29368','Kis Péter','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29369','Szabó Andrea','diszpécser');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29370','Tóth Attila','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29371','Molnár Attila','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29372','Tóth Katalin','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29373','Molnár Gábor','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29374','Tóth Péter','diszpécser');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29375','Nagy László','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29376','Kis Mónika','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29377','Szűcs László','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29378','Nagy Szilvia','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29379','Nagy Péter','diszpécser');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29380','Juhász Attila','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29381','Szabó Mónika','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29382','Varga Gábor','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29383','Tóth Szilvia','mentős');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29384','Tóth Péter','diszpécser');
Insert into DB2.DOLGOZO (ID,NEV,BEOSZTAS) values ('29735','David Gilmour','zenész');
REM INSERTING into DB2.ESET_SERULT
SET DEFINE OFF;
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29437','29427');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29440','29404');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29443','29431');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29446','29408');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29449','29427');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29452','29431');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29455','29434');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29458','29424');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29461','29427');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29464','29420');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29467','29412');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29470','29418');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29473','29417');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29476','29405');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29479','29433');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29482','29406');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29485','29396');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29488','29413');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29491','29406');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29494','29388');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29497','29424');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29500','29389');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29503','29422');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29506','29400');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29509','29385');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29512','29424');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29515','29411');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29518','29417');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29521','29414');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29524','29430');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29527','29432');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29530','29407');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29533','29420');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29536','29396');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29539','29414');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29542','29429');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29545','29406');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29548','29392');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29551','29421');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29554','29430');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29557','29418');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29560','29385');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29563','29415');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29566','29419');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29569','29403');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29572','29416');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29575','29411');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29578','29424');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29581','29393');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29584','29397');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29587','29415');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29590','29400');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29593','29415');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29596','29425');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29599','29426');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29602','29396');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29605','29389');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29608','29429');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29611','29419');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29614','29425');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29617','29427');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29620','29387');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29623','29422');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29626','29386');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29629','29407');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29632','29398');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29635','29413');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29638','29393');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29641','29402');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29644','29432');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29647','29388');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29650','29426');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29653','29428');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29656','29411');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29659','29417');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29662','29390');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29665','29406');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29668','29408');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29671','29412');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29674','29392');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29677','29405');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29680','29423');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29683','29403');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29686','29392');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29689','29412');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29692','29402');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29695','29401');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29698','29404');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29701','29424');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29704','29395');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29707','29402');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29710','29395');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29713','29410');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29716','29425');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29719','29421');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29722','29433');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29725','29415');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29728','29415');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29731','29393');
Insert into DB2.ESET_SERULT (ESET,SERULT) values ('29734','29388');
REM INSERTING into DB2.SERULT
SET DEFINE OFF;
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29385','238889296','Nagy Krisztina','3465','Nyíregyháza                                     ','Magyarország','Bajcsy                                            ','20');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29386','241109387','Varga Péter','8329','Szeged                                            ','Magyarország','Madách Imre                                      ','102');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29387','424093382','Kis Attila','5117','Békéscsaba                                      ','Magyarország','Katona József                                    ','32');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29388','234495884','Szabó László','4211','Edelény                                          ','Magyarország','Damjanich u                                       ','46');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29389','787449196','Horváth Andrea','8702','Debrecen                                          ','Magyarország','Borsodi u                                         ','106');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29390','233712889','Szűcs Andrea','4137','Budapest                                          ','Magyarország','Borsodi u                                         ','35');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29391','233714248','Nagy Zoltán','6321','Szolnok                                           ','Magyarország','Andrássy u                                       ','91');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29392','701030280','Szűcs Szilvia','7062','Debrecen                                          ','Magyarország','Bajcsy                                            ','26');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29393','669841757','Molnár Mónika','9325','Szeged                                            ','Magyarország','Bajcsy                                            ','16');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29394','715472841','Horváth Andrea','9942','Mezőkövesd                                      ','Magyarország','Széchenyi István                                ','42');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29395','761879383','Molnár Gábor','4684','Füzesabony                                       ','Magyarország','Borsodi u                                         ','12');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29396','861614385','Tóth Mónika','1412','Kazincbarcika                                     ','Magyarország','Damjanich u                                       ','96');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29397','745862837','Nagy Attila','5672','Szeged                                            ','Magyarország','Szilágyi Dezső                                  ','115');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29398','790087771','Horváth Attila','9760','Szeged                                            ','Magyarország','Kossuth Lajos                                     ','17');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29399','622863396','Molnár Attila','5394','Eger                                              ','Magyarország','Ady Endre                                         ','4');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29400','751764792','Varga Péter','1513','Sajószentpéter                                  ','Magyarország','Kossuth Lajos                                     ','112');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29401','703905632','Horváth Attila','8609','Székesfehérvár                                 ','Magyarország','Borsodi u                                         ','23');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29402','581095819','Szabó László','2016','Székesfehérvár                                 ','Magyarország','Szabadság u                                      ','55');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29403','971029350','Horváth Andrea','7036','Budapest                                          ','Magyarország','Borsodi u                                         ','89');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29404','399108552','Szűcs László','5721','Budapest                                          ','Magyarország','Katona József                                    ','51');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29405','233524708','Varga Gábor','6688','Edelény                                          ','Magyarország','Andrássy u                                       ','26');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29406','760077893','Varga Gábor','6988','Vác                                              ','Magyarország','Barátság u                                      ','54');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29407','456126891','Tóth Gábor','9946','Debrecen                                          ','Magyarország','Borsodi u                                         ','38');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29408','563164976','Kis Péter','3352','Szeged                                            ','Magyarország','Szilágyi Dezső                                  ','10');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29409','992643799','Nagy Krisztina','4037','Kazincbarcika                                     ','Magyarország','Szabadság u                                      ','19');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29410','417804667','Horváth Katalin','2682','Székesfehérvár                                 ','Magyarország','Ady Endre                                         ','97');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29411','979203115','Varga Attila','2201','Edelény                                          ','Magyarország','Barátság u                                      ','50');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29412','981831859','Varga Mónika','9390','Szolnok                                           ','Magyarország','Katona József                                    ','38');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29413','860143220','Juhász Katalin','2788','Debrecen                                          ','Magyarország','Szilágyi Dezső                                  ','78');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29414','902615480','Horváth Katalin','8154','Szekszárd                                        ','Magyarország','Kossuth Lajos                                     ','86');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29415','262490650','Szabó Krisztina','3589','Vác                                              ','Magyarország','József Attila                                    ','47');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29416','879003293','Molnár Andrea','1478','Sajószentpéter                                  ','Magyarország','Barátság u                                      ','67');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29417','569222304','Varga Katalin','9959','Nyíregyháza                                     ','Magyarország','Semmelweis u                                      ','49');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29418','238811405','Juhász Gábor','7322','Mezőkövesd                                      ','Magyarország','Bajcsy                                            ','56');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29419','526620422','Varga Krisztina','6319','Vác                                              ','Magyarország','Andrássy u                                       ','74');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29420','227122734','Szűcs Andrea','2552','Füzesabony                                       ','Magyarország','Dózsa György                                    ','12');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29421','597908103','Molnár László','2548','Mezőkövesd                                      ','Magyarország','Szentgyörgyi u                                   ','3');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29422','980606498','Varga Attila','8804','Kazincbarcika                                     ','Magyarország','Szentgyörgyi u                                   ','46');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29423','590561143','Szabó László','8772','Kazincbarcika                                     ','Magyarország','Szentgyörgyi u                                   ','66');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29424','583243870','Horváth Attila','7251','Székesfehérvár                                 ','Magyarország','Pesti u                                           ','96');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29425','887771535','Varga Mónika','9587','Hatvan                                            ','Magyarország','Borsodi u                                         ','113');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29426','978708506','Szabó Andrea','4970','Békéscsaba                                      ','Magyarország','Katona József                                    ','36');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29427','244351752','Horváth Péter','2431','Nyíregyháza                                     ','Magyarország','Katona József                                    ','7');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29428','300137202','Juhász Krisztina','6634','Eger                                              ','Magyarország','Széchenyi István                                ','65');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29429','763383021','Szűcs Mónika','9045','Debrecen                                          ','Magyarország','Dózsa György                                    ','68');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29430','787175558','Kovács Gábor','4177','Sajószentpéter                                  ','Magyarország','Semmelweis u                                      ','110');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29431','445959939','Nagy Gábor','7332','Hatvan                                            ','Magyarország','Szemere Bertalan                                  ','111');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29432','629473258','Szűcs Krisztina','1150','Füzesabony                                       ','Magyarország','Borsodi u                                         ','54');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29433','355485655','Szabó Gábor','7067','Eger                                              ','Magyarország','Bajcsy                                            ','37');
Insert into DB2.SERULT (ID,TAJ,NEV,IRANYITOSZAM,VAROS,ORSZAG,KOZTERULET,HAZSZAM) values ('29434','674479781','Tóth Attila','1497','Debrecen                                          ','Magyarország','Szentgyörgyi u                                   ','18');
REM INSERTING into DB2.VONULAS
SET DEFINE OFF;
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29437','GRAYS-001','29367',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29437','GRAYS-001','29381',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29437','GRAYS-001','29382',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29440','LZA281','29381',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29440','LZA281','29371',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29440','LZA281','29373',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29443','LZA281','29380',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29443','LZA281','29372',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29443','LZA281','29383',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29446','KUF571','29365',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29446','KUF571','29380',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29446','KUF571','29375',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29449','SGH918','29366',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29449','SGH918','29368',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29449','SGH918','29370',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29452','SGH918','29382',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29452','SGH918','29372',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29452','SGH918','29377',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29455','KCS667','29380',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29455','KCS667','29373',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29455','KCS667','29378',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29458','GRAYS-001','29366',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29458','GRAYS-001','29377',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29458','GRAYS-001','29367',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29461','LZA281','29373',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29461','LZA281','29368',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29461','LZA281','29383',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29464','SGH918','29373',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29464','SGH918','29368',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29464','SGH918','29370',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29467','KUF571','29371',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29467','KUF571','29376',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29467','KUF571','29382',to_date('18-MÁJ.  -02','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29470','LZA281','29376',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29470','LZA281','29368',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29470','LZA281','29382',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29473','LZA281','29378',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29473','LZA281','29377',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29473','LZA281','29376',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29476','KCS667','29371',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29476','KCS667','29376',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29476','KCS667','29382',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29479','SGH918','29372',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29479','SGH918','29380',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29479','SGH918','29378',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29482','GRAYS-001','29372',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29482','GRAYS-001','29378',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29482','GRAYS-001','29382',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29485','LZA281','29366',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29485','LZA281','29375',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29485','LZA281','29370',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29488','GRAYS-001','29378',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29488','GRAYS-001','29370',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29488','GRAYS-001','29365',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29491','KUF571','29373',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29491','KUF571','29375',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29491','KUF571','29366',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29494','SGH918','29381',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29494','SGH918','29365',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29494','SGH918','29372',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29497','KCS667','29382',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29497','KCS667','29368',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29497','KCS667','29381',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29500','SGH918','29380',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29500','SGH918','29375',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29500','SGH918','29381',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29503','LZA281','29373',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29503','LZA281','29370',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29503','LZA281','29372',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29506','KUF571','29382',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29506','KUF571','29375',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29506','KUF571','29372',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29509','KCS667','29375',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29509','KCS667','29370',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29509','KCS667','29371',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29512','GRAYS-001','29370',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29512','GRAYS-001','29383',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29512','GRAYS-001','29376',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29515','KUF571','29370',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29515','KUF571','29371',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29515','KUF571','29375',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29518','GRAYS-001','29378',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29518','GRAYS-001','29377',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29518','GRAYS-001','29366',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29521','LZA281','29383',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29521','LZA281','29370',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29521','LZA281','29381',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29524','KCS667','29365',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29524','KCS667','29368',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29524','KCS667','29373',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29527','SGH918','29368',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29527','SGH918','29382',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29527','SGH918','29372',to_date('18-ÁPR.  -18','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29530','LZA281','29382',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29530','LZA281','29377',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29530','LZA281','29370',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29533','GRAYS-001','29380',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29533','GRAYS-001','29378',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29533','GRAYS-001','29377',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29536','GRAYS-001','29372',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29536','GRAYS-001','29371',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29536','GRAYS-001','29366',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29539','SGH918','29372',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29539','SGH918','29365',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29539','SGH918','29382',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29542','KUF571','29380',to_date('18-MÁJ.  -12','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29542','KUF571','29373',to_date('18-MÁJ.  -12','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29542','KUF571','29366',to_date('18-MÁJ.  -12','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29545','GRAYS-001','29376',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29545','GRAYS-001','29375',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29545','GRAYS-001','29371',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29548','LZA281','29376',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29548','LZA281','29377',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29548','LZA281','29371',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29551','SGH918','29375',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29551','SGH918','29365',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29551','SGH918','29367',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29554','GRAYS-001','29371',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29554','GRAYS-001','29366',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29554','GRAYS-001','29370',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29557','GRAYS-001','29371',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29557','GRAYS-001','29377',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29557','GRAYS-001','29367',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29560','GRAYS-001','29376',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29560','GRAYS-001','29367',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29560','GRAYS-001','29373',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29563','LZA281','29383',to_date('18-ÁPR.  -21','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29563','LZA281','29377',to_date('18-ÁPR.  -21','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29563','LZA281','29367',to_date('18-ÁPR.  -21','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29566','LZA281','29366',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29566','LZA281','29370',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29566','LZA281','29377',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29569','KUF571','29371',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29569','KUF571','29380',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29569','KUF571','29365',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29572','GRAYS-001','29373',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29572','GRAYS-001','29370',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29572','GRAYS-001','29377',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29575','SGH918','29381',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29575','SGH918','29375',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29575','SGH918','29368',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29578','GRAYS-001','29367',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29578','GRAYS-001','29381',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29578','GRAYS-001','29366',to_date('18-MÁJ.  -11','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29581','KCS667','29366',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29581','KCS667','29377',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29581','KCS667','29378',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29584','SGH918','29365',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29584','SGH918','29372',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29584','SGH918','29380',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29587','GRAYS-001','29380',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29587','GRAYS-001','29377',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29587','GRAYS-001','29366',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29590','KUF571','29366',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29590','KUF571','29375',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29590','KUF571','29365',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29593','SGH918','29378',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29593','SGH918','29372',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29593','SGH918','29381',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29596','GRAYS-001','29373',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29596','GRAYS-001','29371',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29596','GRAYS-001','29376',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29599','SGH918','29377',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29599','SGH918','29378',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29599','SGH918','29380',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29602','GRAYS-001','29381',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29602','GRAYS-001','29383',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29602','GRAYS-001','29378',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29605','SGH918','29371',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29605','SGH918','29383',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29605','SGH918','29366',to_date('18-MÁJ.  -10','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29608','SGH918','29370',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29608','SGH918','29380',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29608','SGH918','29367',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29611','GRAYS-001','29375',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29611','GRAYS-001','29370',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29611','GRAYS-001','29376',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29614','GRAYS-001','29378',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29614','GRAYS-001','29373',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29614','GRAYS-001','29372',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29617','SGH918','29382',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29617','SGH918','29373',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29617','SGH918','29383',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29620','GRAYS-001','29378',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29620','GRAYS-001','29380',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29620','GRAYS-001','29375',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29623','LZA281','29375',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29623','LZA281','29377',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29623','LZA281','29371',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29626','GRAYS-001','29372',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29626','GRAYS-001','29383',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29626','GRAYS-001','29367',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29629','LZA281','29371',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29629','LZA281','29375',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29629','LZA281','29373',to_date('18-MÁJ.  -05','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29632','SGH918','29380',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29632','SGH918','29378',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29632','SGH918','29382',to_date('18-ÁPR.  -24','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29635','GRAYS-001','29376',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29635','GRAYS-001','29371',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29635','GRAYS-001','29383',to_date('18-MÁJ.  -13','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29638','LZA281','29367',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29638','LZA281','29365',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29638','LZA281','29368',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29641','SGH918','29372',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29641','SGH918','29381',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29641','SGH918','29366',to_date('18-MÁJ.  -01','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29644','LZA281','29383',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29644','LZA281','29367',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29644','LZA281','29381',to_date('18-ÁPR.  -25','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29647','KCS667','29381',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29647','KCS667','29378',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29647','KCS667','29373',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29650','GRAYS-001','29376',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29650','GRAYS-001','29370',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29650','GRAYS-001','29377',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29653','GRAYS-001','29380',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29653','GRAYS-001','29376',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29653','GRAYS-001','29367',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29656','LZA281','29373',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29656','LZA281','29368',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29656','LZA281','29375',to_date('18-ÁPR.  -26','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29659','LZA281','29365',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29659','LZA281','29370',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29659','LZA281','29377',to_date('18-ÁPR.  -20','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29662','SGH918','29371',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29662','SGH918','29368',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29662','SGH918','29373',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29665','LZA281','29370',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29665','LZA281','29371',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29665','LZA281','29382',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29668','SGH918','29382',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29668','SGH918','29368',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29668','SGH918','29371',to_date('18-MÁJ.  -16','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29671','LZA281','29370',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29671','LZA281','29367',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29671','LZA281','29366',to_date('18-ÁPR.  -19','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29674','SGH918','29381',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29674','SGH918','29368',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29674','SGH918','29378',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29677','KUF571','29368',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29677','KUF571','29366',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29677','KUF571','29367',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29680','SGH918','29381',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29680','SGH918','29367',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29680','SGH918','29375',to_date('18-MÁJ.  -14','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29683','GRAYS-001','29368',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29683','GRAYS-001','29365',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29683','GRAYS-001','29381',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29686','GRAYS-001','29367',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29686','GRAYS-001','29370',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29686','GRAYS-001','29372',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29689','SGH918','29366',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29689','SGH918','29378',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29689','SGH918','29377',to_date('18-MÁJ.  -06','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29692','LZA281','29375',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29692','LZA281','29365',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29692','LZA281','29382',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29695','LZA281','29373',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29695','LZA281','29372',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29695','LZA281','29383',to_date('18-MÁJ.  -07','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29698','SGH918','29382',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29698','SGH918','29377',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29698','SGH918','29380',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29701','SGH918','29373',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29701','SGH918','29372',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29701','SGH918','29383',to_date('18-MÁJ.  -04','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29704','KCS667','29371',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29704','KCS667','29366',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29704','KCS667','29368',to_date('18-ÁPR.  -23','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29707','LZA281','29376',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29707','LZA281','29373',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29707','LZA281','29383',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29710','SGH918','29377',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29710','SGH918','29370',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29710','SGH918','29372',to_date('18-MÁJ.  -15','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29713','GRAYS-001','29381',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29713','GRAYS-001','29366',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29713','GRAYS-001','29378',to_date('18-ÁPR.  -29','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29716','KUF571','29366',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29716','KUF571','29368',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29716','KUF571','29373',to_date('18-MÁJ.  -09','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29719','LZA281','29370',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29719','LZA281','29371',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29719','LZA281','29377',to_date('18-ÁPR.  -28','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29722','GRAYS-001','29373',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29722','GRAYS-001','29372',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29722','GRAYS-001','29377',to_date('18-MÁJ.  -08','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29725','GRAYS-001','29365',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29725','GRAYS-001','29373',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29725','GRAYS-001','29382',to_date('18-ÁPR.  -30','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29728','LZA281','29370',to_date('18-MÁJ.  -03','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29728','LZA281','29382',to_date('18-MÁJ.  -03','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29728','LZA281','29365',to_date('18-MÁJ.  -03','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29731','KUF571','29372',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29731','KUF571','29371',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29731','KUF571','29367',to_date('18-ÁPR.  -22','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29734','LZA281','29366',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29734','LZA281','29376',to_date('18-ÁPR.  -27','RR-MON-DD'));
Insert into DB2.VONULAS (ESET,ESETKOCSI,DOLGOZO,INDULAS) values ('29734','LZA281','29375',to_date('18-ÁPR.  -27','RR-MON-DD'));
REM INSERTING into DB2.NAPLO
SET DEFINE OFF;
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29613','Uj rekord hozzaadva, id: 29612                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29616','Uj rekord hozzaadva, id: 29615                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29619','Uj rekord hozzaadva, id: 29618                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29622','Uj rekord hozzaadva, id: 29621                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29625','Uj rekord hozzaadva, id: 29624                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29628','Uj rekord hozzaadva, id: 29627                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29631','Uj rekord hozzaadva, id: 29630                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29634','Uj rekord hozzaadva, id: 29633                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29637','Uj rekord hozzaadva, id: 29636                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29640','Uj rekord hozzaadva, id: 29639                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29643','Uj rekord hozzaadva, id: 29642                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29646','Uj rekord hozzaadva, id: 29645                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29649','Uj rekord hozzaadva, id: 29648                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29652','Uj rekord hozzaadva, id: 29651                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29655','Uj rekord hozzaadva, id: 29654                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29658','Uj rekord hozzaadva, id: 29657                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29661','Uj rekord hozzaadva, id: 29660                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29664','Uj rekord hozzaadva, id: 29663                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29667','Uj rekord hozzaadva, id: 29666                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29670','Uj rekord hozzaadva, id: 29669                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29673','Uj rekord hozzaadva, id: 29672                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29676','Uj rekord hozzaadva, id: 29675                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29679','Uj rekord hozzaadva, id: 29678                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29682','Uj rekord hozzaadva, id: 29681                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29685','Uj rekord hozzaadva, id: 29684                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29688','Uj rekord hozzaadva, id: 29687                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29691','Uj rekord hozzaadva, id: 29690                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29694','Uj rekord hozzaadva, id: 29693                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29697','Uj rekord hozzaadva, id: 29696                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29700','Uj rekord hozzaadva, id: 29699                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29703','Uj rekord hozzaadva, id: 29702                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29706','Uj rekord hozzaadva, id: 29705                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29709','Uj rekord hozzaadva, id: 29708                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29712','Uj rekord hozzaadva, id: 29711                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29715','Uj rekord hozzaadva, id: 29714                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29718','Uj rekord hozzaadva, id: 29717                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29721','Uj rekord hozzaadva, id: 29720                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29724','Uj rekord hozzaadva, id: 29723                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29727','Uj rekord hozzaadva, id: 29726                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29730','Uj rekord hozzaadva, id: 29729                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29733','Uj rekord hozzaadva, id: 29732                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29436','Uj rekord hozzaadva, id: 29435                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29439','Uj rekord hozzaadva, id: 29438                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29442','Uj rekord hozzaadva, id: 29441                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29445','Uj rekord hozzaadva, id: 29444                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29448','Uj rekord hozzaadva, id: 29447                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29451','Uj rekord hozzaadva, id: 29450                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29454','Uj rekord hozzaadva, id: 29453                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29457','Uj rekord hozzaadva, id: 29456                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29460','Uj rekord hozzaadva, id: 29459                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29463','Uj rekord hozzaadva, id: 29462                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29466','Uj rekord hozzaadva, id: 29465                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29469','Uj rekord hozzaadva, id: 29468                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29472','Uj rekord hozzaadva, id: 29471                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29475','Uj rekord hozzaadva, id: 29474                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29478','Uj rekord hozzaadva, id: 29477                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29481','Uj rekord hozzaadva, id: 29480                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29484','Uj rekord hozzaadva, id: 29483                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29487','Uj rekord hozzaadva, id: 29486                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29490','Uj rekord hozzaadva, id: 29489                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29493','Uj rekord hozzaadva, id: 29492                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29496','Uj rekord hozzaadva, id: 29495                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29499','Uj rekord hozzaadva, id: 29498                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29502','Uj rekord hozzaadva, id: 29501                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29505','Uj rekord hozzaadva, id: 29504                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29508','Uj rekord hozzaadva, id: 29507                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29511','Uj rekord hozzaadva, id: 29510                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29514','Uj rekord hozzaadva, id: 29513                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29517','Uj rekord hozzaadva, id: 29516                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29520','Uj rekord hozzaadva, id: 29519                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29523','Uj rekord hozzaadva, id: 29522                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29526','Uj rekord hozzaadva, id: 29525                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29529','Uj rekord hozzaadva, id: 29528                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29532','Uj rekord hozzaadva, id: 29531                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29535','Uj rekord hozzaadva, id: 29534                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29538','Uj rekord hozzaadva, id: 29537                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29541','Uj rekord hozzaadva, id: 29540                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29544','Uj rekord hozzaadva, id: 29543                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29547','Uj rekord hozzaadva, id: 29546                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29550','Uj rekord hozzaadva, id: 29549                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29553','Uj rekord hozzaadva, id: 29552                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29556','Uj rekord hozzaadva, id: 29555                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29559','Uj rekord hozzaadva, id: 29558                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29562','Uj rekord hozzaadva, id: 29561                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29565','Uj rekord hozzaadva, id: 29564                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29568','Uj rekord hozzaadva, id: 29567                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29571','Uj rekord hozzaadva, id: 29570                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29574','Uj rekord hozzaadva, id: 29573                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29577','Uj rekord hozzaadva, id: 29576                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29580','Uj rekord hozzaadva, id: 29579                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29583','Uj rekord hozzaadva, id: 29582                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29586','Uj rekord hozzaadva, id: 29585                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29589','Uj rekord hozzaadva, id: 29588                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29592','Uj rekord hozzaadva, id: 29591                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29595','Uj rekord hozzaadva, id: 29594                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29598','Uj rekord hozzaadva, id: 29597                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29601','Uj rekord hozzaadva, id: 29600                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29604','Uj rekord hozzaadva, id: 29603                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29607','Uj rekord hozzaadva, id: 29606                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
Insert into DB2.NAPLO (ID,ESEMENY,IDOPONT) values ('29610','Uj rekord hozzaadva, id: 29609                                                                      ',to_date('18-MÁJ.  -17','RR-MON-DD'));
REM INSERTING into DB2.HIVAS
SET DEFINE OFF;
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29717',to_date('18-ÁPR.  -28','RR-MON-DD'),'29379','Molnár Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29720',to_date('18-MÁJ.  -08','RR-MON-DD'),'29384','Horváth Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29723',to_date('18-ÁPR.  -30','RR-MON-DD'),'29379','Molnár Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29726',to_date('18-MÁJ.  -03','RR-MON-DD'),'29379','Tóth Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29729',to_date('18-ÁPR.  -22','RR-MON-DD'),'29374','Tóth Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29732',to_date('18-ÁPR.  -27','RR-MON-DD'),'29384','Kovács Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29435',to_date('18-MÁJ.  -02','RR-MON-DD'),'29379','Kis Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29438',to_date('18-MÁJ.  -15','RR-MON-DD'),'29379','Nagy Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29441',to_date('18-ÁPR.  -25','RR-MON-DD'),'29374','Nagy Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29444',to_date('18-MÁJ.  -04','RR-MON-DD'),'29369','Tóth Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29447',to_date('18-ÁPR.  -22','RR-MON-DD'),'29384','Juhász László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29450',to_date('18-MÁJ.  -08','RR-MON-DD'),'29384','Molnár Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29453',to_date('18-ÁPR.  -20','RR-MON-DD'),'29374','Juhász Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29456',to_date('18-ÁPR.  -23','RR-MON-DD'),'29369','Tóth László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29459',to_date('18-MÁJ.  -16','RR-MON-DD'),'29379','Juhász Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29462',to_date('18-MÁJ.  -10','RR-MON-DD'),'29379','Szűcs Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29465',to_date('18-MÁJ.  -02','RR-MON-DD'),'29374','Horváth Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29468',to_date('18-ÁPR.  -22','RR-MON-DD'),'29374','Szabó Zoltán');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29471',to_date('18-ÁPR.  -22','RR-MON-DD'),'29374','Szűcs Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29474',to_date('18-MÁJ.  -06','RR-MON-DD'),'29374','Tóth Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29477',to_date('18-ÁPR.  -19','RR-MON-DD'),'29384','Szűcs Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29480',to_date('18-MÁJ.  -11','RR-MON-DD'),'29369','Szűcs Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29483',to_date('18-MÁJ.  -13','RR-MON-DD'),'29379','Varga Zoltán');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29486',to_date('18-MÁJ.  -14','RR-MON-DD'),'29379','Molnár Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29489',to_date('18-ÁPR.  -18','RR-MON-DD'),'29369','Szűcs Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29492',to_date('18-MÁJ.  -09','RR-MON-DD'),'29384','Horváth Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29495',to_date('18-ÁPR.  -20','RR-MON-DD'),'29384','Tóth Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29498',to_date('18-ÁPR.  -24','RR-MON-DD'),'29374','Molnár László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29501',to_date('18-MÁJ.  -01','RR-MON-DD'),'29374','Molnár Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29504',to_date('18-ÁPR.  -19','RR-MON-DD'),'29374','Nagy Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29507',to_date('18-ÁPR.  -27','RR-MON-DD'),'29379','Szűcs Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29510',to_date('18-ÁPR.  -19','RR-MON-DD'),'29379','Szűcs Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29513',to_date('18-MÁJ.  -08','RR-MON-DD'),'29374','Molnár Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29516',to_date('18-MÁJ.  -16','RR-MON-DD'),'29369','Tóth Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29519',to_date('18-MÁJ.  -08','RR-MON-DD'),'29379','Nagy Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29522',to_date('18-ÁPR.  -24','RR-MON-DD'),'29379','Molnár Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29525',to_date('18-ÁPR.  -18','RR-MON-DD'),'29379','Kis Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29528',to_date('18-MÁJ.  -08','RR-MON-DD'),'29384','Nagy Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29531',to_date('18-ÁPR.  -19','RR-MON-DD'),'29379','Molnár László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29534',to_date('18-MÁJ.  -06','RR-MON-DD'),'29384','Varga László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29537',to_date('18-ÁPR.  -19','RR-MON-DD'),'29374','Nagy Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29540',to_date('18-MÁJ.  -11','RR-MON-DD'),'29374','Horváth Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29543',to_date('18-ÁPR.  -30','RR-MON-DD'),'29374','Kis Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29546',to_date('18-ÁPR.  -20','RR-MON-DD'),'29384','Horváth László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29549',to_date('18-ÁPR.  -19','RR-MON-DD'),'29369','Szűcs Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29552',to_date('18-ÁPR.  -27','RR-MON-DD'),'29384','Kis Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29555',to_date('18-MÁJ.  -09','RR-MON-DD'),'29379','Tóth Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29558',to_date('18-ÁPR.  -19','RR-MON-DD'),'29374','Tóth Katalin');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29561',to_date('18-ÁPR.  -21','RR-MON-DD'),'29379','Szűcs Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29564',to_date('18-ÁPR.  -29','RR-MON-DD'),'29374','Szűcs Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29567',to_date('18-MÁJ.  -04','RR-MON-DD'),'29379','Juhász Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29570',to_date('18-MÁJ.  -04','RR-MON-DD'),'29379','Kis Katalin');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29573',to_date('18-ÁPR.  -29','RR-MON-DD'),'29384','Szabó Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29576',to_date('18-MÁJ.  -11','RR-MON-DD'),'29374','Kis Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29579',to_date('18-MÁJ.  -01','RR-MON-DD'),'29379','Szabó Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29582',to_date('18-MÁJ.  -13','RR-MON-DD'),'29369','Kis Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29585',to_date('18-ÁPR.  -24','RR-MON-DD'),'29369','Szabó Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29588',to_date('18-ÁPR.  -24','RR-MON-DD'),'29374','Szabó Zoltán');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29591',to_date('18-MÁJ.  -06','RR-MON-DD'),'29379','Szabó Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29594',to_date('18-ÁPR.  -19','RR-MON-DD'),'29384','Molnár Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29597',to_date('18-MÁJ.  -08','RR-MON-DD'),'29374','Kis Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29600',to_date('18-ÁPR.  -26','RR-MON-DD'),'29374','Varga Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29603',to_date('18-MÁJ.  -10','RR-MON-DD'),'29379','Molnár Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29606',to_date('18-MÁJ.  -13','RR-MON-DD'),'29384','Kis Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29609',to_date('18-MÁJ.  -17','RR-MON-DD'),'29379','Varga László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29612',to_date('18-MÁJ.  -05','RR-MON-DD'),'29374','Molnár Katalin');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29615',to_date('18-MÁJ.  -14','RR-MON-DD'),'29384','Szabó Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29618',to_date('18-MÁJ.  -08','RR-MON-DD'),'29379','Tóth Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29621',to_date('18-MÁJ.  -09','RR-MON-DD'),'29384','Nagy Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29624',to_date('18-MÁJ.  -13','RR-MON-DD'),'29374','Nagy Katalin');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29627',to_date('18-MÁJ.  -05','RR-MON-DD'),'29384','Szűcs Zoltán');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29630',to_date('18-ÁPR.  -24','RR-MON-DD'),'29374','Nagy Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29633',to_date('18-MÁJ.  -13','RR-MON-DD'),'29379','Molnár László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29636',to_date('18-MÁJ.  -09','RR-MON-DD'),'29379','Varga Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29639',to_date('18-MÁJ.  -01','RR-MON-DD'),'29379','Tóth Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29642',to_date('18-ÁPR.  -25','RR-MON-DD'),'29369','Horváth Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29645',to_date('18-ÁPR.  -20','RR-MON-DD'),'29374','Kovács Krisztina');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29648',to_date('18-ÁPR.  -26','RR-MON-DD'),'29379','Szűcs Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29651',to_date('18-ÁPR.  -28','RR-MON-DD'),'29379','Nagy Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29654',to_date('18-ÁPR.  -26','RR-MON-DD'),'29379','Szűcs Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29657',to_date('18-ÁPR.  -20','RR-MON-DD'),'29379','Kis Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29660',to_date('18-ÁPR.  -23','RR-MON-DD'),'29384','Tóth Katalin');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29663',to_date('18-ÁPR.  -28','RR-MON-DD'),'29374','Nagy Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29666',to_date('18-MÁJ.  -16','RR-MON-DD'),'29374','Szabó Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29669',to_date('18-ÁPR.  -19','RR-MON-DD'),'29379','Kis Szilvia');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29672',to_date('18-ÁPR.  -28','RR-MON-DD'),'29384','Horváth Zoltán');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29675',to_date('18-ÁPR.  -29','RR-MON-DD'),'29369','Szabó Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29678',to_date('18-MÁJ.  -14','RR-MON-DD'),'29374','Nagy Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29681',to_date('18-ÁPR.  -29','RR-MON-DD'),'29369','Szűcs Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29684',to_date('18-MÁJ.  -08','RR-MON-DD'),'29379','Molnár Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29687',to_date('18-MÁJ.  -06','RR-MON-DD'),'29374','Juhász László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29690',to_date('18-MÁJ.  -07','RR-MON-DD'),'29374','Tóth Mónika');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29693',to_date('18-MÁJ.  -07','RR-MON-DD'),'29379','Varga Attila');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29696',to_date('18-ÁPR.  -28','RR-MON-DD'),'29379','Szabó László');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29699',to_date('18-MÁJ.  -04','RR-MON-DD'),'29384','Kis Gábor');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29702',to_date('18-ÁPR.  -23','RR-MON-DD'),'29374','Szabó Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29705',to_date('18-MÁJ.  -08','RR-MON-DD'),'29379','Horváth Andrea');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29708',to_date('18-MÁJ.  -15','RR-MON-DD'),'29384','Nagy Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29711',to_date('18-ÁPR.  -29','RR-MON-DD'),'29369','Molnár Péter');
Insert into DB2.HIVAS (ID,IDOPONT,DISZPECSER,BEJELENTO) values ('29714',to_date('18-MÁJ.  -09','RR-MON-DD'),'29374','Molnár Péter');
REM INSERTING into DB2.ESETKOCSI
SET DEFINE OFF;
Insert into DB2.ESETKOCSI (RENDSZAM,TIPUS) values ('KCS667','Mercedes Sprinter                                 ');
Insert into DB2.ESETKOCSI (RENDSZAM,TIPUS) values ('LZA281','Volkswagen Transporter                            ');
Insert into DB2.ESETKOCSI (RENDSZAM,TIPUS) values ('SGH918','Volkswagen Transporter                            ');
Insert into DB2.ESETKOCSI (RENDSZAM,TIPUS) values ('KUF571','Mercedes Sprinter                                 ');
Insert into DB2.ESETKOCSI (RENDSZAM,TIPUS) values ('GRAYS-001','Mercedes Sprinter                                 ');
--------------------------------------------------------
--  DDL for Index ESET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."ESET_PK" ON "DB2"."ESET" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Index DOLGOZO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."DOLGOZO_PK" ON "DB2"."DOLGOZO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Index SERULT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."SERULT_PK" ON "DB2"."SERULT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Index NAPLO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."NAPLO_PK" ON "DB2"."NAPLO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Index HIVAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."HIVAS_PK" ON "DB2"."HIVAS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Index ESETKOCSI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DB2"."ESETKOCSI_PK" ON "DB2"."ESETKOCSI" ("RENDSZAM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2" ;
--------------------------------------------------------
--  DDL for Trigger ESET_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."ESET_ID" BEFORE INSERT ON eset FOR EACH ROW
BEGIN
  SELECT db2_id_sequence.nextval INTO :new.id FROM dual;
END;
/
ALTER TRIGGER "DB2"."ESET_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DOLGOZO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."DOLGOZO_ID" BEFORE INSERT ON dolgozo FOR EACH ROW
BEGIN
  SELECT db2_id_sequence.nextval INTO :new.id FROM dual;
END;
/
ALTER TRIGGER "DB2"."DOLGOZO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SERULT_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."SERULT_ID" BEFORE INSERT ON serult FOR EACH ROW
BEGIN
  SELECT db2_id_sequence.nextval INTO :new.id FROM dual;
END;
/
ALTER TRIGGER "DB2"."SERULT_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger NAPLO_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."NAPLO_ID" BEFORE INSERT ON naplo FOR EACH ROW
BEGIN
  SELECT db2_id_sequence.nextval INTO :new.id FROM dual;
END;
/
ALTER TRIGGER "DB2"."NAPLO_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HIVAS_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."HIVAS_ID" BEFORE INSERT ON hivas FOR EACH ROW
BEGIN
  SELECT db2_id_sequence.nextval INTO :new.id FROM dual;
END;
/
ALTER TRIGGER "DB2"."HIVAS_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HIVAS_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DB2"."HIVAS_LOG" AFTER UPDATE OR INSERT OR DELETE ON hivas FOR EACH ROW
DECLARE
  esemeny CHAR(100);
BEGIN
  esemeny := 'alma';
  IF INSERTING THEN
    esemeny := 'Uj rekord hozzaadva, id: ' || TO_CHAR(:new.id);
  END IF;
  IF UPDATING THEN
    esemeny := 'Rekord modositva, id: ' || TO_CHAR(:new.id);
  END IF;
  IF DELETING THEN
    esemeny := 'Rekord torolve, id: ' || TO_CHAR(:old.id);
  END IF;
  INSERT INTO NAPLO (naplo.esemeny) VALUES (esemeny);
END;
/
ALTER TRIGGER "DB2"."HIVAS_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Synonymn DUAL
--------------------------------------------------------

  CREATE OR REPLACE PUBLIC SYNONYM "DUAL" FOR "SYS"."DUAL";
--------------------------------------------------------
--  Constraints for Table ESET
--------------------------------------------------------

  ALTER TABLE "DB2"."ESET" ADD CONSTRAINT "ESET_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."ESET" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DOLGOZO
--------------------------------------------------------

  ALTER TABLE "DB2"."DOLGOZO" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "DB2"."DOLGOZO" ADD CONSTRAINT "DOLGOZOK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."DOLGOZO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SERULT
--------------------------------------------------------

  ALTER TABLE "DB2"."SERULT" ADD CONSTRAINT "SERULTEK_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."SERULT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NAPLO
--------------------------------------------------------

  ALTER TABLE "DB2"."NAPLO" MODIFY ("IDOPONT" NOT NULL ENABLE);
  ALTER TABLE "DB2"."NAPLO" ADD CONSTRAINT "NAPLO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."NAPLO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HIVAS
--------------------------------------------------------

  ALTER TABLE "DB2"."HIVAS" ADD CONSTRAINT "HIVAS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."HIVAS" MODIFY ("DISZPECSER" NOT NULL ENABLE);
  ALTER TABLE "DB2"."HIVAS" MODIFY ("IDOPONT" NOT NULL ENABLE);
  ALTER TABLE "DB2"."HIVAS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESETKOCSI
--------------------------------------------------------

  ALTER TABLE "DB2"."ESETKOCSI" ADD CONSTRAINT "ESETKOCSI_PK" PRIMARY KEY ("RENDSZAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DB2"  ENABLE;
  ALTER TABLE "DB2"."ESETKOCSI" MODIFY ("RENDSZAM" NOT NULL ENABLE);
