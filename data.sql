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
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`name`,`customeradress`,`customercontact`,`password`,`customerphoto`,`Identification`,`ifcustomer`) values (1,'admin','111','222','111','two.png','001',0),(2,'ceshi','sss','sss','222','one.png','520',1),(3,'456','456','456','456',NULL,'456',1),(4,'789','789','789','789',NULL,'789',1),(5,'754','7535','75356','111',NULL,'753',1),(6,'789','789','123456789','789',NULL,'123456',1),(7,'212121','1212121','2121212','111',NULL,'212121212',NULL),(8,'122121111122222','12212212','21222','111',NULL,'21211112222',NULL),(9,'77788888','7878788','787878','777',NULL,'77777777777',NULL),(10,'00000','00000','00000','000',NULL,'00000',1),(11,'6666','6666','6666','666',NULL,'6666',1),(12,'0909090','0909090','0909090','111',NULL,'090090',1),(13,'212121','2121','2112212','111',NULL,'12122',1);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `customerorder` */

insert  into `customerorder`(`orderid`,`jobid`,`id`,`time`,`resume`,`fid`,`retime`) values (5,1,1,'2017-12-22 11:00:36','',NULL,'未通过'),(12,1,10,'2018-04-18 17:11:47','',NULL,'下周日上午9点'),(13,1,1,'2018-04-18 18:13:50','',NULL,'下周日上午9点'),(14,1,1,'2018-04-18 18:13:56','',NULL,'下周日上午9点'),(15,1,1,'2018-04-18 18:14:19','',NULL,'下周日上午9点'),(16,1,1,'2018-04-18 18:14:30','',NULL,'下周日上午9点'),(17,32,2,'2018-04-24 20:14:20','',1,'下周日上午9点'),(18,35,2,'2018-04-24 20:14:27','',1,'下周日上午9点'),(19,36,2,'2018-04-24 20:20:34','',1,'未通过'),(20,3,1,'得到的',NULL,NULL,NULL),(21,1,1,'得到的',NULL,NULL,NULL),(22,2,2,'得到的',NULL,NULL,NULL),(23,32,2,'得到的','',1,'未通过');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedbackid` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL,
  `contact` char(20) DEFAULT NULL,
  `sendtime` char(50) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`feedbackid`),
  KEY `feedbackid` (`feedbackid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

insert  into `feedback`(`feedbackid`,`name`,`contact`,`sendtime`,`content`) values (1,'嗡嗡嗡','',NULL,'嗡嗡嗡'),(2,'嗡嗡嗡','','2018-04-25 00:16:12','嗡嗡嗡'),(3,'得到的','嘟打嘟','2018-04-25 00:16:28','嘟打嘟'),(4,'得到的','嘟打嘟','2018-04-25 00:18:39','嘟打嘟'),(5,'天天','天堂','2018-04-25 00:18:48','天堂'),(6,'天天','天堂','2018-04-25 00:32:49','天堂'),(7,'dd','12212221','2018-04-25 16:12:44','车绿儿verve而v旅俄俄铝铝v驴肉丸v而v嗯v率别人TV让他不让我帮我认同不认同不同人物比如图表为荣投标人投标人毕业那一年');

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
  `sorts` char(30) DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`jobid`,`companyname`,`companyaddress`,`salary`,`available`,`companycontact`,`companyphoto`,`jobname`,`demand`,`fid`,`sorts`) values (1,'腾讯','深圳',6000,5,'0755-83765566','tencent.jpg','程序员',NULL,NULL,'科技/设计'),(2,'腾讯','深圳',10000,6,'0755-83765566','tencent.jpg','项目经理',NULL,NULL,'商务/营销'),(3,'百度','北京',3000,10,'010-59928888','baidu.jpg','前台接待员',NULL,NULL,'商务/营销'),(4,'特卫安防集团','北京朝阳王四营五方天雅汽配城A1栋2层特卫安防',4500,30,'13716608449','teweianfang.png','保安',NULL,NULL,'生活/医疗'),(5,'都豪鼎盛保安服务公司','北京市怀柔区迎宾中路36号二层',4000,100,'15311960060','duhaodingsheng.png','保安',NULL,NULL,'生活/医疗'),(6,'北京欢乐谷','朝阳区东四环四方桥东南角',4500,2,'673833338139','huanlegu.jpg','食堂厨师',NULL,NULL,'生活/医疗'),(10,'中关村软件园孵化公司','北京中关村软件园',7000,5,'1008611','zhongguancun.jpg',NULL,NULL,NULL,'科技/设计'),(32,'9999','9999',999,999,'999','b874480f-7af3-4e64-b7a0-cf40a2de62bf.jpg',NULL,NULL,1,'艺术/教育'),(35,'573','375357',35735,353,'3753','','57357','75375',1,NULL),(36,'73573','373',37,357,'5737','d967216b-0b46-4d42-bd9d-f67b0c334344.jpg','373','57357',1,NULL),(37,'6666','6666',6666,6666,'6666','be553980-4316-43b3-8016-0ebc9dbc7b38.jpg','6666','6666',1,'建筑');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
