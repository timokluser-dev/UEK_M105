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
-- Datenbank: `artikel`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `anr` int(11) NOT NULL,
  `bezeichnung` varchar(255) NOT NULL,
  `gebinde` float DEFAULT NULL,
  `einheit` varchar(30) DEFAULT NULL,
  `wgknz` int(11) NOT NULL DEFAULT 0,
  `einstandspreis` decimal(6,2) DEFAULT NULL CHECK (`einstandspreis` >= 0),
  `listenpreis` decimal(6,2) DEFAULT NULL CHECK (`listenpreis` >= 0),
  `mwst_art` char(9) NOT NULL DEFAULT 'voll',
  `bestand` int(11) NOT NULL DEFAULT 0 CHECK (`bestand` >= 0),
  `letzte_aenderung` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`anr`, `bezeichnung`, `gebinde`, `einheit`, `wgknz`, `einstandspreis`, `listenpreis`, `mwst_art`, `bestand`, `letzte_aenderung`) VALUES
(1002, 'Universalpapier Standard', 500, 'Blatt', 1, '2.48', '5.99', 'voll', 2000, '2020-08-10 09:31:31'),
(1123, 'Kassenrollen', 1, 'Pack', 1, '0.87', '1.39', 'voll', 300, '2020-08-10 09:31:31'),
(2120, 'Briefumschläge', 1000, 'Stück', 3, '8.45', '13.79', 'voll', 126, '2020-08-10 09:31:31'),
(2132, 'Versandtaschen', 250, 'Stück', 3, '8.45', '13.99', 'voll', 23, '2020-08-10 09:31:31'),
(2231, 'Luftpolstertaschen', 10, 'Stück', 3, '1.02', '1.56', 'voll', 2, '2020-08-10 09:31:31'),
(4323, 'Druck-Kugelschreiber', 1, 'Stück', 4, '0.15', '0.23', 'voll', 389, '2020-08-10 09:31:31'),
(4324, 'Fine-Pen', 1, 'Stück', 4, '0.18', '0.36', 'voll', 231, '2020-08-10 09:31:31'),
(4468, 'Druckbleistift', 1, 'Stück', 4, '0.25', '0.39', 'voll', 490, '2020-08-10 09:31:31'),
(5342, 'Zettelklotz', 250, 'Blatt', 5, '1.89', '3.59', 'voll', 1230, '2020-08-10 09:31:31'),
(5346, 'Notizblöcke', 10, 'Stück', 5, '3.34', '5.44', 'voll', 340, '2020-08-10 09:31:31'),
(5349, 'Collegebock', 1, 'Block', 5, '0.56', '1.59', 'voll', 145, '2020-08-10 09:31:31'),
(6001, 'Standardordner', 1, 'Stück', 6, '1.56', '2.49', 'voll', 1430, '2020-08-10 09:31:31'),
(9056, 'USB-Stick', 2, 'GB', 9, '8.89', '14.99', 'voll', 12, '2020-08-10 09:31:31'),
(9058, 'CD', 10, 'Stück', 9, '2.11', '5.49', 'voll', 342, '2020-08-10 09:31:31'),
(9801, 'Kaffee mild', 1, 'kg', 9, '3.34', '9.99', 'ermässigt', 45, '2020-08-10 09:31:31'),
(9810, 'Menthol weiß', 24, 'Pack', 9, '13.67', '26.99', 'ermässigt', 78, '2020-08-10 09:31:31'),
(9814, 'Gebäck', 2, 'kg', 9, '13.56', '34.99', 'ermässigt', 46, '2020-08-10 09:31:31');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellung`
--

CREATE TABLE `bestellung` (
  `mid` int(11) NOT NULL,
  `bnr` int(11) NOT NULL,
  `kid` varchar(50) NOT NULL,
  `bestelldatum` date NOT NULL,
  `letzte_aenderung` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`mid`, `bnr`, `kid`, `bestelldatum`, `letzte_aenderung`) VALUES
(1, 33, '1', '2011-11-20', '2020-08-10 09:31:47'),
(1, 4711, '2', '2011-11-19', '2020-08-10 09:31:47'),
(1, 4714, '6', '2011-11-19', '2020-08-10 09:31:47'),
(1, 4856, '2', '2011-11-20', '2020-08-10 09:31:47'),
(1, 4857, '6', '2011-11-20', '2020-08-10 09:31:47'),
(1, 4858, '6', '2011-11-21', '2020-08-10 09:31:47'),
(1, 4861, '92', '2011-11-21', '2020-08-10 09:31:47'),
(1, 4862, '10', '2011-11-22', '2020-08-10 09:31:47'),
(1, 4902, '9', '2011-11-21', '2020-08-10 09:31:47'),
(1, 4905, '6', '2011-11-22', '2020-08-10 09:31:47'),
(1, 4906, '2', '2011-11-22', '2020-08-10 09:31:47'),
(1, 4907, '25', '2011-11-22', '2020-08-10 09:31:47'),
(1, 4912, '6', '2011-11-23', '2020-08-10 09:31:47'),
(1, 4913, '25', '2011-11-23', '2020-08-10 09:31:47'),
(1, 4914, '41', '2011-11-23', '2020-08-10 09:31:47'),
(1, 4915, '30', '2011-11-23', '2020-08-10 09:31:47'),
(1, 4916, '31', '2011-11-23', '2020-08-10 09:31:47'),
(1, 4918, '68', '2011-11-23', '2020-08-10 09:31:47'),
(1, 49030, '16', '2011-11-21', '2020-08-10 09:31:47'),
(1, 49032, '9', '2011-11-22', '2020-08-10 09:31:47'),
(2, 12552, '24', '2011-11-19', '2020-08-10 09:31:47'),
(2, 12554, '4', '2011-11-21', '2020-08-10 09:31:47'),
(2, 12556, '40', '2011-11-21', '2020-08-10 09:31:47'),
(2, 12558, '20', '2011-11-21', '2020-08-10 09:31:47'),
(3, 90940, '27', '2011-11-22', '2020-08-10 09:31:47');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestell_position`
--

