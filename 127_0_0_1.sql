-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Ağu 2022, 15:23:36
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lojman_mysql`
--
CREATE DATABASE IF NOT EXISTS `lojman_mysql` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lojman_mysql`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lojmans`
--

CREATE TABLE `lojmans` (
  `address` text CHARACTER SET utf8 NOT NULL,
  `meterSquare` int(11) NOT NULL,
  `direction` tinyint(1) NOT NULL,
  `floor` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `doluBos` tinyint(1) NOT NULL,
  `userID` int(11) NOT NULL,
  `lojmanPoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `lojmans`
--

INSERT INTO `lojmans` (`address`, `meterSquare`, `direction`, `floor`, `id`, `doluBos`, `userID`, `lojmanPoints`) VALUES
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 40, 1, 4, 1, 0, 0, 54),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 50, 0, 2, 2, 0, 0, 52),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 30, 0, 3, 3, 0, 0, 33),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 60, 1, 2, 4, 0, 0, 72),
('İnci Mahallesi 3 sokak NO:5 Kat: 3 (Güney Cephe)', 60, 0, 3, 5, 0, 0, 63),
('Ördek Mahallesi 3 sokak NO:5 Kat: 3 (Güney Cephe)', 40, 0, 3, 6, 0, 0, 43),
('İncirli Mahallesi 7 sokak NO:5 Kat: 5 (Kuzey Cephe)', 40, 1, 5, 7, 0, 0, 55),
('Evka4 Mahallesi 2 sokak NO:2 Kat: 2 (Kuzey Cephe)', 50, 1, 2, 8, 0, 0, 62),
('Gazi Osman Paşa Mahallesi 9 sokak NO:7 Kat: 4 (Güney Cephe)', 40, 0, 5, 9, 0, 0, 45),
('Mevlana Mahallesi 10 sokak NO:9 Kat: 5 (Kuzey Cephe)', 42, 1, 5, 10, 0, 0, 57),
('İnönü Mahallesi 15 sokak NO:12 Kat: 6 (Kuzey Cephe)', 41, 1, 6, 11, 0, 0, 57),
('Yeşilova Mahallesi 7 sokak NO:5 Kat: 5 (Kuzey Cephe)', 40, 1, 5, 12, 0, 0, 55),
('Atatürk Mahallesi 7 sokak NO:5 Kat: 5 (Kuzey Cephe)', 40, 1, 5, 13, 0, 0, 55),
('Erzene Mahallesi 7 sokak NO:16 Kat: 8 (Güney Cephe)', 35, 0, 8, 14, 0, 0, 43);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `secimlojman`
--

