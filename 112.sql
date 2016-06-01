-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.23 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных kol
DROP DATABASE IF EXISTS `kol`;
CREATE DATABASE IF NOT EXISTS `kol` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kol`;


-- Дамп структуры для таблица kol.kollek
DROP TABLE IF EXISTS `kollek`;
CREATE TABLE IF NOT EXISTS `kollek` (
  `idKoll` int(11) NOT NULL AUTO_INCREMENT,
  `Strana` varchar(50) DEFAULT NULL,
  `Adres` varchar(100) DEFAULT NULL,
  `Tel` int(50) unsigned DEFAULT NULL,
  `Familiya` varchar(50) NOT NULL DEFAULT '0',
  `Imya` varchar(50) NOT NULL DEFAULT '0',
  `Nal_redkix_monet` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idKoll`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы kol.kollek: ~19 rows (приблизительно)
/*!40000 ALTER TABLE `kollek` DISABLE KEYS */;
INSERT INTO `kollek` (`idKoll`, `Strana`, `Adres`, `Tel`, `Familiya`, `Imya`, `Nal_redkix_monet`) VALUES
	(2, 'Russia', 'g. Batyrevo, ul. Sadovaya, dom 54, kvartira 57', 897396095, 'Klychev', 'Vseslav', 'No'),
	(3, '\r\nKazakhstan', 'g. Bagrationovo, ul. Bakunina kvartira 194', 960984485, 'Stain', 'Rodion', 'No'),
	(4, 'Ukraine', 'g. Severnoe, ul. Teatral\'naya, dom 52, kvartira 264', 137104090, 'Dyrbov', 'Aleksej', 'Yes'),
	(5, 'Belarus', 'g. Serpuhov, ul. Bartenevskaya, dom 71, kvartira 270', 969567485, 'Sobakov', 'Evgraf', 'Yes'),
	(6, 'Russia', 'g. Satka, ul. Bakuninskaya, dom 32, kvartira 149', 785418689, 'Mikov', 'Trofim', 'No'),
	(7, 'Ukraine', 'g. Fedotovo, ul. Bakunina, dom 24, kvartira 44', 560322364, 'Vahrushev', 'Akim', 'No'),
	(8, 'Belarus', 'Vyshnij Volochek, ul. Bazovskaya, dom 97, kvartira 95', 642321894, 'Nalivkin', 'Matvej', 'No'),
	(9, 'Belarus', 'g. Krymsk, ul. Bartenevskaya, dom 67, kvartira 289', 581293935, 'Pastuh', 'Agafon', 'No'),
	(10, 'Kazakhstan', 'g. SHerbakul\', ul. Serzhanta Elizarova, dom 94, kvartira 193', 283881684, 'Kachaev', 'Avgust', 'No'),
	(11, 'Kazakhstan', 'g. Pervoural\'sk, ul. ZHyoltikovskaya 1-ya, dom 5, kvartira 290', 950702632, 'Kachaev', 'Daniil', 'Yes'),
	(12, 'Belarus', 'g. Pankrushiha, ul. Avangardnaya, dom 37, kvartira 262', 415892995, 'Garin', 'Rodion', 'No'),
	(13, 'Russia', 'g. Ovrazh\'e, ul. Zarechnaya, dom 70, kvartira 114', 526077935, 'Okrokverckhov', 'Daniil', 'No'),
	(14, 'Belarus', 'g. Alapaevsk, ul. Bakinskaya, dom 88, kvartira 263', 154533691, 'CHkalov', 'Vikentij', 'No'),
	(15, 'Russia', 'g. Ivanovo, ul. Baltijskaya, dom 43, kvartira 34', 178519394, 'Sedov', 'Mihej', 'No'),
	(16, 'Kazakhstan', 'g. Berezovskij, ul. Bebelya, dom 64, kvartira 177', 614647983, 'Evdokimov', 'Artur', 'No'),
	(17, 'Ukraine', 'g. Staroyur\'evo, ul. Aviatorov, dom 50, kvartira 139', 221585435, 'Andryushin', 'Roman', 'No'),
	(18, 'Belarus', 'g. Aban, ul. Gercena, dom 23, kvartira 46', 896522456, 'Mazhov', 'Vissarion', 'No'),
	(19, 'Belarus', 'g. Starica, ul. Bakunina, dom 62, kvartira 248', 473262531, 'SHushalev', 'Kirill', 'No'),
	(20, 'Kazakhstan', ' g. Aromashevo, ul. Bartenevskaya, dom 3, kvartira 56', 603177966, 'SHatohin', 'Konstantin', 'No');
