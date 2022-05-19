-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2019 年 11 月 22 日 07:33
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
-- 資料表結構 `actor`
--

CREATE TABLE `actor` (
  `Actor_id` int(11) NOT NULL,
  `Name_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name_e` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `actor`
--

INSERT INTO `actor` (`Actor_id`, `Name_c`, `Name_e`, `Photo`) VALUES
(1, '傑拉德·巴特勒', 'Gerard Butler', 'a01.jpg'),
(2, '亞倫·艾克哈特', 'Aaron Eckhart', 'a02.jpg'),
(3, '摩根·費里曼', 'Morgan Freeman', 'a03.jpg'),
(4, '安琪拉·貝瑟', 'Angela Bassett', 'a04.jpg'),
(5, '迪倫·麥狄蒙', 'Dylan McDermott', 'a05.jpg'),
(6, '勞勃·狄尼洛', 'Robert De Niro', 'a06.jpg'),
(7, '安·海瑟薇', 'Anne Hathaway', 'a07.jpg'),
(8, '蕾妮·羅素', 'Rene Russo', 'a08.jpg'),
(9, '安德斯·霍姆', 'Anders Holm', 'a09.jpg'),
(10, '安德魯·蘭內斯', 'Andrew Rannells', 'a10.jpg'),
(11, '珊卓·布拉克', 'Sandra Bullock', 'a11.jpg'),
(12, '提姆·麥克羅', 'Tim McGraw', 'a12.jpg'),
(13, '凱西·貝茲', 'Kathy Bates', 'a13.jpg'),
(14, '昆東·亞倫', 'Quinton Aaron', 'a14.jpg'),
(15, '莉莉·柯林斯', 'Lily Collins', 'a15.jpg'),
(16, '麥肯娜·葛瑞絲', 'Mckenna Grace', 'a16.jpg'),
(17, '克里斯·伊凡', 'Chris Evans', 'a17.jpg'),
(18, '琳賽·鄧肯', 'Lindsay Vere Duncan', 'a18.jpg'),
(19, '珍妮·斯蕾特', 'Jenny Slate', 'a19.jpg'),
(20, '奧塔薇亞·史班森', 'Octavia Spencer', 'a20.jpg'),
(21, '丹尼斯·奎德', 'Dennis William Quaid', 'a21.jpg'),
(22, 'K·J·阿帕', 'Keneti James Fitzgerald Apa', 'a22.jpg'),
(23, '布麗特妮·羅伯森', 'Brittany Leanna Robertson', 'a23.jpg'),
(24, '喬許·蓋德', 'Josh Gad', 'a24.jpg'),
(25, '羅根·米勒', 'Logan Miller', 'a25.jpg'),
(26, '馬克·華伯格', 'Mark Wahlberg', 'a26.jpg'),
(27, '喬許·杜哈莫', 'Joshua David Duhamel', 'a27.jpg'),
(28, '安東尼·霍普金斯', 'Anthony Hopkins', 'a28.jpg'),
(29, '史丹利·圖奇', 'Stanley Tucci', 'a29.jpg'),
(30, '蘿拉·哈德克', 'Laura Jane Haddock', 'a30.jpg'),
(31, '吉姆·史特格斯', 'Jim Sturgess', 'a31.jpg'),
(32, '艾比·柯妮許', 'Abbie Cornish', 'a32.jpg'),
(33, '艾德·哈里斯', 'Ed Harris', 'a33.jpg'),
(34, '安迪·賈西亞', 'Andy Garcia', 'a34.jpg'),
(35, '蘇拉·沙瑪', 'Suraj Sharma', 'a35.jpg'),
(36, '伊凡·卡漢', 'Irrfan Khan', 'a36.jpg'),
(37, '塔布', 'Tabu', 'a37.jpg'),
(38, '傑哈·德巴狄厄', 'Gerard Depardieu', 'a38.jpg'),
(39, '黃健瑋', 'Huang Jian-wei', 'a39.jpg'),
(40, '基努·李維', 'Keanu Reeves', 'a40.jpg'),
(41, '瑞秋·懷茲', 'Rachel Hannah Weisz', 'a41.jpg'),
(42, '西亞·李畢福', 'Shia LaBeouf', 'a42.jpg'),
(43, '吉蒙·韓蘇', 'Djimon  Hounsou', 'a43.jpg'),
(44, '蒂妲·絲雲頓', 'Tilda Swinton', 'a44.jpg'),
(45, '布萊德利·庫柏', 'Bradley Cooper', 'a45.jpg'),
(46, '席安娜·米勒', 'Sienna Miller', 'a46.jpg'),
(47, '盧克·格里姆斯', 'Luke Grimes', 'a47.jpg'),
(48, '傑克·麥克道曼', 'Jake McDorman', 'a48.jpg'),
(49, '納維德·奈嘉班', 'Navid Negahban', 'a49.jpg'),
(50, '湯米·李·瓊斯', 'Tommy Lee Jones', 'a50.jpg'),
(51, '雨果·威明', 'Hugo Weaving', 'a51.jpg'),
(52, '海莉·艾特沃', 'Hayley Elizabeth Atwell', 'a52.jpg'),
(53, '賽巴斯汀·史坦', 'Sebastian Stan', 'a53.jpg'),
(54, '安迪·瑟克斯', 'Andy Serkis', 'a54.jpg'),
(55, '茱蒂吉兒', 'Judy Greer', 'a55.jpg'),
(56, '伍迪哈里遜', 'Woody Harrelson', 'a56.jpg'),
(57, '瓦昆菲尼克斯', 'Joaquin Phoenix', 'a57.jpg'),
(58, '勞勃狄尼洛', 'Robert De Niro', 'a58.jpg'),
(59, '希亞溫漢', 'Shea Whigham', 'a59.jpg'),
(60, '法蘭西絲康諾', 'Frances Conroy', 'a60.jpg'),
(61, '威爾史密斯', 'Will Smith', 'a61.jpg'),
(62, '瑪麗伊莉莎白文斯蒂德', 'Mary Elizabeth Winstead', 'a62.jpg'),
(63, '克里夫歐文', 'Clive Owen', 'a63.jpg'),
(64, '伊莉莎白摩絲', 'Elisabeth Moss', 'a64.jpg'),
(65, '奧立佛傑森柯恩', 'Oliver Jackson-Cohen', 'a65.jpg'),
(66, '絲托姆瑞德', 'Storm Reid', 'a66.jpg'),
(67, '歐帝斯哈吉', 'Aldis Hodge', 'a67.jpg'),
(68, '哈莉特黛爾', 'Harriet Dyer', 'a68.jpg'),
(69, '安娜坎卓克', 'Anna Kendrick', 'a69.jpg'),
(70, '班艾佛列克', 'Ben Affleck', 'a70.jpg'),
(71, 'JK西蒙斯', 'J.K. Simmons', 'a71.jpg'),
(72, '安娜坎卓克', 'Anna Kendrick', 'a72.jpg'),
(73, '喬治克隆尼', 'George Clooney', 'a73.jpg'),
(74, '安潔莉娜裘莉', 'Angelina Jolie', 'a74.jpg'),
(75, '布萊恩克萊斯頓', 'Bryan Cranston', 'a75.jpg'),
(76, '達斯汀霍夫曼', 'Dustin Hoffman', 'a76.jpg'),
(77, '成龍', 'Jackie Chan', 'a77.jpg'),
(78, '巨石強森', 'Dwayne Johnson', 'a78.jpg'),
(79, '凡妮莎柯比', 'Vanessa Kirby', 'a79.jpg'),
(80, '傑森史塔森', 'Jason Statham', 'a80.jpg'),
(81, '伊卓瑞斯艾巴', 'Idris Elba', 'a81.jpg'),
(82, '艾迪馬森', 'Eddie Marsan', 'a82.jpg'),
(83, '尼古拉斯·達格斯托', 'Nicholas D\'Agosto', 'a83.jpg'),
(84, '麥爾斯·費雪', 'Miles Fisher', 'a84.jpg'),
(85, '賈桂琳·麥伊恩斯·伍德', 'Jacqueline MacInnes Wood', 'a85.jpg'),
(86, 'P·J·拜恩', 'P. J. Byrne', 'a86.jpg'),
(87, '大衛·柯屈納', 'David Koechner', 'a87.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`Actor_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `actor`
--
ALTER TABLE `actor`
  MODIFY `Actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
