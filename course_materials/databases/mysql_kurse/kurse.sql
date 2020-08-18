-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Aug 2020 um 12:02
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `kurse`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbdozent`
--

CREATE TABLE `tbdozent` (
  `DID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Beschaeftigungsbeginn` date DEFAULT NULL,
  `Stundensatz` float DEFAULT NULL,
  `Firma` char(50) DEFAULT NULL,
  `Titel` char(50) DEFAULT NULL,
  `Qualifikationen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbdozent`
--

INSERT INTO `tbdozent` (`DID`, `PID`, `Beschaeftigungsbeginn`, `Stundensatz`, `Firma`, `Titel`, `Qualifikationen`) VALUES
(812, 1, '2003-07-01', 17, 'selbstständig', 'Informatiker', 'Word, Windows, Datenbanken'),
(815, 17, '2002-01-01', 15, 'selbstständig', 'IT-Kaufmann', 'Office, Datenbanken, Netzwerke'),
(821, 6, '2005-09-15', 13, 'Dreher KG', 'Meister', 'CNC-Steuerungen'),
(833, 26, '2003-08-01', 14, 'Pensionär', 'Mathematiker', 'Windows, Word'),
(834, 2, '2001-01-01', 15, 'Paulsen GmbH', 'Industriekaufmann', 'Windows, Rechnungswesen');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbkurs`
--