CREATE TABLE `bestell_position` (
  `mid` int(11) NOT NULL,
  `bnr` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `anr` int(11) NOT NULL,
  `anzahl` int(11) NOT NULL DEFAULT 1,
  `letzte_aenderung` timestamp NOT NULL DEFAULT current_timestamp()
) ;

--
-- Daten für Tabelle `bestell_position`
--

INSERT INTO `bestell_position` (`mid`, `bnr`, `pos`, `anr`, `anzahl`, `letzte_aenderung`) VALUES
(1, 4711, 1, 1002, 10, '2020-08-10 09:31:58'),
(1, 4711, 2, 9801, 5, '2020-08-10 09:31:58'),
(1, 4714, 1, 2120, 2, '2020-08-10 09:31:58'),
(1, 4714, 2, 9058, 10, '2020-08-10 09:31:58'),
(1, 4714, 3, 9056, 1, '2020-08-10 09:31:58'),
(1, 4856, 1, 6001, 10, '2020-08-10 09:31:58'),
(1, 4857, 1, 9801, 5, '2020-08-10 09:31:58'),
(1, 4857, 2, 1002, 10, '2020-08-10 09:31:58'),
(1, 4858, 1, 6001, 25, '2020-08-10 09:31:58'),
(1, 4861, 1, 1123, 10, '2020-08-10 09:31:58'),
(1, 4861, 2, 2132, 100, '2020-08-10 09:31:58'),
(1, 4861, 3, 6001, 10, '2020-08-10 09:31:58'),
(1, 4862, 1, 1002, 10, '2020-08-10 09:31:58'),
(1, 4902, 1, 1002, 25, '2020-08-10 09:31:58'),
(1, 4902, 2, 9058, 3, '2020-08-10 09:31:58'),
(1, 4902, 3, 9814, 5, '2020-08-10 09:31:58'),
(1, 4902, 4, 9801, 2, '2020-08-10 09:31:58'),
(1, 4902, 5, 9056, 1, '2020-08-10 09:31:58'),
(1, 4905, 1, 5342, 3, '2020-08-10 09:31:58'),
(1, 4905, 2, 5346, 10, '2020-08-10 09:31:58'),
(1, 4905, 3, 4324, 20, '2020-08-10 09:31:58'),
(1, 4906, 1, 6001, 100, '2020-08-10 09:31:58'),
(1, 4907, 1, 5349, 10, '2020-08-10 09:31:58'),
(1, 4912, 1, 9801, 10, '2020-08-10 09:31:58'),
(1, 4912, 2, 9814, 20, '2020-08-10 09:31:58'),
(1, 4912, 3, 9058, 2, '2020-08-10 09:31:58'),
(1, 4912, 4, 5342, 5, '2020-08-10 09:31:58'),
(1, 4912, 5, 4468, 10, '2020-08-10 09:31:58'),
(1, 4912, 6, 4324, 10, '2020-08-10 09:31:58'),
(1, 4913, 1, 5349, 20, '2020-08-10 09:31:58'),
(1, 4914, 1, 9058, 10, '2020-08-10 09:31:58'),
(1, 4915, 1, 2132, 1, '2020-08-10 09:31:58'),
(1, 4915, 2, 2231, 10, '2020-08-10 09:31:58'),
(1, 4915, 3, 4323, 25, '2020-08-10 09:31:58'),
(1, 4916, 1, 9801, 5, '2020-08-10 09:31:58'),
(1, 4916, 2, 9814, 5, '2020-08-10 09:31:58'),
(1, 4918, 1, 6001, 40, '2020-08-10 09:31:58'),
(1, 4918, 2, 4324, 20, '2020-08-10 09:31:58'),
(1, 4918, 3, 4468, 20, '2020-08-10 09:31:58'),
(1, 4918, 4, 5346, 30, '2020-08-10 09:31:58'),
(1, 4918, 5, 5342, 10, '2020-08-10 09:31:58'),
(1, 4918, 6, 4323, 20, '2020-08-10 09:31:58'),
(1, 49030, 1, 1002, 10, '2020-08-10 09:31:58'),
(1, 49030, 2, 4324, 10, '2020-08-10 09:31:58'),
(1, 49032, 1, 9056, 10, '2020-08-10 09:31:58'),
(1, 49032, 2, 9058, 20, '2020-08-10 09:31:58'),
(1, 49032, 3, 1002, 10, '2020-08-10 09:31:58'),
(2, 12552, 1, 1002, 20, '2020-08-10 09:31:58'),
(2, 12552, 2, 2120, 2, '2020-08-10 09:31:58'),
(2, 12554, 1, 6001, 25, '2020-08-10 09:31:58'),
(2, 12554, 2, 1002, 10, '2020-08-10 09:31:58'),
(2, 12554, 3, 4324, 25, '2020-08-10 09:31:58'),
(2, 12556, 1, 6001, 10, '2020-08-10 09:31:58'),
(2, 12558, 1, 6001, 30, '2020-08-10 09:31:58'),
(2, 12558, 2, 9056, 5, '2020-08-10 09:31:58'),
(2, 12558, 3, 5349, 10, '2020-08-10 09:31:58'),
(2, 12558, 4, 5342, 20, '2020-08-10 09:31:58'),
(2, 12558, 5, 4468, 10, '2020-08-10 09:31:58'),
(2, 12558, 6, 5346, 3, '2020-08-10 09:31:58'),
(2, 12558, 7, 2132, 2, '2020-08-10 09:31:58'),
(3, 90940, 1, 2132, 5, '2020-08-10 09:31:58'),
(3, 90940, 2, 6001, 10, '2020-08-10 09:31:58'),
(3, 90940, 3, 5342, 5, '2020-08-10 09:31:58');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE `kunden` (
  `mid` int(11) NOT NULL,
  `kid` varchar(50) NOT NULL,
  `firma` varchar(59) DEFAULT NULL,
  `anrede` varchar(10) DEFAULT NULL,
  `nachname` varchar(50) NOT NULL,
  `vorname` varchar(30) DEFAULT NULL,
  `rechnungsadresse` varchar(255) NOT NULL DEFAULT 'wie Anschrift',
  `strasse` varchar(50) DEFAULT NULL,
  `PLZ` char(5) DEFAULT NULL,
  `ort` varchar(50) NOT NULL DEFAULT 'Celle',
  `land` varchar(50) DEFAULT 'Deutschland',
  `geworbenvon` int(11) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  `letzte_aenderung` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`mid`, `kid`, `firma`, `anrede`, `nachname`, `vorname`, `rechnungsadresse`, `strasse`, `PLZ`, `ort`, `land`, `geworbenvon`, `geburtsdatum`, `letzte_aenderung`) VALUES
