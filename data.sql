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
  `if` int(6) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`name`,`customeradress`,`customercontact`,`password`,`customerphoto`,`Identification`,`if`) values (1,'admin','111','222','111','two.png','001',0),(2,'ceshi','sss','sss','222','one.png','520',1),(3,'456','456','456','456',NULL,'456',1),(4,'789','789','789','789',NULL,'789',1),(5,'754','7535','75356','111',NULL,'753',1),(6,'789','789','123456789','789',NULL,'123456',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `customerorder` */

insert  into `customerorder`(`orderid`,`jobid`,`id`,`time`,`resume`,`fid`,`retime`) values (5,1,1,'2017-12-22 11:00:36','',NULL,'未通过'),(6,5,2,'2018-01-05 10:52:53',NULL,NULL,NULL),(9,20,2,'2018-01-05 17:06:34','',1,'2018年1月1日'),(10,10,2,'2018-01-11 19:28:37',NULL,NULL,NULL),(11,20,2,'2018-01-11 19:29:24','',1,'未通过');

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
  `demand` char(255) DEFAULT NULL,
  `fid` int(18) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`jobid`,`companyname`,`companyaddress`,`salary`,`available`,`companycontact`,`companyphoto`,`jobname`,`demand`,`fid`) values (1,'腾讯','深圳',6000,5,'0755-83765566','tencent.jpg','程序员',NULL,NULL),(2,'腾讯','深圳',10000,6,'0755-83765566','tencent.jpg','项目经理',NULL,NULL),(3,'百度','北京',3000,10,'010-59928888','baidu.jpg','前台接待员',NULL,NULL),(4,'特卫安防集团','北京朝阳王四营五方天雅汽配城A1栋2层特卫安防',4500,30,'13716608449','teweianfang.png','保安',NULL,NULL),(5,'都豪鼎盛保安服务公司','北京市怀柔区迎宾中路36号二层',4000,100,'15311960060','duhaodingsheng.png','保安',NULL,NULL),(6,'北京欢乐谷','朝阳区东四环四方桥东南角',4500,2,'673833338139','huanlegu.jpg','食堂厨师',NULL,NULL),(10,'中关村软件园孵化公司','北京中关村软件园',7000,5,'1008611','zhongguancun.jpg',NULL,NULL,NULL),(32,'9999','9999',999,999,'999','b874480f-7af3-4e64-b7a0-cf40a2de62bf.jpg','999','9999',1),(35,'573','375357',35735,353,'3753','','57357','75375',1),(36,'73573','373',37,357,'5737','d967216b-0b46-4d42-bd9d-f67b0c334344.jpg','373','57357',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
