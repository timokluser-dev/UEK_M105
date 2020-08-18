-- Tabelle verändern
ALTER TABLE tabelle2 MODIFY COLUMN myname VARCHAR(200);

-- FK hinzufügen
ALTER TABLE tabelle2 ADD Feldx INT;
ALTER TABLE tabelle2 ADD FOREIGN KEY MyForreigenKeyName (Feldx) REFERENCES tabelle2(id) 
ON UPDATE CASCADE ON DELETE CASCADE;

-- FK löschen
ALTER TABLE tabelle2 DROP FOREIGN KEY MyForreigenKeyName;
ALTER TABLE tabelle2 DROP Feldx;