CREATE TABLE `secimlojman` (
  `secimLojman1` text NOT NULL,
  `user_name` text NOT NULL,
  `secimID` int(11) NOT NULL,
  `doluBos` tinyint(1) NOT NULL,
  `currentTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `secimlojman`
--

INSERT INTO `secimlojman` (`secimLojman1`, `user_name`, `secimID`, `doluBos`, `currentTime`) VALUES
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'Batuhan2', 1492, 0, '2022-07-06 16:00:43'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'Batuhan2', 1493, 0, '2022-07-06 16:00:43'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'Batuhan2', 1494, 0, '2022-07-06 16:00:43'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'Batuhan2', 1495, 0, '2022-07-06 16:00:43'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'Batuhan2', 1496, 0, '2022-07-06 16:00:43'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'Batuhan2', 1497, 0, '2022-07-06 16:00:43'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'Batuhan2', 1498, 0, '2022-07-06 16:00:43'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'Batuhan2', 1499, 0, '2022-07-06 16:00:43'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'Batuhan2', 1500, 0, '2022-07-06 16:00:43'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'Batuhan2', 1501, 0, '2022-07-06 16:00:43'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'Batuhan2', 1502, 0, '2022-07-06 16:00:43'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'Batuhan2', 1503, 0, '2022-07-06 16:00:43'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'newuser', 1504, 0, '2022-07-06 16:06:00'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'newuser', 1505, 0, '2022-07-06 16:06:00'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'newuser', 1506, 0, '2022-07-06 16:06:00'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'newuser', 1507, 0, '2022-07-06 16:06:00'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'newuser', 1508, 0, '2022-07-06 16:06:00'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'newuser', 1509, 0, '2022-07-06 16:06:00'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'newuser', 1510, 0, '2022-07-06 16:06:00'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'newuser', 1511, 0, '2022-07-06 16:06:00'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'newuser', 1512, 0, '2022-07-06 16:06:00'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'newuser', 1513, 0, '2022-07-06 16:06:00'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'newuser', 1514, 0, '2022-07-06 16:06:00'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'newuser', 1515, 0, '2022-07-06 16:06:00'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'murat2022', 1516, 0, '2022-07-06 16:18:08'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'murat2022', 1517, 0, '2022-07-06 16:18:08'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'murat2022', 1518, 0, '2022-07-06 16:18:08'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'murat2022', 1519, 0, '2022-07-06 16:18:08'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'murat2022', 1520, 0, '2022-07-06 16:18:08'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'murat2022', 1521, 0, '2022-07-06 16:18:08'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'murat2022', 1522, 0, '2022-07-06 16:18:08'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'murat2022', 1523, 0, '2022-07-06 16:18:08'),
('Hürriyet mahallesi 217 sokak no:25 Kat:4 (Kuzey Cephe)', 'murat2022', 1524, 0, '2022-07-06 16:18:08'),
('Kula Mahallesi 12 sokak NO:1 Kat: 2 (Güney Cephe)', 'murat2022', 1525, 0, '2022-07-06 16:18:08'),
('Atatürk Mahallesi 15 sokak NO:3 Kat: 3 (Güney Cephe)', 'murat2022', 1526, 0, '2022-07-06 16:18:08'),
('Muradiye Mahallesi 21 sokak NO:1 Kat: 2 (Kuzey Cephe)', 'murat2022', 1527, 0, '2022-07-06 16:18:08'),
('Ördek Mahallesi 3 sokak NO:5 Kat: 3 (Güney Cephe)', 'emir12', 1528, 0, '2022-07-06 16:18:57'),
('Gazi Osman Paşa Mahallesi 9 sokak NO:7 Kat: 4 (Güney Cephe)', 'emir12', 1529, 0, '2022-07-06 16:18:57'),
('İnönü Mahallesi 15 sokak NO:12 Kat: 6 (Kuzey Cephe)', 'emir12', 1530, 0, '2022-07-06 16:18:57'),
('Erzene Mahallesi 7 sokak NO:16 Kat: 8 (Güney Cephe)', 'emir12', 1531, 0, '2022-07-06 16:18:57'),
('Ördek Mahallesi 3 sokak NO:5 Kat: 3 (Güney Cephe)', 'emir12', 1532, 0, '2022-07-06 16:18:57'),
('Gazi Osman Paşa Mahallesi 9 sokak NO:7 Kat: 4 (Güney Cephe)', 'emir12', 1533, 0, '2022-07-06 16:18:57'),
('İnönü Mahallesi 15 sokak NO:12 Kat: 6 (Kuzey Cephe)', 'emir12', 1534, 0, '2022-07-06 16:18:57'),
('Erzene Mahallesi 7 sokak NO:16 Kat: 8 (Güney Cephe)', 'emir12', 1535, 0, '2022-07-06 16:18:57'),
('Ördek Mahallesi 3 sokak NO:5 Kat: 3 (Güney Cephe)', 'emir12', 1536, 0, '2022-07-06 16:18:57'),
('Gazi Osman Paşa Mahallesi 9 sokak NO:7 Kat: 4 (Güney Cephe)', 'emir12', 1537, 0, '2022-07-06 16:18:57'),
('İnönü Mahallesi 15 sokak NO:12 Kat: 6 (Kuzey Cephe)', 'emir12', 1538, 0, '2022-07-06 16:18:57'),
('Erzene Mahallesi 7 sokak NO:16 Kat: 8 (Güney Cephe)', 'emir12', 1539, 0, '2022-07-06 16:18:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `surname` text CHARACTER SET utf8 NOT NULL,
  `yearofService` int(11) NOT NULL,
  `profession` text CHARACTER SET utf8 NOT NULL,
  `spouseWorking` tinyint(1) NOT NULL,
  `haveCar` tinyint(1) NOT NULL,
  `haveHome` tinyint(1) NOT NULL,
  `usersPoints` int(11) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `secimLojman1` text CHARACTER SET utf16 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `surname`, `yearofService`, `profession`, `spouseWorking`, `haveCar`, `haveHome`, `usersPoints`, `isAdmin`, `secimLojman1`) VALUES
(1, 'KutayDuran', 'kutayduran@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Kutay', 'Duran', 10, 'profesor', 1, 0, 0, 25, 0, ''),
(2, 'emir12', 'emiryilmaz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Emir', 'Yilmaz', 10, 'profesor', 0, 0, 0, 100, 0, ''),
(3, 'Batuhan', 'batuhanok1375@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Batuhan', 'Ok', 3, 'ogretimGorevlisi', 1, 1, 1, -120, 0, ''),
(4, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'admin', 7, 'arastirmaGorevlisi', 1, 1, 1, -10095, 1, ''),
(5, 'Batuhan2', 'batuhan2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Batuhann', 'ok', 15, 'ogretimGorevlisi', 0, 0, 0, 225, 0, ''),
(6, 'newuser', 'newuser@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'new', 'user', 5, 'ogretimGorevlisi', 0, 0, 0, 125, 0, ''),
(7, 'newuser3', 'newuser3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'new ', 'user', 5, 'ogretimGorevlisi', 1, 1, 1, -100, 0, ''),
(8, 'Polat', 'polat@gmail.com', '53678641033c45405db623406a1658d7', 'Polat', 'Safak', 1, 'arastirmaGorevlisi', 0, 0, 0, 70, 0, ''),
(9, 'murat2022', 'murat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Murat', 'Uzun', 5, 'ogretimGorevlisi', 0, 0, 0, 125, 0, '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `lojmans`
--
ALTER TABLE `lojmans`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `secimlojman`
--
ALTER TABLE `secimlojman`
  ADD PRIMARY KEY (`secimID`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `lojmans`
--
ALTER TABLE `lojmans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `secimlojman`
--
ALTER TABLE `secimlojman`
  MODIFY `secimID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1540;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Veritabanı: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Tablo döküm verisi `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lojman_mysql\",\"table\":\"secimlojman\"},{\"db\":\"lojman_mysql\",\"table\":\"users\"},{\"db\":\"lojman_mysql\",\"table\":\"lojmans\"}]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Tablo döküm verisi `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'lojman_mysql', 'users', '{\"sorted_col\":\"`users`.`usersPoints` DESC\"}', '2022-07-06 12:57:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Tablo döküm verisi `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-09 13:22:39', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"tr\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Tablo için indeksler `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Tablo için indeksler `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Tablo için indeksler `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Tablo için indeksler `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Tablo için indeksler `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Tablo için indeksler `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Tablo için indeksler `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Tablo için indeksler `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Tablo için indeksler `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Tablo için indeksler `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Tablo için indeksler `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Tablo için indeksler `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Veritabanı: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
