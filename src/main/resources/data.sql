<<<<<<< HEAD
DROP TABLE IF EXISTS Tisch;
DROP TABLE IF EXISTS Platz;
DROP TABLE IF EXISTS Bestellung;

CREATE TABLE IF NOT EXISTS Tisch (ID int NOT NULL AUTO_INCREMENT,name VARCHAR(10),PRIMARY KEY (ID));
CREATE TABLE IF NOT EXISTS Platz (ID int NOT NULL AUTO_INCREMENT,name VARCHAR(10),PRIMARY KEY (ID), TISCH_ID int);


CREATE TABLE IF NOT EXISTS Bestellung (ID int NOT NULL AUTO_INCREMENT,Getraenkbezeichnung VARCHAR(255),ZEITPUNKT_BESTELLT DATE, ZEITPUNKT_VORBEREITET DATE, ZEITPUNKT_ANGEKOMMEN DATE, ZEITPUNKT_LEERGETRUNKEN DATE,INITIALGEWICHT DECIMAL,PRIMARY KEY (ID), PLATZ_ID int);



INSERT INTO Tisch(name) VALUES ("A");
INSERT INTO Tisch(name) VALUES ("B");
INSERT INTO Tisch(name) VALUES ("C");


INSERT INTO Platz (name,TISCH_ID) VALUES ("A",0);
INSERT INTO Platz (name,TISCH_ID) VALUES ("A",0);

INSERT INTO Platz (name,TISCH_ID) VALUES ("B",1);
INSERT INTO Platz (name,TISCH_ID) VALUES ("B",1);
INSERT INTO Platz (name,TISCH_ID) VALUES ("B",1);
INSERT INTO Platz (name,TISCH_ID) VALUES ("B",1);


INSERT INTO Platz (name,TISCH_ID) VALUES ("C",2);
INSERT INTO Platz (name,TISCH_ID) VALUES ("C",2);

INSERT INTO Bestellung (Getraenkbezeichnung, ZEITPUNKT_BESTELLT,ZEITPUNKT_ANGEKOMMEN,ZEITPUNKT_LEERGETRUNKEN,INITIALGEWICHT, PLATZ_ID) VALUES ("Weizen",'2021-06-12 11:00:00','2021-06-12 11:05:00','2021-06-12 11:10:00', 300.0, 2);











