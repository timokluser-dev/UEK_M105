-- BENUTZER ERSTELLEN : Direkt über PHPMyadmin:
CREATE USER 'Harald'@'127.0.0.1' IDENTIFIED VIA mysql_native_password USING '***';
GRANT USAGE ON *.* TO 'Harald'@'127.0.0.1' 
REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;


-- Rechte auf eine Datenbank setzten
GRANT SELECT, INSERT, UPDATE, DELETE ON `uk\_adressen`.* TO 'Harald'@'127.0.0.1';


------- USER per Script, Schritt für Schritt - Anleitung

CREATE USER HansMuster@localhost IDENTIFIED BY '1234';
SELECT * FROM mysql.user;
DROP USER HansMuster@localhost;
SELECT * FROM mysql.user;

GRANT SELECT, INSERT, UPDATE ON uk_adressen.* TO HansMuster@localhost;

REVOKE ALL PRIVILEGES ON uk_adressen.* FROM HansMuster@localhost;

------ UBUNTU 20.0 mysql-server 07.2020 getestet mhe
CREATE USER kurs@localhost IDENTIFIED BY 'kurs';
GRANT ALL PRIVILEGES ON *.* TO kurs@localhost  WITH GRANT OPTION ;

CREATE USER kurs@% IDENTIFIED BY 'kurs';
GRANT ALL PRIVILEGES ON *.* TO kurs@% WITH GRANT OPTION ;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'YourRootPassword';



-- wenn bei mysql eine tabelle bei User ist
UPDATE user
SET password = PASSWORD('3456')
WHERE User='HansMuster';



UPDATE user
SET user.authentication_string = '3456'
WHERE User='HansMuster';

SET PASSWORD FOR 'ENTER-USER-NAME-HERE'@'localhost' = PASSWORD("newpass");
SET PASSWORD FOR 'debian-sys-maint'@'localhost' = PASSWORD("kurs");


-- wenn bei mysql ein view bei User ist
ALTER USER 'Harald'@'127.0.0.1' IDENTIFIED BY '456789';
