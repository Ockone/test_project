/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.36 : Database - imtermediary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imtermediary` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `imtermediary`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerid` int(18) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `customeradress` char(30) DEFAULT NULL,
  `customercontact` char(30) DEFAULT NULL,
  `password` char(30) DEFAULT NULL,
  `customerphoto` char(100) DEFAULT NULL,
  `Identification` char(18) DEFAULT NULL,
  `ifcustomer` int(6) DEFAULT NULL,
  `degree` int(20) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`name`,`customeradress`,`customercontact`,`password`,`customerphoto`,`Identification`,`ifcustomer`,`degree`) values (2,'ceshi','sss','sss','222','f3bf1b1e-22e6-460c-9af9-db09a8293c16.jpg','520',1,4),(3,'456','456','456','456',NULL,'456',1,NULL),(4,'789','789','789','789',NULL,'789',1,NULL),(5,'754','7535','75356','111',NULL,'753',1,NULL),(6,'789','789','123456789','789',NULL,'123456',1,NULL),(7,'212121','1212121','2121212','111',NULL,'212121212',NULL,NULL),(9,'77788888','7878788','787878','777',NULL,'77777777777',NULL,NULL),(13,'333','333','333','333',NULL,'8282',NULL,NULL),(14,'999','333','333','333',NULL,'7373',NULL,NULL),(15,'1919','1919','19191','1919',NULL,'1919',NULL,NULL),(16,'737373','737373','737373','737373','','737373',1,NULL),(63,'admi','111','222','111','c00d06dd-5951-4ba1-b054-56c551ffcb10.jpg','001',0,5),(64,'12','12','12','1111111',NULL,'4444',0,NULL),(65,'66','66','6','6666666','','666666',0,4);

/*Table structure for table `customerorder` */

DROP TABLE IF EXISTS `customerorder`;

CREATE TABLE `customerorder` (
  `orderid` int(6) NOT NULL AUTO_INCREMENT,
  `jobid` int(6) DEFAULT NULL,
  `id` int(6) DEFAULT NULL,
  `time` char(20) DEFAULT NULL,
  `resume` char(100) DEFAULT NULL,
  `fid` int(18) DEFAULT NULL,
  `retime` char(30) DEFAULT '待审核',
  PRIMARY KEY (`orderid`),
  KEY `FK651874EFA3F9EAE` (`id`),
  KEY `FK651874EFE949568` (`jobid`),
  KEY `FK651874E587E9E50` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `customerorder` */

insert  into `customerorder`(`orderid`,`jobid`,`id`,`time`,`resume`,`fid`,`retime`) values (5,1,1,'2017-12-22 11:00:36','',NULL,'未通过'),(6,5,2,'2018-01-05 10:52:53',NULL,NULL,NULL),(9,20,2,'2018-01-05 17:06:34','',1,'2018年1月1日'),(10,10,2,'2018-01-11 19:28:37',NULL,NULL,NULL),(11,20,2,'2018-01-11 19:29:24','',1,'未通过'),(12,3,2,'2018-04-25 16:21:37',NULL,NULL,NULL),(13,3,2,'2018-04-25 16:22:20',NULL,NULL,NULL),(14,3,2,'2018-04-25 16:25:07',NULL,NULL,NULL),(15,2,2,'得到的',NULL,NULL,NULL),(16,2,2,'2018-05-15 20:25:58',NULL,NULL,NULL),(17,2,2,'2018-05-15 20:26:05',NULL,NULL,NULL),(18,2,2,'2018-05-15 20:26:11',NULL,NULL,NULL),(19,2,2,'2018-05-15 20:26:38',NULL,NULL,NULL),(20,2,2,'2018-05-15 20:28:07',NULL,NULL,NULL),(21,2,2,'2018-05-15 20:30:00',NULL,NULL,NULL),(22,2,2,'2018-05-15 20:31:16',NULL,NULL,NULL),(23,2,2,'2018-05-15 20:35:02',NULL,NULL,NULL),(24,1,2,'2018-05-15 20:36:25',NULL,NULL,NULL),(25,1,2,'2018-05-15 21:03:24',NULL,NULL,NULL),(26,2,2,'2018-05-16 16:31:43',NULL,NULL,NULL),(27,2,2,'2018-05-16 16:31:57',NULL,NULL,NULL),(28,2,2,'2018-05-16 16:35:56',NULL,NULL,NULL),(29,1,2,'2018-05-16 16:36:27',NULL,NULL,NULL),(30,2,2,'2018-05-16 16:36:32',NULL,NULL,NULL),(31,1,2,'2018-05-16 16:39:14',NULL,NULL,NULL);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedbackid` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `sendtime` varchar(50) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `jobid` int(6) NOT NULL AUTO_INCREMENT,
  `companyname` char(30) DEFAULT NULL,
  `companyaddress` char(30) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `available` int(3) DEFAULT NULL,
  `companycontact` char(30) DEFAULT NULL,
  `companyphoto` char(100) DEFAULT NULL,
  `jobname` char(30) DEFAULT NULL,
  `demand` int(25) DEFAULT NULL,
  `fid` int(18) DEFAULT NULL,
  `sorts` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`jobid`,`companyname`,`companyaddress`,`salary`,`available`,`companycontact`,`companyphoto`,`jobname`,`demand`,`fid`,`sorts`) values (1,'腾讯','深圳',6000,5,'0755-83765566','tencent.jpg','程序员',3,NULL,'科技/设计'),(2,'腾讯','深圳',10000,6,'0755-83765566','tencent.jpg','项目经理',4,NULL,'商务/营销'),(3,'百度','北京',3000,10,'010-59928888','baidu.jpg','前台接待员',0,NULL,'商务/营销'),(4,'特卫安防集团','北京朝阳王四营五方天雅汽配城A1栋2层特卫安防',4500,30,'13716608449','teweianfang.png','保安',0,NULL,'劳工/制造'),(5,'都豪鼎盛保安服务公司','北京市怀柔区迎宾中路36号二层',4000,100,'15311960060','duhaodingsheng.png','保安',0,NULL,'劳工/制造'),(6,'北京欢乐谷','朝阳区东四环四方桥东南角',4500,2,'673833338139','huanlegu.jpg','食堂厨师',0,NULL,'生活/医疗');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