CREATE TABLE `tbkurs` (
  `KID` char(10) NOT NULL,
  `Kurskennung` char(50) NOT NULL,
  `KTHID` int(11) NOT NULL,
  `KursdauerStunden` int(11) DEFAULT NULL,
  `Kursbeginn` date DEFAULT NULL,
  `Kursende` date DEFAULT NULL,
  `Zertifikat` char(50) DEFAULT NULL,
  `Gebuehr` float DEFAULT NULL,
  `Ustpflichtig` char(1) DEFAULT NULL,
  `DID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbkurs`
--

INSERT INTO `tbkurs` (`KID`, `Kurskennung`, `KTHID`, `KursdauerStunden`, `Kursbeginn`, `Kursende`, `Zertifikat`, `Gebuehr`, `Ustpflichtig`, `DID`) VALUES
('CE17', 'Celle17-Word', 4, 40, '2012-04-23', '2012-04-27', 'eigen', 280, 'J', 833),
('CE20', 'Celle20-Word', 4, 40, '2012-07-09', '2012-07-13', 'eigen', 280, 'J', 812),
('CE23', 'Celle23-Access', 5, 36, '2012-08-06', '2012-08-10', 'eigen', 350, 'N', 812),
('CE24', 'Celle24-Access', 7, 40, '2012-08-13', '2012-08-17', 'eigen', 400, 'N', 812),
('H89', 'Hannover89-Access', 5, 32, '2012-07-09', '2012-07-13', 'eigen', 350, 'N', 812),
('H90', 'Hannover90-Windows', 1, 18, '2012-07-16', '2012-07-18', 'kein', 120, 'J', 834),
('H91', 'Hannover91-Windows', 2, 18, '2012-07-23', '2012-07-25', 'kein', 120, 'J', 834);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbkursbesuche`
--

CREATE TABLE `tbkursbesuche` (
  `KBID` int(11) NOT NULL,
  `KTID` int(11) NOT NULL,
  `KID` char(10) NOT NULL,
  `Fehltage` tinyint(4) DEFAULT 0,
  `Zeugnis` char(1) DEFAULT 'N',
  `Selbstzahler` char(1) DEFAULT 'J',
  `Zahlweise` enum('Gutschein','Bar','Überweisung') NOT NULL DEFAULT 'Bar',
  `Rabatt` float DEFAULT 0,
  `GezahlterBetrag` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbkursbesuche`
--

INSERT INTO `tbkursbesuche` (`KBID`, `KTID`, `KID`, `Fehltage`, `Zeugnis`, `Selbstzahler`, `Zahlweise`, `Rabatt`, `GezahlterBetrag`) VALUES
(310, 25, 'CE17', 0, 'J', 'J', 'Überweisung', 20, 260),
(312, 4, 'CE24', 0, 'N', 'N', 'Gutschein', 100, 250),
(314, 4, 'CE17', 0, 'J', 'N', 'Gutschein', 0, 280),
(315, 5, 'CE17', 0, 'J', 'N', 'Gutschein', 0, 280),
(354, 34, 'H90', 1, 'N', 'J', 'Überweisung', 20, 80),
(361, 9, 'H90', 0, 'N', 'N', 'Gutschein', 0, 120),
(412, 4, 'CE23', 2, 'N', 'N', 'Gutschein', 0, 350),
(413, 5, 'CE23', 0, 'N', 'J', 'Überweisung', 100, 50),
(415, 15, 'CE23', 5, 'N', 'J', 'Bar', 100, 250),
(416, 10, 'CE23', 0, 'N', 'N', 'Gutschein', 0, 350),
(418, 31, 'CE23', 1, 'N', 'N', 'Gutschein', 0, 350),
(419, 32, 'CE23', 0, 'N', 'J', 'Überweisung', 50, 300),
(420, 24, 'CE23', 2, 'N', 'J', 'Bar', 0, 350),
(421, 37, 'CE23', 8, 'N', 'J', 'Überweisung', 150, 50),
(423, 10, 'CE24', 0, 'N', 'J', 'Bar', 100, 0),
(432, 15, 'CE24', 0, 'N', 'J', 'Bar', 100, 0),
(438, 11, 'CE24', 0, 'N', 'N', 'Gutschein', 0, 350),
(442, 23, 'CE24', 0, 'N', 'J', 'Überweisung', 50, 300);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbkursthema`
--

CREATE TABLE `tbkursthema` (
  `KTHID` int(11) NOT NULL,
  `Kursthema` varchar(255) NOT NULL,
  `Kursbeschreibung` varchar(255) DEFAULT NULL,
  `Kursdemo` char(5) DEFAULT NULL,
  `DauerPlan` int(11) DEFAULT NULL,
  `Voraussetzung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbkursthema`
--

INSERT INTO `tbkursthema` (`KTHID`, `Kursthema`, `Kursbeschreibung`, `Kursdemo`, `DauerPlan`, `Voraussetzung`) VALUES
(1, 'Einstieg mit Windows', 'Windows bietet die Grundlage für alle modernen und anwenderfreundlichen Programme. Der Kurs führt in die Arbeit mit Windows ein und wendet sich insbesondere an PC-Einsteiger.', '', 20, NULL),
(2, 'Windows für Fortgeschrittene', 'Der Kurs wendet sich an PC-Benutzer, die schon etwas Erfahrung mit Windows haben. Der Explorer, Dateisysteme und der Grundaufbau von Fenstrn spielen eine besondere Rolle', '', 20, 1),
(3, 'Ordnung im Dateisystem', 'Wie schaffe ich Ordnung auf dem PC? Wie können Programme und Daten gesucht, verschoben und gelöscht werden. Wie können Verknüpfungen genutzt werden.', '', 8, 2),
(4, 'Word I', 'Einstieg in die Textverabeitung mit Word. Grundlegende Funktionen, Formatierung, Absätze, Aufzählungen und Nummerierungen', '', 40, 2),
(5, 'Access I', 'Einstieg in das Datenbankmanagmentsystem Access. Tabellen und einfache Abfragen', '', 40, 2),
(6, 'Excel I', 'Einstieg in die Tabellenkalkulation mit Excel. Grundfunktionen, Tabellenblätter erstellen, formatieren und drucken.', '', 40, 2),
(7, 'Access II', 'Vertiefung der Arbeit mit MS Access. Komplexe Abfragen und Änderungen in den Datenbeständen.', '', 40, 5),
(8, 'Datenbankentwurf', 'Entwurf relationaler Datenbanken und Umsetzung in MS Access', '', 80, 7),
(9, 'VBA-Datenbankprogrammierung', 'Programmierung von Anwendungen auf der Basis von MS Access', '', 80, 7),
(10, 'Word II', 'Vertiefung des Umgangs mit Word. Mehrspaltige Formate, Felder und Funktionen, Serienbriefe', '', 40, 4),
(11, 'Excel II', 'Vertiefung des Umgangs mit Excel, Funktionen einschließlich WENN-Funktion', '', 40, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tbperson`
--

CREATE TABLE `tbperson` (
  `PID` int(11) NOT NULL,
  `Familienname` varchar(50) NOT NULL,
  `Vorname` varchar(50) DEFAULT NULL,
  `PLZ` char(5) DEFAULT NULL,
  `Strasse` varchar(50) DEFAULT NULL,
  `Ort` varchar(50) DEFAULT 'Celle',
  `Geburtsdatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `tbperson`
--

INSERT INTO `tbperson` (`PID`, `Familienname`, `Vorname`, `PLZ`, `Strasse`, `Ort`, `Geburtsdatum`) VALUES
(1, 'Weiss', 'Peter', '30529', 'Palmstraße 6', 'Hannover', '1963-11-07'),
(2, 'Bucz', 'Susanne', '30531', 'Heinestraße 23', 'Hannover', '1976-04-06'),
(4, 'Karmann', 'Thomas', '29227', 'Trift 28', 'Celle', '1954-08-04'),
(5, 'Klötzer', 'Karl', '29221', 'Bahnhofstraße 2', 'Celle', '1971-03-13'),
(6, 'Weiss', 'Karin', '30529', 'Palmstraße 6', 'Hannover', '1962-10-05'),
(7, 'Weiss', 'Peter', '38134', 'Glanweg 4', 'Braunschweig', '1974-03-02'),
(8, 'Meier', 'Kathrin', '38154', 'Welfenallee 23', 'Braunschweig', '1981-05-03'),
(9, 'Schmidt', 'Karl', '30529', 'Lavesallee 23', 'Hannover', '1949-06-25'),
(10, 'Müller', 'Claudia', '29596', 'In den Fuhren 12', 'Breitenhees', NULL),
(11, 'Lisewski', 'Bernd', '30890', 'Roggenkamp 10', 'Barsinghausen', '1960-06-06'),
(15, 'Martens', 'Melanie', '29221', 'Horstweg 258', 'Celle', '1911-02-17'),
(17, 'Schlachter', 'Dieter', '29227', 'Mondhagen 43', 'Celle', '1961-02-02'),
(23, 'Peredy', 'Helmut', '29221', 'Mauernstraße 2', 'Celle', '1956-02-23'),
(24, 'Ruppert', 'Nicola', '29301', 'Welfenallee 23', 'Bergen', '1962-02-25'),
(25, 'Sander', NULL, '29223', 'Marxallee 12', 'Celle', '1953-02-05'),
(26, 'Cromberg', 'Jörg', '38152', 'Nordring 13', 'Braunschweig', '1991-06-07'),
(31, 'Schulze', 'Tanja', '29308', 'Berliner Ring 23', 'Winsen', '1992-11-09'),
(32, 'Winter', 'Petra', '29320', 'Immenhoop 51', 'Hermannsburg', '1989-12-30'),
(34, 'Plate', 'Ulrich', '30529', 'Gutenberggasse 5', 'Hannover', '1986-12-02'),
(37, 'Magerkurth', 'Melissa', '29336', 'Am Tümpel 3', 'Nienhagen', '1951-09-04');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `tbdozent`
--
ALTER TABLE `tbdozent`
  ADD PRIMARY KEY (`DID`);

--
-- Indizes für die Tabelle `tbkurs`
--
ALTER TABLE `tbkurs`
  ADD PRIMARY KEY (`KID`);

--
-- Indizes für die Tabelle `tbkursbesuche`
--
ALTER TABLE `tbkursbesuche`
  ADD PRIMARY KEY (`KBID`);

--
-- Indizes für die Tabelle `tbkursthema`
--
ALTER TABLE `tbkursthema`
  ADD PRIMARY KEY (`KTHID`);

--
-- Indizes für die Tabelle `tbperson`
--
ALTER TABLE `tbperson`
  ADD PRIMARY KEY (`PID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
