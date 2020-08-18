DROP DATABASE IF EXISTS dbname;
CREATE DATABASE dbname DEFAULT CHARACTER SET utf8;

USE dbname;
CREATE TABLE tabelle1(
    id INT PRIMARY KEY AUTO_INCREMENT, -- UNIQUE NOT NULL
    myname VARCHAR(255),
    jahreszahl SMALLINT, -- INT(4), SMALLINT oder YEAR
    aktiv ENUM('J', 'N'),
    preis FLOAT(5,2),
    text TEXT, -- LONGTEXT oder  BLOB
    Geburtsdatum DATE,
    DatumundZeit DATETIME DEFAULT NOW(), -- TIMESTAMP
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE dbname;
CREATE TABLE tabelle2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fk_id INT,
    myname VARCHAR(255),
    FOREIGN KEY (fk_id) REFERENCES tabelle2(id) 
    ON UPDATE CASCADE ON DELETE CASCADE
);

USE dbname;
CREATE TABLE tabelle_key(
    id int AUTO_INCREMENT NOT NULL,
    myName VARCHAR(255),
    PRIMARY KEY (id, myName)
);