/*!40000 ALTER TABLE `kollek` ENABLE KEYS */;


-- Дамп структуры для таблица kol.kollekmonet
DROP TABLE IF EXISTS `kollekmonet`;
CREATE TABLE IF NOT EXISTS `kollekmonet` (
  `idKoll` int(11) DEFAULT NULL,
  `idMonet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы kol.kollekmonet: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `kollekmonet` DISABLE KEYS */;
INSERT INTO `kollekmonet` (`idKoll`, `idMonet`) VALUES
	(1, 3),
	(20, 2),
	(4, 6),
	(4, 5),
	(7, 6),
	(8, 9),
	(5, 19),
	(17, 15),
	(10, 12),
	(9, 11),
	(13, 16),
	(15, 8),
	(17, 17),
	(13, 5),
	(8, 4),
	(2, 4),
	(6, 8),
	(10, 11),
	(14, 16),
	(15, 1);
/*!40000 ALTER TABLE `kollekmonet` ENABLE KEYS */;


-- Дамп структуры для таблица kol.monet
DROP TABLE IF EXISTS `monet`;
CREATE TABLE IF NOT EXISTS `monet` (
  `idMonet` int(11) NOT NULL AUTO_INCREMENT,
  `Strana` varchar(50) DEFAULT NULL,
  `Nominal` int(11) DEFAULT NULL,
  `God_vipyska` int(11) DEFAULT NULL,
  `Kol_vipy_monet` int(11) DEFAULT NULL,
  `Osobennosti` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMonet`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы kol.monet: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `monet` DISABLE KEYS */;
INSERT INTO `monet` (`idMonet`, `Strana`, `Nominal`, `God_vipyska`, `Kol_vipy_monet`, `Osobennosti`) VALUES
	(1, 'Belarus', 5, 1999, 300, 'Bez znaka monetnogo dvora '),
	(2, 'Russia', 5, 2000, 400, 'Sankt-Peterburgskij monetnyj dvor '),
	(3, 'Ukraine', 5, 1998, 450, 'Monetnyj dvor: Bez oboznacheniya '),
	(4, 'Belarus', 2, 2000, 504, 'Magnitnaya moneta '),
	(5, 'Belarus', 100, 2002, 495, 'Nemagnitnaya moneta '),
	(6, 'Belarus', 10, 2005, 333, 'Bimetallicheskaya moneta '),
	(7, 'Belarus', 2, 1997, 788, 'Ne magnitnaya'),
	(8, 'Russia', 10, 2001, 473, 'Nemagnitnaya moneta '),
	(9, 'Russia', 5, 2002, 485, 'Magnitnaya moneta '),
	(10, 'Russia', 1, 2001, 703, 'Leningradskij monetnyj dvor'),
	(11, 'Ukraine', 2, 2002, 320, 'Bimetallicheskaya moneta '),
	(12, 'Ukraine', 20, 1997, 378, 'Bimetallicheskaya moneta '),
	(13, 'Ukraine', 40, 2005, 560, 'Ne magnitnaya'),
	(14, 'Russia', 1, 1999, 628, 'Magnitnaya moneta '),
	(15, 'Russia', 2, 1997, 611, 'Leningradskij monetnyj dvor'),
	(16, 'Russia', 20, 2005, 801, 'Nemagnitnaya moneta '),
	(17, 'Belarus', 1, 2005, 662, 'Monetnyj dvor: Bez oboznacheniya'),
	(18, 'Belarus', 10, 2000, 583, 'Monetnyj dvor: Bez oboznacheniya'),
	(19, 'Belarus', 50, 2002, 397, 'Monetnyj dvor: Bez oboznacheniya'),
	(20, 'Ukraine', 1, 1999, 985, 'Ne magnitnaya');
/*!40000 ALTER TABLE `monet` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
