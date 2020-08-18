SET autocommit = 0;
START TRANSACTION;

SELECT * FROM adresse;
INSERT adresse (nachname, Feldx) VALUES('hammer', 1);
SELECT * FROM adresse;

-- ROLLBACK oder COMMIT
ROLLBACK;
SELECT * FROM adresse;