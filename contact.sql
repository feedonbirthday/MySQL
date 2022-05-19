-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2019-11-14 06:19:48
-- 伺服器版本: 10.1.30-MariaDB
-- PHP 版本： 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `clvsc41118101`
--

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `Movie_id` int(11) NOT NULL COMMENT '電影編號',
  `Title_c` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影名稱(中文)',
  `Title_e` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影名稱(英文)',
  `Director` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影導演',
  `Genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影類型',
  `Rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影分級',
  `Star` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影評星(分)',
  `Length` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '電影片長',
  `Synopsis` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '劇情簡介',
  `Screenings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '放映狀態',
  `Youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '預告片',
  `Poster` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '海報(圖片)',
  `Awards` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主要得獎'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `contact`
--

INSERT INTO `contact` (`Movie_id`, `Title_c`, `Title_e`, `Director`, `Genre`, `Rating`, `Star`, `Length`, `Synopsis`, `Screenings`, `Youtube`, `Poster`, `Awards`) VALUES
(1, '全面攻佔：倒數救援', 'Olympus Has Fallen', ' 安東尼法奎(Antoine Fuqua)', '驚悚片/動作片', 'rating_15', 'star_4', '2 小時 1 分鐘', '美國政府從不與恐怖份子談判，當恐怖份子入侵的目的並非談判，美國政府應如何面對？！\n\n美國白宮特勤人員麥克班寧，一日隨同阿瑟總統以及第一夫人，前往一正式晚宴。禮車打滑失控，半掛在懸崖邊搖晃著。班寧只有足夠的時間救出總統先生。隨著第一夫人的不幸身亡，班寧離開了總統府，轉調到財政部工作。\n\n7月5日，總統在接待南韓來的外交人員時，竟遭到攻擊並被恐怖分子佔領，白宮將陷入前所未見的危機當中。麥克班寧在混亂當中，趁機躲進白宮，並展開只有他一個人的救援行動。', 'Null', 'XF8h3hOGBJM', '946_29737702_M', 'Null');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Movie_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `contact`
--
ALTER TABLE `contact`
  MODIFY `Movie_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '電影編號', AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