=======
-- DROP TABLE IF EXISTS Tische;
-- DROP TABLE IF EXISTS Plaetze;
-- DROP TABLE IF EXISTS bestellungen;
-- DROP TABLE IF EXISTS Getraenke;
-- DROP TABLE IF EXISTS Glaeser;
-- DROP TABLE IF EXISTS Stati;
-- DROP TABLE IF EXISTS Messpunkte;
-- DROP TABLE IF EXISTS Kunden;
--
-- CREATE TABLE IF NOT EXISTS test_table (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(10),
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS tische (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(10),
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS plaetze (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(10),
--     PRIMARY KEY (ID),
--     tisch_id int);
--
-- CREATE TABLE IF NOT EXISTS bestellungen (
--     id int NOT NULL AUTO_INCREMENT,
--     zeitpunkt_bestellt DATETIME,
--     zeitpunkt_vorbereitet DATETIME,
--     zeitpunkt_angekommen DATETIME,
--     zeitpunkt_leergetrunken DATETIME,
--     initialgewicht DECIMAL,
--     platz_id int,
--     getraenk_id int,
--     glas_id int,
--     status_id int,
--     kunde_id int,
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS Getraenke (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(45),
--     groesse DECIMAL(4), /* in milliliter*/
--     preis DECIMAL(4, 2), /* in euro.cent bpsw. 2.5 => 2 Euro und 50 Cent */
--     alkoholgehalt DECIMAL(4, 1), /* in vol% 20.5 -> 20.5 vol% */
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS Glaeser (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(30),
--     leergewicht DECIMAL(6), /* In Gramm */
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS Messpunkte (
--     id int NOT NULL AUTO_INCREMENT,
--     fuellstand DECIMAL,
--     zeitpunk DATETIME,
--     bestellung_id int,
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS Stati(
--     id int NOT NULL AUTO_INCREMENT,
--     bezeichnung VARCHAR(45),
--     PRIMARY KEY (ID));
--
-- CREATE TABLE IF NOT EXISTS Kunden (
--     id int NOT NULL AUTO_INCREMENT,
--     name VARCHAR(45),
--     PRIMARY KEY (ID));

-- INSERT INTO tische(name) VALUES ("TISCH A");
-- INSERT INTO tische(name) VALUES ("TISCH B");
-- INSERT INTO tische(name) VALUES ("TISCH C");
--
-- INSERT INTO stati(bezeichnung) VALUES ("AKTIV");
-- INSERT INTO stati(bezeichnung) VALUES ("ABGEBROCHEN");
-- INSERT INTO stati(bezeichnung) VALUES ("BEENDET");
--
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("COLA", 0500, 2.50, 0.0);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("FANTA", 0500, 2.50, 0.0);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("SPRITE", 0500, 2.50, 0.0);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("WEIZEN", 0500, 2.50, 5.1);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("PILS", 0500, 2.50, 5.1);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("ROTWEIN", 0250, 4.50, 13.5);
-- INSERT INTO getraenke(name, groesse, preis, alkoholgehalt) VALUES ("WEINSCHORLE", 0250, 2.50, 6.0);
--
-- INSERT INTO glaeser(name, leergewicht) VALUES ("ROTWEIN_GLAS", 100);
-- INSERT INTO glaeser(name, leergewicht) VALUES ("WEISSWEIN_GLAS", 100);
-- INSERT INTO glaeser(name, leergewicht) VALUES ("WEIZEN_GLAS", 100);
-- INSERT INTO glaeser(name, leergewicht) VALUES ("PILS_GLAS", 100);
-- INSERT INTO glaeser(name, leergewicht) VALUES ("SCHORLE_GLAS", 100);
-- INSERT INTO glaeser(name, leergewicht) VALUES ("500_ML_GLAS", 100);
--
-- INSERT INTO kunden(name) VALUES ("Alice");
-- INSERT INTO kunden(name) VALUES ("Bob");
-- INSERT INTO kunden(name) VALUES ("Charlie");
-- INSERT INTO kunden(name) VALUES ("Kim");
--
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ A",1);
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ B",1);
--
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ C",2);
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ D",2);
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ E",2);
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ F",2);
--
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ G",3);
-- INSERT INTO plaetze(name, tisch_id) VALUES ("PLATZ E",3);
--
-- INSERT INTO bestellungen(
--     zeitpunkt_bestellt,
--     zeitpunkt_vorbereitet,
--     zeitpunkt_angekommen,
--     zeitpunkt_leergetrunken,
--     initialgewicht,
--     platz_id,
--     getraenk_id,
--     glas_id,
--     status_id,
--     kunde_id
-- ) VALUES (
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     650,
--     1,
--     1,
--     6,
--     1,
--     1
-- );
--
-- INSERT INTO bestellungen(
--     zeitpunkt_bestellt,
--     zeitpunkt_vorbereitet,
--     zeitpunkt_angekommen,
--     zeitpunkt_leergetrunken,
--     initialgewicht,
--     platz_id,
--     getraenk_id,
--     glas_id,
--     status_id,
--     kunde_id
-- ) VALUES (
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     650,
--     2,
--     2,
--     6,
--     1,
--     2
-- );
--
-- INSERT INTO bestellungen(
--     zeitpunkt_bestellt,
--     zeitpunkt_vorbereitet,
--     zeitpunkt_angekommen,
--     zeitpunkt_leergetrunken,
--     initialgewicht,
--     platz_id,
--     getraenk_id,
--     glas_id,
--     status_id,
--     kunde_id
-- ) VALUES (
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     650,
--     3,
--     5,
--     3,
--     1,
--     3
-- );
--
-- INSERT INTO bestellungen(
--     zeitpunkt_bestellt,
--     zeitpunkt_vorbereitet,
--     zeitpunkt_angekommen,
--     zeitpunkt_leergetrunken,
--     initialgewicht,
--     platz_id,
--     getraenk_id,
--     glas_id,
--     status_id,
--     kunde_id
-- ) VALUES (
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     '1980-02-01-12:34:56',
--     650,
--     4,
--     3,
--     6,
--     1,
--     4
-- );
--
-- INSERT INTO test_table(name) VALUES ("ABCD");
-- INSERT INTO test_table(name) VALUES ("CDEF");
-- INSERT INTO test_table(name) VALUES ("aoeu");
-- INSERT INTO test_table(name) VALUES ("uetnnthue");
>>>>>>> 9222d49eec9f40928b6733e3c7c8f16c67f280e8
