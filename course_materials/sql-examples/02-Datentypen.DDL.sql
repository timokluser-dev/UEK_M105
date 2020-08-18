DROP DATABASE IF EXISTS datentypen;
/*Erstellen einer Datenbank*/
CREATE DATABASE IF NOT EXISTS datentypen DEFAULT CHARACTER SET utf8;
/*Datenbank benutzen für weitere SQL*/
USE datentypen;
/*Entitätstyp - erstellen*/
CREATE TABLE test1(
    id INT PRIMARY KEY AUTO_INCREMENT,
    vorname VARCHAR(255),
    -- Jahreszahl
    jahreszahl SMALLINT DEFAULT 2019, --INT(4) -- YEAR
    -- Artikelnummer x.xxx.xxx.xxx
    artikelnummer VARCHAR(13), 
    -- aktiv : ja, nein
    aktiv ENUM('Y', 'N'), -- TINYINT(1)
    -- status: 0,1
    mystatus TINYINT(1) DEFAULT 0 NOT NULL, -- BOOLEAN
    -- Währung
    währung VARCHAR(9),
    -- Preis 909.95
    preis FLOAT(5,2)
    -- Text mit 3000 Zeichen
    text TEXT, -- LONGTEXT -- BLOB
    -- Jahresgehalt eines Mitarbeiters 150'000.05
    jahresgehalt DECIMAL(8,2),
    -- Landeszeichen - Kurzzeichen (3 Zeichen)
    Landeszeichen CHAR(3),
    -- Geburtsdatum
    Geburtsdatum DATE DEFAULT CURDATE(),
    -- Datum mit Zeit
    DatumZeit DATETIME DEFAULT NOW(), -- TIMESTAMP
    -- Float mit vielen Stellen
    floatzahl FLOAT,
    -- UNIX - Timestamp
    ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
USE datentypen;
CREATE TABLE test2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fk_test1_id INT,
    FOREIGN KEY  meinKeyName (fk_test1_id) REFERENCES test1(id)
    ON UPDATE CASCADE ON DELETE CASCADE
);