(1, '1', '', 'Frau', 'Sibum', 'Jutta', 'wie Anschrift', 'Hannoversche Straße 6', '29223', 'Celle', 'Deutschland', NULL, '1965-04-02', '2020-08-10 09:31:14'),
(1, '10', 'Wilhelm Kuhl KG', 'Herr', 'Kuhl', 'Rolf', 'wie Anschrift', 'Am Wasser 29', '26683', 'Strücklingen', 'Deutschland', NULL, '1956-02-09', '2020-08-10 09:31:14'),
(1, '12', '', 'Frau', 'Kohlmeier', 'Gerda', 'wie Anschrift', 'Goetheweg 5', '29331', 'Lachendorf', 'Deutschland', NULL, '1939-03-22', '2020-08-10 09:31:14'),
(1, '15', '', 'Frau', 'Mathes', 'Gundula', 'wie Anschrift', 'Schillergasse 8', '29331', 'Lachendorf', 'Deutschland', NULL, '1934-05-01', '2020-08-10 09:31:14'),
(1, '16', 'Kuhlmann & Sohn', 'Herr', 'Meyer', 'Helmut', 'wie Anschrift', 'Sonnenweg 13', '29223', 'Celle', 'Deutschland', 2, '1956-09-11', '2020-08-10 09:31:14'),
(1, '17', '', 'Frau', 'Michel', 'Annette', 'wie Anschrift', 'Apfelweg 8', '29225', 'Celle', 'Deutschland', NULL, '1946-04-20', '2020-08-10 09:31:14'),
(1, '18', '', 'Herr', 'Timme', 'Ulf', 'wie Anschrift', 'Geschwister-Scholl-Straße 117', '29223', 'Celle', 'Deutschland', NULL, '1971-12-23', '2020-08-10 09:31:14'),
(1, '19', '', 'Herr', 'Thiermann', 'Peter', 'wie Anschrift', 'Trinkhorstweg 3', '29223', 'Celle', 'Deutschland', 42, '1981-12-27', '2020-08-10 09:31:14'),
(1, '2', 'Ewald Kuhn KG', 'Herr', 'Schöller', 'Jürgen', 'wie Anschrift', 'Windmühlenstraße 12', '29233', 'Celle', 'Deutschland', 18, '1943-07-04', '2020-08-10 09:31:14'),
(1, '21', 'Buchholz', 'Herr', 'Tisson', 'Thomas', 'wie Anschrift', 'Neustadt 17', '29221', 'Celle', 'Deutschland', 2, '1976-04-29', '2020-08-10 09:31:14'),
(1, '22', '', 'Herr', 'Kohlbausch', 'Hans', 'wie Anschrift', 'Prinzengarten 5', '29223', 'Celle', 'Deutschland', NULL, '1956-06-02', '2020-08-10 09:31:14'),
(1, '23', '', 'Herr', 'Überholz', 'Matthias', 'wie Anschrift', 'Lindenstraße 4', '29227', 'Celle', 'Deutschland', 42, '1985-08-05', '2020-08-10 09:31:14'),
(1, '25', 'Clean GmbH', 'Frau', 'Havenstein', 'Katrin', 'wie Anschrift', 'Lauensteinplatz 8', '29225', 'Celle', 'Deutschland', 42, '1986-03-03', '2020-08-10 09:31:14'),
(1, '28', '', 'Frau', 'Hoopmann', 'Kirsten', 'wie Anschrift', 'Akazienweg 45', '29221', 'Celle', 'Deutschland', 42, '1987-02-27', '2020-08-10 09:31:14'),
(1, '3', '', 'Herr', 'Bit', 'Hans-Joachim', 'wie Anschrift', 'Lange Straße 15', '29320', 'Hermannsburg', 'Deutschland', NULL, '1968-06-30', '2020-08-10 09:31:14'),
(1, '30', '', 'Herr', 'Meyer', 'Ewald', 'wie Anschrift', 'Am Weinberg 15', '20221', 'Celle', 'Deutschland', NULL, '1958-11-21', '2020-08-10 09:31:14'),
(1, '31', '', 'Herr', 'Meyer', 'Helmut', 'wie Anschrift', 'Sonnenweg 13', '29223', 'Celle', 'Deutschland', NULL, '1956-09-11', '2020-08-10 09:31:14'),
(1, '32', '', 'Herr', 'Maier', 'Siegfried', 'wie Anschrift', 'Kampweg 3', '29303', 'Bergen', 'Deutschland', NULL, '1960-07-01', '2020-08-10 09:31:14'),
(1, '34', 'Bohlen & Co-', 'Frau', 'Pfaff', 'Else', 'wie Anschrift', 'Örtzestraße 5', '29303', 'Bergen', 'Deutschland', NULL, '1937-12-19', '2020-08-10 09:31:14'),
(1, '38', '', 'Herr', 'Förster', 'Ernst-Jürgen', 'wie Anschrift', 'Achtergarten 1', '29348', 'Eschede', 'Deutschland', NULL, '1946-10-13', '2020-08-10 09:31:14'),
(1, '39', '', 'Herr', 'Dreyer', 'Manfred', 'wie Anschrift', 'Thieleweg 3', '29348', 'Eschede', 'Deutschland', 18, '1962-03-23', '2020-08-10 09:31:14'),
(1, '41', '', 'Herr', 'Wieckenberg', 'Peter', 'wie Anschrift', 'Wieseweg 21', '29328', 'Faßberg', 'Deutschland', NULL, '1956-04-06', '2020-08-10 09:31:14'),
(1, '43', '', 'Frau', 'Krenz', 'Ingrid', 'wie Anschrift', 'Ericaweg 17', '29313', 'Hambühren', 'Deutschland', NULL, '1951-09-09', '2020-08-10 09:31:14'),
(1, '45', '', 'Herr', 'Leu', 'Walter', 'wie Anschrift', 'Birkenweg 9', '29320', 'Hermannsburg', 'Deutschland', NULL, '1962-08-01', '2020-08-10 09:31:14'),
(1, '46', '', 'Herr', 'Guhr', 'Bernd', 'wie Anschrift', 'Heidberg 3', '29320', 'Hermannsburg', 'Deutschland', NULL, '1948-05-23', '2020-08-10 09:31:14'),
(1, '47', '', 'Herr', 'Gertendorf', 'Rainer', 'wie Anschrift', 'Lotharstraße 49', '29320', 'Hermannsburg', 'Deutschland', 2, '1989-01-03', '2020-08-10 09:31:14'),
(1, '48', '', 'Herr', 'Böger', 'Werner', 'wie Anschrift', 'Willighausen 34', '29320', 'Hermannsburg', 'Deutschland', 42, '1961-02-22', '2020-08-10 09:31:14'),
(1, '49', 'Fabian Bullerich', 'Herr', 'Behn', 'Heinrich', 'wie Anschrift', 'Sägenförth 13', '29320', 'Hermannsburg', 'Deutschland', NULL, '1968-02-23', '2020-08-10 09:31:14'),
(1, '5', '', 'Herr', 'Thole', 'Eckhard', 'wie Anschrift', 'Breslauer Straße 15', '26203', 'Wardenburg', 'Deutschland', NULL, '1969-11-23', '2020-08-10 09:31:14'),
(1, '50', '', 'Frau', 'Bauer', 'Tatjana', 'wie Anschrift', 'Dicksbarg 1', '29320', 'Hermannsburg', 'Deutschland', NULL, '1987-09-24', '2020-08-10 09:31:14'),
(1, '51', '', 'Frau', 'Suchy', 'Jessica', 'wie Anschrift', 'Unter den Eichen 7', '29320', 'Hermannsburg', 'Deutschland', NULL, '1951-12-12', '2020-08-10 09:31:14'),
(1, '52', '', 'Herr', 'Siegmann', 'Rudolf', 'wie Anschrift', 'Ericaweg 17', '29320', 'Hermannsburg', 'Deutschland', NULL, '1979-05-10', '2020-08-10 09:31:14'),
(1, '53', 'Rein & Sohn', 'Herr', 'Schitzke', 'Michael', 'wie Anschrift', 'Alte Gasse 15', '29320', 'Hermannsburg', 'Deutschland', 18, '1983-12-31', '2020-08-10 09:31:14'),
(1, '55', '', 'Herr', 'Tasasche', 'Gunter', 'wie Anschrift', 'Olendorp 6', '29320', 'Hermannsburg', 'Deutschland', NULL, '1941-02-08', '2020-08-10 09:31:14'),
(1, '56', '', 'Herr', 'Grambow', 'Siegfried', 'wie Anschrift', 'Lange Str- 15', '29331', 'Lachendorf', 'Deutschland', NULL, '1942-08-06', '2020-08-10 09:31:14'),
(1, '57', '', 'Herr', 'Mitzke', 'Anton', 'wie Anschrift', 'Kurze Str- 12', '29331', 'Lachendorf', 'Deutschland', NULL, '1954-11-23', '2020-08-10 09:31:14'),
(1, '58', '', 'Frau', 'Dricksen', 'Anja', 'wie Anschrift', 'Alte Grenze 7', '29364', 'Langlingen', 'Deutschland', 70, '1972-05-08', '2020-08-10 09:31:14'),
(1, '59', '', 'Frau', 'Müller', 'Anna', 'wie Anschrift', 'Alte Grenze 7', '29225', 'Celle', 'Deutschland', NULL, '2029-03-17', '2020-08-10 09:31:14'),
(1, '6', 'Hobelix OHG', 'Herr', 'Falk', 'Hermann', 'wie Anschrift', 'Lange Laube 2', '30230', 'Hannover', 'Deutschland', 18, '1952-02-05', '2020-08-10 09:31:14'),
(1, '61', '', 'Herr', 'Jahnke', 'Peter', 'wie Anschrift', 'Hauptstraße 22', '29364', 'Langlingen', 'Deutschland', 65, '1965-08-15', '2020-08-10 09:31:14'),
(1, '64', '', 'Herr', 'Reisinger', 'Thomas', 'wie Anschrift', 'Drosselweg 23', '29336', 'Nienhagen', 'Deutschland', NULL, '1981-09-16', '2020-08-10 09:31:14'),
(1, '65', '', 'Herr', 'Tölke', 'Wim', 'wie Anschrift', 'Am Fleitgraben 41', '29336', 'Nienhagen', 'Deutschland', NULL, '1938-06-02', '2020-08-10 09:31:14'),
(1, '66', '', 'Herr', 'Preißler', 'Jan-Peter', 'wie Anschrift', 'Dorfstraße 41', '29336', 'Nienhagen', 'Deutschland', NULL, '1962-06-03', '2020-08-10 09:31:14'),
(1, '67', '', 'Herr', 'Bucco', 'Arnold', 'wie Anschrift', 'Wiesenstraße 13', '29336', 'Nienhagen', 'Deutschland', NULL, '1978-03-05', '2020-08-10 09:31:14'),
(1, '68', '', 'Frau', 'Behrens', 'Cornelia', 'wie Anschrift', 'Maisfeld 32', '29336', 'Nienhagen', 'Deutschland', 70, '1989-04-06', '2020-08-10 09:31:14'),
(1, '69', '', 'Frau', 'Bothe', 'Frieda', 'wie Anschrift', 'Am Bahnhof 3', '29339', 'Wathlingen', 'Deutschland', NULL, '1946-02-04', '2020-08-10 09:31:14'),
(1, '70', '', 'Frau', 'Bühren', 'Tamara', 'wie Anschrift', 'Krümmelweg 1', '29339', 'Wathlingen', 'Deutschland', NULL, '1987-09-07', '2020-08-10 09:31:14'),
(1, '71', '', 'Herr', 'Brase', 'Jan', 'wie Anschrift', 'Sachsenring 3', '29339', 'Wathlingen', 'Deutschland', NULL, '1984-02-01', '2020-08-10 09:31:14'),
(1, '72', '', 'Herr', 'Kolditz', 'Michael', 'wie Anschrift', 'Schaffeld 23', '29342', 'Wienhausen', 'Deutschland', 65, '1978-06-23', '2020-08-10 09:31:14'),
(1, '73', '', 'Herr', 'Bühring', 'Uwe', 'wie Anschrift', 'Schleusenweg 17', '29342', 'Wienhausen', 'Deutschland', NULL, '1961-07-03', '2020-08-10 09:31:14'),
(1, '74', '', 'Herr', 'Eggers', 'Harald', 'wie Anschrift', 'Appelweh 4', '29342', 'Wienhausen', 'Deutschland', NULL, '1969-10-08', '2020-08-10 09:31:14'),
(1, '75', '', 'Herr', 'Büttner', 'Detlef', 'wie Anschrift', 'Dorfstraße 18', '29342', 'Wienhausen', 'Deutschland', NULL, '1958-09-08', '2020-08-10 09:31:14'),
(1, '76', '', 'Frau', 'Luft', 'Carola', 'wie Anschrift', 'Petersweg 20', '29323', 'Wietze', 'Deutschland', NULL, '1986-11-21', '2020-08-10 09:31:14'),
(1, '77', '', '', 'Lehmann', 'Dagmar', 'wie Anschrift', 'Friedrichstraße 12', '29323', 'Wietze', 'Deutschland', 65, '1964-08-20', '2020-08-10 09:31:14'),
(1, '78', '', 'Herr', 'Müller', 'Peter', 'wie Anschrift', 'Am Salzberg 9', '29323', 'Wietze', 'Deutschland', NULL, '1983-12-31', '2020-08-10 09:31:14'),
(1, '81', '', 'Herr', 'Langenbahn', 'Christian', 'wie Anschrift', 'Bremer Weg 17', '29308', 'Winsen', 'Deutschland', NULL, '1967-07-11', '2020-08-10 09:31:14'),
(1, '82', '', 'Herr', 'Elsner', 'Rudolf', 'wie Anschrift', 'Hauptstraße 30', '29308', 'Winsen', 'Deutschland', NULL, '1961-02-21', '2020-08-10 09:31:14'),
(1, '83', '', 'Frau', 'Lüttger', 'Ingrid', 'wie Anschrift', 'Hirschwiese 19', '29308', 'Winsen', 'Deutschland', NULL, '1957-07-13', '2020-08-10 09:31:14'),
(1, '84', '', 'Frau', 'Mohrholz', 'Rosemarie', 'wie Anschrift', 'Poggenteich 31', '29223', 'Celle', 'Deutschland', NULL, '1950-09-05', '2020-08-10 09:31:14'),
(1, '85', '', 'Herr', 'Meyer', 'Werner', 'wie Anschrift', 'Heese 10', '29348', 'Eschede', 'Deutschland', NULL, '1957-04-18', '2020-08-10 09:31:14'),
(1, '86', '', 'Herr', 'Hoffmann', 'Thomas', 'wie Anschrift', 'Heese 10', '29225', 'Celle', 'Deutschland', NULL, '1957-03-13', '2020-08-10 09:31:14'),
(1, '87', '', 'Herr', 'Ammermann', 'Udo', 'wie Anschrift', 'Am Sägewerk 2', '29348', 'Eschede', 'Deutschland', NULL, '1961-02-10', '2020-08-10 09:31:14'),
(1, '89', '', 'Frau', 'Trester', 'Erika', 'wie Anschrift', 'Am Hasenberg 2', '29320', 'Hermannsburg', 'Deutschland', NULL, '1969-08-07', '2020-08-10 09:31:14'),
(1, '9', 'Schütte & Karlsen', 'Frau', 'Karlsen', 'Manuela', 'wie Anschrift', 'Hauptstraße 64', '26132', 'Oldenburg', 'Deutschland', NULL, '1965-07-23', '2020-08-10 09:31:14'),
(1, '90', '', 'Herr', 'Nussbaum', 'Robert', 'wie Anschrift', 'Ostsiedlung 21', '29345', 'Unterlüß', 'Deutschland', NULL, '1948-01-24', '2020-08-10 09:31:14'),
(1, '91', '', 'Herr', 'Mohnbaum', 'Waldemar', 'wie Anschrift', 'Fuchsweg 5', '29345', 'Unterlüß', 'Deutschland', NULL, '1967-07-09', '2020-08-10 09:31:14'),
(1, '92', '', 'Frau', 'Schilling', 'Hildegard', 'wie Anschrift', 'Hermannsbuger Straße 3', '29345', 'Unterlüß', 'Deutschland', NULL, '1937-10-03', '2020-08-10 09:31:14'),
(1, '93', '', 'Frau', 'Schulz', 'Ute', 'wie Anschrift', 'Südsiedlung 12', '29345', 'Unterlüß', 'Deutschland', NULL, '1956-08-19', '2020-08-10 09:31:14'),
(1, '94', 'Schmidt GmbH', 'Frau', 'Schmidt', 'Stephanie', 'wie Anschrift', 'Heidkamp 35', '29331', 'Lachendorf', 'Deutschland', 65, '1961-03-25', '2020-08-10 09:31:14'),
(1, '95', '', 'Herr', 'Seidel', 'Theo', 'wie Anschrift', 'Zugbrückenstraße 13', '29221', 'Celle', 'Deutschland', NULL, '1939-09-06', '2020-08-10 09:31:14'),
(1, '96', '', 'Herr', 'Ruczynski', 'Manfred', 'wie Anschrift', 'Neues Land 14', '29229', 'Celle', 'Deutschland', NULL, '1961-11-23', '2020-08-10 09:31:14'),
(1, '97', '', '', 'Lutz', 'Thomas', 'wie Anschrift', 'Mauernstraße 32', '29221', 'Celle', 'Deutschland', NULL, '1972-06-02', '2020-08-10 09:31:14'),
(1, '98', '', 'Herr', 'Scharenberg', 'Ulrich', 'wie Anschrift', 'Welfenallee 36', '29225', 'Celle', 'Deutschland', NULL, '1963-12-08', '2020-08-10 09:31:14'),
(1, '99', '', 'Herr', 'Schilling', 'Lutz', 'wie Anschrift', 'Alte Grenze 37', '29221', 'Celle', 'Deutschland', NULL, '1971-06-03', '2020-08-10 09:31:14'),
(2, '100', '', 'Frau', 'Nalihn', 'Bettina', 'wie Anschrift', 'Mühlenstraße 4', '29221', 'Celle', 'Deutschland', NULL, '1961-02-12', '2020-08-10 09:31:14'),
(2, '11', '', 'Frau', 'Winter', 'Petra', 'wie Anschrift', 'Immenhoop 51', '29320', 'Hermannsburg', 'Deutschland', NULL, '1989-12-30', '2020-08-10 09:31:14'),
(2, '13', '', '', 'Körber', 'Margarete', 'wie Anschrift', 'Am Rübenberg 19', '29331', 'Lachendorf', 'Deutschland', NULL, '1952-08-02', '2020-08-10 09:31:14'),
(2, '14', '', 'Herr', 'Maischeck', 'Gunter', 'wie Anschrift', 'Marktstraße 3', '29331', 'Lachendorf', 'Deutschland', NULL, '1973-10-31', '2020-08-10 09:31:14'),
(2, '20', '', 'Herr', 'Tiegs', 'Andreas', 'wie Anschrift', 'Oesterleystraße 1', '29225', 'Celle', 'Deutschland', NULL, '1954-02-03', '2020-08-10 09:31:14'),
(2, '24', '', 'Frau', 'Petersen', 'Annemarie', 'wie Anschrift', 'Neustadt 3', '29221', 'Celle', 'Deutschland', NULL, '1934-08-05', '2020-08-10 09:31:14'),
(2, '26', '', 'Herr', 'Sülzer', 'Bernd', 'wie Anschrift', 'Nordweg 27', '29229', 'Celle', 'Deutschland', NULL, '1983-04-15', '2020-08-10 09:31:14'),
(2, '29', '', 'Herr', 'Roberts', 'Oliver', 'wie Anschrift', 'Jägerheide 3', '29227', 'Celle', 'Deutschland', NULL, '1939-03-23', '2020-08-10 09:31:14'),
(2, '33', '', 'Frau', 'Rabiga', 'Annelore', 'wie Anschrift', 'Dorfstraße 17', '29303', 'Bergen', 'Deutschland', NULL, '1951-05-23', '2020-08-10 09:31:14'),
(2, '35', '', 'Frau', 'Pfaff', 'Hertha', 'wie Anschrift', 'Kreuzweg 8', '29303', 'Bergen', 'Deutschland', NULL, '1941-01-12', '2020-08-10 09:31:14'),
(2, '37', '', 'Herr', 'Kramm', 'Heiko', 'wie Anschrift', 'Luxhoop 5', '29303', 'Bergen', 'Deutschland', NULL, '1988-07-07', '2020-08-10 09:31:14'),
(2, '4', 'Franz Koch', 'Frau', 'Lange', 'Rosemarie', 'wie Anschrift', 'Friedrichstraße 28', '26203', 'Wardenburg', 'Deutschland', NULL, '1978-10-31', '2020-08-10 09:31:14'),
(2, '40', '', 'Frau', 'Förster', 'Iris', 'wie Anschrift', 'Salzmoor 11', '29328', 'Faßberg', 'Deutschland', NULL, '1969-06-17', '2020-08-10 09:31:14'),
(2, '44', '', 'Frau', 'Licht', 'Marion', 'wie Anschrift', 'Beethovenstraße 10', '29313', 'Hambühren', 'Deutschland', NULL, '1961-04-03', '2020-08-10 09:31:14'),
(2, '54', '', 'Herr', 'Skraole', 'Dietmar', 'wie Anschrift', 'Georg-Haccius-Straße 12', '29320', 'Hermannsburg', 'Deutschland', NULL, '1961-07-03', '2020-08-10 09:31:14'),
(2, '62', '', 'Herr', 'Franck', 'Bruno', 'wie Anschrift', 'Schwarzer Weg 19', '29336', 'Nienhagen', 'Deutschland', NULL, '1946-03-09', '2020-08-10 09:31:14'),
(2, '7', '', 'Frau', 'Kurz', 'Claudia', 'wie Anschrift', 'Tulpenstraße 25', '26169', 'Friesoythe', 'Deutschland', NULL, '1956-04-27', '2020-08-10 09:31:14'),
(2, '79', '', 'Herr', 'Meier', 'Horst', 'wie Anschrift', 'Buschweg 7', '29308', 'Winsen', 'Deutschland', NULL, '1953-05-06', '2020-08-10 09:31:14'),
(2, '80', '', 'Herr', 'Meier', 'Jan-Peter', 'wie Anschrift', 'Bahnhostraße 11', '29308', 'Winsen', 'Deutschland', NULL, '1956-08-02', '2020-08-10 09:31:14'),
(2, '88', '', 'Frau', 'Schröder', 'Birgit', 'wie Anschrift', 'Harmsstraße 41', '29320', 'Hermannsburg', 'Deutschland', NULL, '1967-03-03', '2020-08-10 09:31:14'),
(3, '27', '', 'Frau', 'Jakobi', 'Irmgard', 'wie Anschrift', 'Vogelbeerweg 3', '29223', 'Celle', 'Deutschland', NULL, '1962-04-03', '2020-08-10 09:31:14'),
(3, '36', '', 'Frau', 'Mengel', 'Margrit', 'wie Anschrift', 'Rosenstraße 8', '29303', 'Bergen', 'Deutschland', NULL, '1949-09-30', '2020-08-10 09:31:14'),
(3, '42', '', 'Herr', 'Stechert', 'Otto', 'wie Anschrift', 'Am Gehäge 2', '29328', 'Faßberg', 'Deutschland', 2, '1931-04-26', '2020-08-10 09:31:14'),
(3, '60', '', 'Frau', 'Kluge', 'Jacqueline', 'wie Anschrift', 'Hauptstr- 19', '29364', 'Langlingen', 'Deutschland', NULL, '1991-08-23', '2020-08-10 09:31:14'),
(3, '63', '', 'Herr', 'Lahn', 'Wilhelm', 'wie Anschrift', 'Dorfstraße 9', '29336', 'Nienhagen', 'Deutschland', NULL, '1930-05-09', '2020-08-10 09:31:14'),
(3, '8', '', 'Herr', 'Karl', 'Oliver', 'wie Anschrift', 'Lange Straße 15', '29331', 'Lachendorf', 'Deutschland', NULL, '1964-07-18', '2020-08-10 09:31:14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mwst`
--

CREATE TABLE `mwst` (
  `mwst_art` char(9) NOT NULL DEFAULT 'kein',
  `mwst_satz` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `mwst`
--

INSERT INTO `mwst` (`mwst_art`, `mwst_satz`) VALUES
('ermässigt', 7),
('kein', 0),
('voll', 19);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warengruppe`
--

CREATE TABLE `warengruppe` (
  `kennziffer` int(11) NOT NULL,
  `warengruppe` varchar(255) NOT NULL DEFAULT 'unbekannt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `warengruppe`
--

INSERT INTO `warengruppe` (`kennziffer`, `warengruppe`) VALUES
(1, 'Papier- und Papierprodukte'),
(2, 'Drucksachen'),
(3, 'Versandausstattung'),
(4, 'Schreibmittel'),
(5, 'Formulare, Blöcke, Klebe- und Haftmittel'),
(6, 'Ordnungsmittel'),
(7, 'Büromöbel'),
(8, 'Präsentationsmittel'),
(9, 'EDV und sonstige Büroausstattung');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`anr`);

--
-- Indizes für die Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`mid`,`bnr`),
  ADD UNIQUE KEY `kid` (`kid`,`bestelldatum`),
  ADD KEY `FKBESTKUND` (`mid`,`kid`);

--
-- Indizes für die Tabelle `bestell_position`
--
ALTER TABLE `bestell_position`
  ADD PRIMARY KEY (`mid`,`bnr`,`pos`);

--
-- Indizes für die Tabelle `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`mid`,`kid`);

--
-- Indizes für die Tabelle `mwst`
--
ALTER TABLE `mwst`
  ADD PRIMARY KEY (`mwst_art`);

--
-- Indizes für die Tabelle `warengruppe`
--
ALTER TABLE `warengruppe`
  ADD PRIMARY KEY (`kennziffer`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD CONSTRAINT `FKBESTKUND` FOREIGN KEY (`mid`,`kid`) REFERENCES `kunden` (`mid`, `kid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `bestell_position`
--
ALTER TABLE `bestell_position`
  ADD CONSTRAINT `FKBESTPOSBEST` FOREIGN KEY (`mid`,`bnr`) REFERENCES `bestellung` (`mid`, `bnr`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
