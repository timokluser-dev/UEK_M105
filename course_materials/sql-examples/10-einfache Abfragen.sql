-- Abfrage allgemein
SELECT * FROM Tabelle;
SELECT spalte, spalte FROM Tabelle;
SELECT spalte, spalte AS spaltenname FROM Tabelle;
-- Aggregate Functions 
SELECT MIN(feld) FROM Tabelle;
SELECT MAX(feld) FROM Tabelle;
SELECT SUM(feld) FROM Tabelle;
SELECT AVG(feld) FROM Tabelle;
SELECT COUNT(feld) FROM Tabelle;
SELECT DISTINCT(feld) FROM Tabelle;
SELECT (feld - feld) AS unterschied FROM Tabelle;

SELECT TOP 3 * FROM Tabelle;
SELECT * FROM Tabelle LIMIT 3;
SELECT * FROM Tabelle WHERE ROWNUM <= 3;

-- ORDER BY (ASC = Absteigend)
SELECT * FROM Tabelle ORDER BY spalte ASC;
SELECT * FROM Tabelle ORDER BY spalte DESC, spalte ASC;
-- WHERE
SELECT * FROM Tabelle WHERE id=5;
SELECT * FROM Tabelle WHERE id IN (1,2,3);
SELECT * FROM Tabelle WHERE id NOT IN (1,2,3) AND id>7;
SELECT * FROM Tabelle WHERE max=(SELECT MAX(max) FROM Tabelle);

