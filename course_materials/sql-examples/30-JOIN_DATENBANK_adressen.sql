/* löschen der Tabelle falls sie existiert */
DROP DATABASE IF EXISTS uk_adressen;
/* Tabelle erstellen mit Zeichensatz UTF8 */
CREATE DATABASE uk_adressen DEFAULT CHARACTER SET utf8;
/* benutzen der Datenbank für die kommenden SQL und die Tabelle..... */
USE uk_adressen;

/* Tabelle erstellen */
CREATE TABLE adresse(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nachname VARCHAR(255)
);
/* Tabelle erstellen */
CREATE TABLE nummer(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nummer VARCHAR(255),
    fk_adressen_id INT,
    /* verbinden der zusammengehörenden id */
    FOREIGN KEY (fk_adressen_id) REFERENCES adresse (id)
    /* weitergabe von lösch und updatebefehlen */
    ON UPDATE CASCADE ON DELETE CASCADE
);

/* Daten einfügen */
INSERT INTO adresse(nachname)VALUES('URS');
INSERT INTO adresse(nachname)VALUES('HANS');
INSERT INTO adresse(nachname)VALUES('MARIA');

INSERT INTO nummer(nummer, fk_adressen_id)VALUES('11-458472655 email',1);
INSERT INTO nummer(nummer, fk_adressen_id)VALUES('12-4356256 telefon', 1);
INSERT INTO nummer(nummer, fk_adressen_id)VALUES('21-8765456789 fax', 2);
INSERT INTO nummer(nummer, fk_adressen_id)VALUES('22-456787654 natel', 2);
INSERT INTO nummer(nummer, fk_adressen_id)VALUES('31-5432345678 natel', 3);