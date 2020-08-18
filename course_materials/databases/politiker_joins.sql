/* INNER JOIN - Ein inner join liefert im Prinzip die Schnittmenge aus beiden Grundmengen. 
Für das konstruierte Beispiel aus der Politik würden also alle Minister ausgegeben werden, 
welche gleichzeitig SPD-Politiker sind bzw. waren. */

SELECT * FROM minister
INNER JOIN spd_politiker ON minister.name = spd_politiker.name;

/* In diesem Fall kann man das gewünschte Ergebnis noch etwas einfacher erhalten, 
jedoch behandelt dieser Artikel das Verhalten von Joins…! */

/* LEFT (OUTER) JOIN - Ein left outer join liefert als Ergebnis alle Datensätze der ersten Tabelle 
sowie alle passenden Datensätze von Tabelle 2. Hier werden somit alle Minister ausgegeben, 
als Ergänzung erscheinen die Daten aus der SPD-Politiker-Tabelle, falls ein Minister dort enthalten sein sollte.*/

SELECT * FROM minister
LEFT OUTER JOIN
spd_politiker 
	ON minister.name = spd_politiker.name;

/* Häufig verwende ich diese left outer joins, um Datensätze zu finden, welche nicht in der anderen Tabelle vorhanden sind. 
Hierfür kann man die SQL-Abfrage leicht modifizieren – das Ergebnis ist in diesem Falle alle Nicht-SPD-Minister:*/

SELECT * FROM minister
LEFT OUTER JOIN
spd_politiker 
	ON minister.name = spd_politiker.name;
		WHERE spd_politiker.id IS NULL

/* RIGHT (OUTER) JOIN - Ein right outer join funktioniert eigentlich genauso wie ein left outer join liefert 
als Ergebnis alle Datensätze der zweiten Tabelle sowie alle passenden Datensätze von Tabelle 1. 
Hier werden somit alle SPD-Politiker ausgegeben, als Ergänzung erscheinen die Daten aus der Minister-Tabelle, 
falls der Politiker dort auch ein Amt bekleidet. */

SELECT * FROM minister
RIGHT OUTER JOIN spd_politiker 
	ON minister.name = spd_politiker.name;

/* Auch mit dem right outer joins kann man wunderbar die IS NULL-Eigenschaft verwenden, um Datensätze zu finden, 
welche nicht in der anderen Tabelle vorhanden sind.*/

/* FULL OUTER JOIN - Ein full outer join gibt eigentlich alle Datensätze von Tabelle A und Tabelle B aus, 
wobei die Schnittmenge zusammengefasst wird. Ein paar RDBMS, wie z.B. auch MySQL, haben keine direkte Unterstützung 
des full outer join, jedoch kann man ohne viel Umstand SQL-Konstrukte basteln, die dies imitieren – schließlich ist 
das ja nichts anderes wie eine Zusammenfassung des left outer join und des right outer join. Hier ein Beispiel 
eines Workarounds für MySQL mit Verwendung von union all:*/

SELECT * FROM minister
LEFT OUTER JOIN spd_politiker 
	ON minister.name = spd_politiker.name
UNION ALL
SELECT * FROM minister
RIGHT OUTER JOIN spd_politiker 
	ON minister.name = spd_politiker.name
	WHERE minister.name is null;