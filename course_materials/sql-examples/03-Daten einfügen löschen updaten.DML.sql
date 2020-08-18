-- Einzelner INSERT
------------------------------------------------------------------------
INSERT INTO table_name (feld1, feld2) 
VALUES('wert', 0);

-- BULK INSERT
------------------------------------------------------------------------
INSERT INTO table_name (feld1, feld2) 
VALUES('wert1', 0), ('wert2', 0), ('wert3', 0);

INSERT INTO table_name (feld1) SELECT DISTINCT(table1.feld1) FROM table_name as table1;


-- UPDATE
------------------------------------------------------------------------
UPDATE table_name 
SET feld1 = "neuerWert" 
WHERE id = 5;


UPDATE produkt 
SET produkt.name = (
	SELECT db2.name 
	FROM produktdb1 as db2
	WHERE db2.id=produkt.id
);


-- DELETE
------------------------------------------------------------------------
DELETE FROM table_name
WHERE id = 5;