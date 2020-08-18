-- WHERE mit 2 Tabellen
SELECT * FROM tabelle1, tabelle2 WHERE tabelle1.id = tabelle2.id;
-- Daten gruppieren (GROUP BY)
SELECT * FROM Tabelle GROUP BY Feld;
-- Daten nach Auswertung filtern (HAVING)
SELECT * FROM Tabelle GROUP BY Feld HAVING id=5;

-- LEFT
Select 
LEFT(nachname, 1) AS test,
count(*) as anzahl
from kunden
GROUP BY test
ORDER BY test;

-- UNION
SELECT 'A..' AS nachn, COUNT(*) AS anzahl  FROM Kunden WHERE nachname LIKE 'A%'
UNION
SELECT 'B..' AS nachn, COUNT(*) AS anzahl  FROM Kunden WHERE nachname LIKE 'B%'
UNION
SELECT 'C..' AS nachn, COUNT(*) AS anzahl  FROM Kunden WHERE nachname LIKE 'C%';



-- Mengenoperatoren (UNION, MINUS, INTERSECT)
-- MINUS und INTERSECT funktionieren nicht mit Maria DB
SELECT * FROM Tabelle
UNION
SELECT * FROM Tabelle2;

-- Variablen und Rechnen mit Datum
set @heute = CURDATE();
set @von = DATE_ADD(@von, INTERVAL '0 18' DAY_HOUR);
set @von = DATE_ADD(@von, INTERVAL '00:00' MINUTE_SECOND);


-- ALL, ANY LIKE
USE artikel;
Select * from kunden 
Where kunden.nachname LIKE '%R%';

Select * from adresse 
Where nachname = ALL (
	Select nachname FROM adresse Where nachname = 'URS'
);
Select * from adresse 
Where nachname = ANY (
	Select nachname FROM adresse Where nachname LIKE '%R%'
);

-- irgendwelche Datensätze (einer Liste - IN)
SELECT * FROM artikel
WHERE einstandspreis = ANY (
	SELECT einstandspreis FROM artikel
	WHERE einstandspreis > 8);

-- ALLE Datensätze enthalten den einstandspreis
SELECT * FROM artikel
WHERE einstandspreis = ALL (
	SELECT einstandspreis FROM artikel
	WHERE einstandspreis = 8.45);
