
-- Daten in eine Tabelle laden
LOAD DATA INFILE 'data.txt' INTO TABLE db2.my_table;

-- Daten von einer Tabelle in eine Datei laden
SELECT * INTO OUTFILE 'data.txt'
  FIELDS TERMINATED BY ','
  FROM table2;