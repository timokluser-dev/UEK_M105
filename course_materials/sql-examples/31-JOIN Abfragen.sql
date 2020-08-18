-- Name eintragen ohne Nummer 
    INSERT INTO adresse(nachname)VALUES('franz');

-- Einfache Abfrage (leider wird Franz nicht angezeigt) 
-- Verständnisfrage, ob klar ist warum
	select * From adresse, nummer
	where adresse.id = nummer.fk_adressen_id;
	
-- Mit JOIN wird Franz nicht angezeigt
	select * from
	adresse JOIN nummer
	on adresse.id = nummer.fk_adressen_id;
	
-- Mit LEFT JOIN ist Franz drin - Verständnisfrage, ob klar ist warum
	select * From adresse LEFT JOIN nummer
	ON adresse.id = nummer.fk_adressen_id;

-- Mit RIGHT JOIN ist Franz nicht drin - Verständnisfrage, ob klar ist warum
	select * From adresse RIGHT JOIN nummer
	ON adresse.id = nummer.fk_adressen_id;
	
-- Nur Franz anzeigen lassen /* nur franz anzeigen lassen*/
	select * from
	adresse LEFT JOIN nummer
	on adresse.id = nummer.fk_adressen_id
	WHERE nummer.nummer IS NULL;
