
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE mydb;

USE mydb;

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_code` char(3) NOT NULL,
  `city_name` char(10) NOT NULL,
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('CHH','彰化縣'),('HCC','新竹市'),('HCH','新竹縣'),('HLH','花蓮縣'),('ILH','宜蘭縣'),('JYC','嘉義市'),('JYH','嘉義縣'),('KAO','高雄市'),('KLC','基隆市'),('MLH','苗栗縣'),('NTH','南投縣'),('PHH','澎湖縣'),('PTH','屏東縣'),('TCC','台中市'),('TNC','台南市'),('TPE','台北市'),('TPH','新北市'),('TTH','台東縣'),('TYH','桃園市'),('YLH','雲林縣');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealers` (
  `distr_num` int(11) NOT NULL AUTO_INCREMENT,
  `boss_name` char(16) NOT NULL,
  `company` char(20) NOT NULL,
  `city_code` char(3) NOT NULL,
  `address` char(30) NOT NULL,
  `phone` char(12) NOT NULL,
  PRIMARY KEY (`distr_num`),
  KEY `city_code` (`city_code`),
  CONSTRAINT `dealers_ibfk_1` FOREIGN KEY (`city_code`) REFERENCES `city` (`city_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES (1001,'李明憲','貝特電腦','TPE','基隆路2段13號之3','0229178129'),(1002,'李進中','迅美科技','TPE','復興南路2段83巷12號','0223588450'),(1003,'張江悅','亞都電腦','TPE','南京東路1段25巷9號','0229826543'),(1004,'張勝明','志欣資訊','TPE','木新路3段310巷12弄8號之4','0227816590'),(1005,'張鴻文','傑印電腦','TPE','南京東路4段50號之3','0227111029'),(1006,'林文淵','進和資訊','TPE','民權東路6段207號','0229312954'),(1007,'林宏明','皓遠科技','TPE','興隆路2段203巷11號','0227738793'),(1008,'林金勇','新州電腦','TPE','師大路184號','0223675806'),(1009,'周志發','意佳科技','TPE','忠孝東路1段85號之12','0227817894'),(1010,'周宏祥','華興資訊','TPE','長春路172巷8號','0225422348'),(1011,'周聖林','長佑實業','TPE','莊敬路235巷42號','0228673214'),(1012,'趙正武','寄異國際','TPE','敦化北路185號5樓','0229315389'),(1013,'錢英仁','保華工業','TPE','和平東路2段121巷3號','0229872154'),(1014,'孫一鳴','萬眾資訊','TPE','金華街86號','0223814033'),(1015,'吳榮輝','建功電腦','TPE','仁愛路2段71號5樓','0225439875'),(1016,'鄭明典','恆祥科技','TPE','吉林路142之1號6樓','0227219204'),(1017,'王忠偉','啟先電腦','TPE','杭州南路1段27號','0228503310'),(1018,'秦祖和','永餘資訊','TPE','長安東路2段81號','0226549812'),(1019,'陳崇剛','文泰科技','TPH','羅斯福路3段200號12樓','0225642319'),(1020,'陳信德','天河資訊','TYH','治平路2段97號','036549812'),(1021,'江仁義','南陽實業','ILH','富強路2段14巷34號','033456129'),(1022,'項立明','松雨資訊','TPH','新莊路2段54號2樓','0227868567'),(1023,'曾嘉文','怡佳企業','HCH','建功路34號4樓','033917534'),(1024,'黃孟正','常毅資訊','TNC','大學路54號3樓','062732853'),(1025,'邱振民','文林貿易','KAO','中山路1段87號5樓','077269876'),(1026,'洪仁中','明湖科技','TCC','建國北路一段110號','042876436'),(1027,'飽漢宗','長甫企業','CHH','南莊路3段189號12樓','027166697');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `num` char(6) DEFAULT NULL,
  `name` char(8) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `address` char(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('000009','黃怡仁','M','1961-10-07',43,'台南市善化區茄拔里100之3號'),('000007','陳美美','F','1975-02-06',29,'高雄市前鎮區200號'),('000012','陳秀惠','F','1974-11-20',30,'台北市南京東路一段218號'),('000004','黃淑珍','F','1973-08-29',31,'台南市麻豆區中正路59號'),('000014','黃玉瑛','F','1972-12-10',32,'台南市善化區民權路89號'),('000010','王曉菁','F','1966-10-17',38,'高雄市中正四路112號'),('000019','王耿豪','M','1971-02-03',33,'北市大直街102號3樓'),('000002','陳美鳳','F','1971-05-28',33,'台南市白河區三明路192號'),('000015','王簡淑玲','F','1959-10-19',45,'台南市南化區中正路9號'),('000013','李英王','M','1970-07-26',34,'台南市仁德區勝利路116號'),('000020','鄭淑蘭','F','1969-09-18',35,'新北市中和區中山路177號'),('000017','李玉龍','M','1968-01-30',36,'台北市內湖區內湖路二段5號'),('000005','王五郎','M','1966-11-06',38,'南投縣北港村3號'),('000001','張大田','M','1972-06-23',32,'台南市中西區中正路18號之2'),('000016','高陳淑敏','F','1964-06-16',40,'台北市華陰街10號'),('000006','張玉明','M','1964-07-25',40,'高雄市前鎮區28之1號'),('000003','李王育','M','1956-02-28',48,'台南市安南區府前路90巷2號'),('000008','李小隆','M','1961-09-09',43,'台北市士林區小北街21號'),('000011','張玉風','M','1957-04-19',47,'高雄市路竹區民權路89號'),('000018','廖元瑛','M','1973-03-30',31,'北市天母富貴一路5巷8號');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `order_num` int(11) NOT NULL,
  `item_num` int(11) NOT NULL,
  `prod_num` int(11) NOT NULL,
  `supp_code` char(3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  PRIMARY KEY (`order_num`,`item_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (101,1,1,'HSC',1,2500),(102,1,4,'HFT',1,9600),(102,2,3,'HFT',1,2400),(103,1,9,'CFC',1,200),(103,2,8,'CFC',1,8400),(103,3,5,'CFC',5,1000),(104,1,1,'HSC',1,2500),(104,2,2,'HSC',1,1260),(104,3,3,'HFT',1,2400),(104,4,1,'HFT',1,8000),(105,1,5,'WCC',10,28000),(105,2,5,'CFC',10,19800),(105,3,6,'HHT',1,360),(105,4,6,'CFC',1,80),(106,1,5,'HHT',5,1250),(106,2,5,'WCC',5,1400),(106,3,5,'CFC',5,1000),(106,4,6,'HHT',1,360),(106,5,6,'CFC',1,480),(107,1,1,'HSC',1,2500),(107,2,2,'HSC',1,1260),(107,3,3,'HFT',1,2400),(107,4,4,'HSC',1,4800),(107,5,7,'HSC',1,6000),(108,1,8,'CFC',1,8400),(108,2,9,'CFC',5,1000),(109,1,1,'HHT',1,4500),(110,1,6,'HHT',1,360),(110,2,6,'CFC',1,480),(111,1,5,'CFC',5,1000),(112,1,8,'CFC',1,840),(112,2,9,'CFC',10,200),(113,1,5,'CFC',1,200),(113,2,6,'HHT',1,360),(113,3,6,'CFC',1,480),(113,4,9,'CFC',2,400),(114,1,4,'HFT',1,960),(114,2,4,'HSC',1,480),(115,1,1,'HHT',1,450),(116,1,101,'FYC',2,136),(116,2,109,'PRC',3,90),(116,3,110,'HFT',1,308),(116,4,114,'PRC',1,120),(117,1,201,'NKC',4,152),(117,2,202,'HKC',1,230),(117,3,301,'FYC',2,204),(118,1,307,'PRC',2,500),(118,2,302,'HKC',3,15),(118,3,110,'PRC',1,236),(118,4,5,'HHT',4,100),(118,5,304,'HSC',1,280);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `membera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membera` (
  `num` char(6) DEFAULT NULL,
  `name` char(8) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `address` char(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `membera` WRITE;
/*!40000 ALTER TABLE `membera` DISABLE KEYS */;
INSERT INTO `membera` VALUES ('000009','黃怡仁','M','台南市善化區茄拔里100之3號'),('000007','陳美美','F','高雄市前鎮區200號'),('000012','陳秀惠','F','台北市南京東路一段218號'),('000004','黃淑珍','F','台南市麻豆區中正路59號'),('000014','黃玉瑛','F','台南市善化區民權路89號'),('000010','王曉菁','F','高雄市中正四路112號');
/*!40000 ALTER TABLE `membera` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `memberb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberb` (
  `num` char(6) DEFAULT NULL,
  `name` char(8) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `address` char(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `memberb` WRITE;
/*!40000 ALTER TABLE `memberb` DISABLE KEYS */;
INSERT INTO `memberb` VALUES ('000004','黃淑珍','F','台南市麻豆區中正路59號'),('000014','黃玉瑛','F','台南市善化區民權路89號'),('000010','王曉菁','F','高雄市中正四路112號'),('000019','張耿豪','M','北市大直街102號3樓'),('000002','陳美鳳','F','台南市中西區永福路一段192號');
/*!40000 ALTER TABLE `memberb` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_num` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `distr_num` int(11) NOT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_ok` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`order_num`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (101,'2012-05-20',1004,'2012-07-22','Y'),(102,'2012-05-21',1001,'2012-06-03','Y'),(103,'2012-05-22',1004,'2012-06-14','Y'),(104,'2012-05-22',1006,NULL,'N'),(105,'2012-05-24',1016,'2012-06-21','Y'),(106,'2012-05-30',1012,NULL,'N'),(107,'2012-05-31',1017,NULL,'N'),(108,'2012-06-07',1010,'2012-07-21','Y'),(109,'2012-06-14',1011,'2012-08-21','N'),(110,'2012-06-17',1015,'2012-08-22','N'),(111,'2012-06-18',1004,'2012-08-29','Y'),(112,'2012-06-18',1017,NULL,'N'),(113,'2012-06-23',1004,'2012-07-31','N'),(114,'2012-06-25',1006,'2012-07-10','N'),(115,'2012-06-27',1010,'2012-08-31','N'),(116,'2012-06-29',1019,NULL,'N'),(117,'2012-07-09',1020,NULL,'N'),(118,'2012-07-10',1021,'2012-08-06','Y');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `prod_num` int(11) NOT NULL,
  `supp_code` char(3) NOT NULL,
  `description` char(15) NOT NULL,
  `unit_price` float DEFAULT NULL,
  PRIMARY KEY (`prod_num`,`supp_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'HFT','主機板',8000),(1,'HHT','主機板',4500),(1,'HSC','主機板',2500),(2,'HSC','唯讀式光碟機',1260),(3,'HFT','可燒錄式光碟機',2400),(4,'HFT','中央處理器',9600),(4,'HSC','中央處理器',4800),(5,'CFC','滑鼠',200),(5,'HHT','滑鼠',250),(5,'WCC','滑鼠',280),(6,'CFC','鍵盤',480),(6,'HHT','鍵盤',360),(7,'HSC','17吋螢幕',6000),(8,'CFC','19吋螢幕',8400),(9,'CFC','10M網路卡',200),(101,'FYC','100M網路卡',680),(101,'PRC','100M網路卡',880),(102,'FYC','60G硬式磁碟',2200),(102,'PRC','60G硬式磁碟',4800),(103,'PRC','3.5吋軟碟機',200),(104,'PRC','VGA卡',580),(105,'FYC','音效卡',800),(105,'PRC','音效卡',530),(106,'PRC','電源延長線',230),(107,'PRC','防毒軟體',700),(108,'FYC','護目鏡',450),(109,'FYC','天線',2000),(109,'PRC','天線',300),(110,'CFC','14吋螢幕',2440),(110,'FYC','14吋螢幕',2280),(110,'HFT','14吋螢幕',3080),(110,'HSC','14吋螢幕',2600),(110,'PRC','14吋螢幕',2360),(111,'FYC','15吋螢幕',4990),(112,'FYC','15吋螢幕',5490),(113,'FYC','15吋螢幕',6850),(114,'PRC','電腦桌',1200),(200,'NKC','數據機',1740),(201,'CFC','報表紙',750),(201,'HKC','報表紙',900),(201,'NKC','報表紙',380),(202,'HKC','無線網路卡',2300),(203,'NKC','21吋螢幕',6700),(204,'HKC','電纜線',450),(205,'CFC','40G硬式磁碟',3120),(205,'HSC','40G硬式磁碟',3120),(205,'NKC','40G硬式磁碟',3120),(301,'CFC','點陣式印表機',950),(301,'FYC','點陣式印表機',1020),(301,'HKC','點陣式印表機',870),(301,'HSC','點陣式印表機',420),(301,'NKC','點陣式印表機',970),(301,'PRC','點陣式印表機',750),(302,'HKC','鍵盤轉接頭',50),(302,'HSC','鍵盤轉接頭',60),(303,'HKC','光碟片',360),(303,'PRC','光碟片',480),(304,'CFC','20G硬式磁碟',1700),(304,'HSC','20G硬式磁碟',2800),(305,'HSC','傳真紙',480),(306,'FYC','10G硬式磁碟',1900),(306,'PRC','10G硬式磁碟',1600),(307,'PRC','25G硬式磁碟',2800),(309,'FYC','耳機',400),(309,'PRC','耳機',400),(310,'CFC','音箱',840),(310,'FYC','音箱',800),(311,'FYC','滑鼠墊',480),(312,'FYC','ISDN卡',960),(312,'HSC','ISDN卡',720),(313,'CFC','UPS',600),(313,'FYC','UPS',600);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `num` char(6) DEFAULT NULL,
  `name` char(8) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `chinese` tinyint(4) DEFAULT NULL,
  `english` tinyint(4) DEFAULT NULL,
  `math` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES ('812001','張大田','M',80,90,60),('812002','陳美鳳','F',95,80,70),('812005','李王育','M',75,70,85),('812004','黃淑珍','F',90,74,70),('812005','王五郎','M',65,88,67),('812006','張三明','M',86,61,74),('812012','陳美美','F',84,78,94),('812008','李小隆','M',71,60,83),('812009','黃怡仁','M',92,65,73),('812010','王曉菁','F',88,69,69);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `supp_code` char(3) NOT NULL,
  `supp_name` char(15) NOT NULL,
  `city_code` char(3) NOT NULL,
  PRIMARY KEY (`supp_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('CFC','資豐電腦','TYH'),('FYC','富揚資訊','TPH'),('HFT','會方科技','TPE'),('HHT','穎宏科技','TPE'),('HKC','和康電腦','TPH'),('HSC','新碩電腦','TCH'),('NKC','寧康電腦','TYH'),('PRC','百潤電腦','TPE'),('WCC','瑋智資訊','HCH');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `num` char(6) DEFAULT NULL,
  `name` char(8) DEFAULT NULL,
  `sex` enum('F','M') DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `address` char(28) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
