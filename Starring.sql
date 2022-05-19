-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2019 年 11 月 22 日 07:34
-- 伺服器版本： 10.3.16-MariaDB
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `id11556974_contact`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Starring`
--

CREATE TABLE `Starring` (
  `Starring` int(11) NOT NULL COMMENT '主索引',
  `Movie_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影編號',
  `Actor_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '演員編號',
  `Roles` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '飾演角色'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `Starring`
--

INSERT INTO `Starring` (`Starring`, `Movie_id`, `Actor_id`, `Roles`) VALUES
(1, '1', '1', 'Mike Banning'),
(2, '1', '2', 'Benjamin Asher'),
(3, '1', '3', 'Allan Trumbull'),
(4, '1', '4', 'Lynne Jacobs'),
(5, '1', '5', 'Dave Forbes'),
(6, '2', '6', 'Ben Whittaker'),
(7, '2', '7', 'Jules Ostin'),
(8, '2', '8', 'Fiona Farwell'),
(9, '2', '9', 'Matt'),
(10, '2', '10', 'Cameron'),
(11, '3', '11', 'Leigh Anne Tuohy'),
(12, '3', '12', 'Sean Tuohy'),
(13, '3', '13', 'Miss Sue'),
(14, '3', '14', 'Michael Oher'),
(15, '3', '15', 'Collins Tuohy'),
(16, '4', '16', 'Mary Adler'),
(17, '4', '17', 'Frank Adler'),
(18, '4', '18', 'Evelyn Adler'),
(19, '4', '19', 'Bonnie Stevenson'),
(20, '4', '20', 'Roberta Taylor'),
(21, '5', '21', '伊森'),
(22, '5', '22', '年輕時的伊森'),
(23, '5', '23', '年輕時的漢娜'),
(24, '5', '24', '貝利'),
(25, '5', '25', '托德'),
(26, '6', '26', 'Cade Yeager'),
(27, '6', '27', 'William Lennox'),
(28, '6', '28', 'Edmund Burton'),
(29, '6', '29', 'Merlin Ambrosius'),
(30, '6', '30', 'Viviane Wembly'),
(31, '7', '1', 'Mike Banning'),
(32, '7', '31', 'Max Lawson'),
(33, '7', '32', 'Sarah Wilson'),
(34, '7', '33', 'Leonard Dekkom'),
(35, '7', '34', 'Andrew Palma'),
(36, '8', '35', '少年16歲時的Pi'),
(37, '8', '36', '成年時的Pi'),
(38, '8', '37', 'Gita Patel'),
(39, '8', '38', 'the Cook'),
(40, '8', '39', '船員'),
(41, '9', '40', 'John Constantine'),
(42, '9', '41', 'Angela Dodson'),
(43, '9', '42', 'Chas Kramer'),
(44, '9', '43', 'Papa Midnite'),
(45, '9', '44', 'Gabriel'),
(46, '10', '45', 'Chris Kyle'),
(47, '10', '46', 'Taya Kyle'),
(48, '10', '47', 'Marc Lee'),
(49, '10', '48', 'Ryan Biggles Job'),
(50, '10', '49', 'Sheikh Al-Obodi'),
(51, '11', '50', '美國隊長'),
(52, '11', '51', '紅骷髏'),
(53, '11', '52', '佩姬·卡特'),
(54, '11', '53', 'Bucky Barnes'),
(55, '11', '29', ' 艾斯金'),
(56, '12', '54', 'Caesar'),
(57, '12', '55', 'Cornelia'),
(58, '12', '56', 'Colonel J. Wesley McCullough'),
(59, '13', '57', 'Joker'),
(60, '13', '58', 'Murray Franklin'),
(61, '13', '59', 'Det. Burke'),
(62, '13', '60', 'Penny Fleck'),
(63, '14', '61', 'Henry Brogan'),
(64, '14', '62', 'Danny Zakarweski'),
(65, '14', '63', 'Clayton Clay Varris'),
(66, '15', '64', 'Cecilia Kass'),
(67, '15', '65', 'Adrian Griffin'),
(68, '15', '66', 'Sydney'),
(69, '15', '67', 'James'),
(70, '15', '68', 'Cecilia\'s sister'),
(71, '16', '69', 'Dana Cummings'),
(72, '16', '70', 'Christian Chris Wolff'),
(73, '16', '71', 'Ray King'),
(74, '17', '72', '娜塔莉·肯納'),
(75, '17', '73', '萊恩·賓漢'),
(76, '18', '74', '悍嬌虎'),
(77, '18', '75', '阿波的生父'),
(78, '18', '76', '功夫大師'),
(79, '18', '77', '猴王'),
(80, '19', '78', 'Luke Hobbs'),
(81, '19', '79', 'Hattie Shaw'),
(82, '19', '80', 'Deckard Shaw'),
(83, '19', '81', 'Brixton Lore'),
(84, '19', '82', 'Professor Andreiko'),
(85, '20', '83', 'Sam Lawton'),
(86, '20', '84', 'Peter Friedkin'),
(87, '20', '85', 'Olivia Castle'),
(88, '20', '86', 'Isaac Palmer'),
(89, '20', '87', 'Dennis Lapman');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Starring`
--
ALTER TABLE `Starring`
  ADD PRIMARY KEY (`Starring`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
