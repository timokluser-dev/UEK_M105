-----------------------------------------*** Uebungen
------Welcher Name hat wie viele Kontakteinträge
 
select nachname, count(fk_adressen_id) as anzahl
From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
GROUP by nachname
Order by anzahl desc;

------Wer hat am meisten Einträge: -> kommt aber eher bei Tag 3 Unterabfragen, vorher kurzer Input liefern (anstelle des SQL eine 2 bei Anzahl verwenden)
------die meisten TN kamen aber selber drauf
------Limit 1 geht nicht, wenn zwei gleich viele haben
 
select nachname, count(fk_adressen_id) as anzahl
From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
GROUP by nachname
having anzahl = (
  select count(fk_adressen_id) as anzahl FROM nummer
  GROUP by fk_adressen_id
  order by anzahl desc
  limit 1 )
Order by anzahl desc;


------Optimaler zu lösen mit all -> wer hat am meisten Einträge
 
select nachname, count(fk_adressen_id) as anzahl
From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
GROUP by nachname
having anzahl >= all(
  select count(fk_adressen_id) as anzahl FROM nummer
  GROUP by fk_adressen_id
  order by anzahl desc
)
Order by anzahl desc;


------Wie viele Namen haben keine Einträge (als zahl)
select count(adresse.id ) as anzahl 
From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
Where nummer.fk_adressen_id is NULL;


------Wie viele Namen haben denn Einträge (als zahl)
------stellen sie die zwei Abfragen zusammen dar mit union
 
select count(adresse.id ) as anzahl From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
Where nummer.fk_adressen_id is NULL
union
select count(adresse.id ) - (select count(adresse.id ) as anzahl From adresse LEFT JOIN nummer
ON adresse.id = nummer.fk_adressen_id
Where nummer.fk_adressen_id is NULL) as anzahl From adresse;
 
------löschen Sie die Weitergabe des Foreign Key
------erstellen Sie Nummern, die zu keiner Adresse gehören
------erstellen Sie einen FULL OUTER JOIN......(Tag 3 Mengenpoarationen, ev. kurzinput liefern)

ALTER TABLE nummer
DROP FOREIGN KEY nummer_ibfk_1
add FOREIGN KEY (fk_adressen_id) REFERENCES adresse (id);

--  ON UPDATE RESTRICT ON DELETE RESTRICT
--  add FOREIGN KEY (fk_adressen_id) REFERENCES adresse (id)
--  ON UPDATE CASCADE ON DELETE CASCADE
 
INSERT INTO nummer(nummer, fk_adressen_id)VALUES('keineAhnung', NULL);
 
--  FULL OUTER JOIN….lösbar mit UNION
SELECT * FROM adresse
LEFT JOIN nummer ON adresse.id = nummer.fk_adressen_id
UNION
SELECT * FROM adresse
RIGHT JOIN nummer ON adresse.id = nummer.fk_adressen_id;


--  FULL OUTER JOIN - bei MySQL mit Union lösbar
Select * From adressen FULL OUTER JOIN plz ON adressen.fk_plz = plz.plz;

----10. Mit UNION geht das…… Teilnehmer sollten das lösen