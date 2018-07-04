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
  `sex` char(4) DEFAULT NULL,
  `birth` char(20) DEFAULT NULL,
  `nation` char(10) DEFAULT NULL,
  `politicstatus` char(30) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `schoolsystem` char(10) DEFAULT NULL,
  `education` char(20) DEFAULT NULL,
  `householdregister` char(30) DEFAULT NULL,
  `major` char(10) DEFAULT NULL,
  `school` char(20) DEFAULT NULL,
  `foreignlanguage` char(20) DEFAULT NULL,
  `computer` char(10) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `zipcode` char(8) DEFAULT NULL,
  `evaluation` char(200) DEFAULT NULL,
  `t1` char(20) DEFAULT NULL,
  `c1` char(30) DEFAULT NULL,
  `e1` char(50) DEFAULT NULL,
  `t2` char(20) DEFAULT NULL,
  `c2` char(30) DEFAULT NULL,
  `e2` char(50) DEFAULT NULL,
  `t3` char(20) DEFAULT NULL,
  `c3` char(30) DEFAULT NULL,
  `e3` char(50) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`name`,`customeradress`,`customercontact`,`password`,`customerphoto`,`Identification`,`ifcustomer`,`degree`,`sex`,`birth`,`nation`,`politicstatus`,`height`,`schoolsystem`,`education`,`householdregister`,`major`,`school`,`foreignlanguage`,`computer`,`email`,`zipcode`,`evaluation`,`t1`,`c1`,`e1`,`t2`,`c2`,`e2`,`t3`,`c3`,`e3`) values (1,'admi','111','222','111','a05a7a8b-5668-484c-ac1d-4cc0712056bc.png','001',0,1,'男','1991/3/23','汉族','共产党员',181,'四年制','本科','北京市海淀区','软件工程','中央民族大学','英语六级','无','66433@dgyu.com','100081','个iu','','','','','','','','',''),(2,'ceshi','sss','sss','222','','520',1,4,'女','1996/4/17','汉族','',169,'四年制','本科','上海市','软件工程','中央民族大学','英语六级','二级','87465@bui.com','100081','把欸额v给认购','2016/4/6-2017/4/2','吧v地','发呢war','','','','','','');

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
  `name` char(30) DEFAULT NULL,
  `customeradress` char(30) DEFAULT NULL,
  `customercontact` char(30) DEFAULT NULL,
  `customerphoto` char(100) DEFAULT NULL,
  `sex` char(4) DEFAULT NULL,
  `birth` char(20) DEFAULT NULL,
  `nation` char(10) DEFAULT NULL,
  `politicstatus` char(30) DEFAULT NULL,
  `height` int(4) DEFAULT NULL,
  `schoolsystem` char(10) DEFAULT NULL,
  `education` char(20) DEFAULT NULL,
  `householdregister` char(30) DEFAULT NULL,
  `major` char(10) DEFAULT NULL,
  `school` char(20) DEFAULT NULL,
  `foreignlanguage` char(20) DEFAULT NULL,
  `computer` char(10) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `zipcode` char(8) DEFAULT NULL,
  `evaluation` char(200) DEFAULT NULL,
  `t1` char(20) DEFAULT NULL,
  `c1` char(30) DEFAULT NULL,
  `e1` char(50) DEFAULT NULL,
  `t2` char(20) DEFAULT NULL,
  `c2` char(30) DEFAULT NULL,
  `e2` char(50) DEFAULT NULL,
  `t3` char(20) DEFAULT NULL,
  `c3` char(30) DEFAULT NULL,
  `e3` char(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FK651874EFA3F9EAE` (`id`),
  KEY `FK651874EFE949568` (`jobid`),
  KEY `FK651874E587E9E50` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `customerorder` */

insert  into `customerorder`(`orderid`,`jobid`,`id`,`time`,`resume`,`fid`,`retime`,`name`,`customeradress`,`customercontact`,`customerphoto`,`sex`,`birth`,`nation`,`politicstatus`,`height`,`schoolsystem`,`education`,`householdregister`,`major`,`school`,`foreignlanguage`,`computer`,`email`,`zipcode`,`evaluation`,`t1`,`c1`,`e1`,`t2`,`c2`,`e2`,`t3`,`c3`,`e3`) values (5,1,1,'2017-12-22 11:00:36','1',1,'未通过',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,2,'2018-06-06 16:24:57','4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,1,2,'2018-06-20 14:29:10','4',1,NULL,'ceshi','sss','sss','f3bf1b1e-22e6-460c-9af9-db09a8293c16.jpg','女','1996/4/17','汉族','',169,'四年制','本科','上海市','软件工程','中央民族大学','英语六级','二级','87465@bui.com','100081','','2016/4/6-2017/4/2','吧v地','发呢war','','','','','',''),(38,3,2,'2018-06-20 14:30:46','3',1,NULL,'ceshi','sss','sss','f3bf1b1e-22e6-460c-9af9-db09a8293c16.jpg','女','1996/4/17','汉族','',169,'四年制','本科','上海市','软件工程','中央民族大学','英语六级','二级','87465@bui.com','100081','v不会不','2016/4/6-2017/4/2','吧v地','发呢war','','','','','',''),(39,139,2,'2018-06-20 15:18:47','2',1,NULL,'ceshi','sss','sss','f3bf1b1e-22e6-460c-9af9-db09a8293c16.jpg','女','1996/4/17','汉族','团员',169,'四年制','本科','上海市','软件工程','中央民族大学','英语六级','二级','87465@bui.com','100081','报复维奥贝佛啊如果vu有','2016/4/6-2017/4/2','吧v地','发呢war','','','','','',''),(40,187,2,'2018-07-04 01:23:58','4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
  `fid` int(18) DEFAULT '1',
  `sorts` varchar(30) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`jobid`,`companyname`,`companyaddress`,`salary`,`available`,`companycontact`,`companyphoto`,`jobname`,`demand`,`fid`,`sorts`,`deadline`) values (1,'腾讯','深圳',6000,5,'0755-83765566','tencent.jpg','程序员',3,1,NULL,NULL),(2,'腾讯','深圳',10000,6,'0755-83765566',NULL,'项目经理',2,1,'商务/营销',NULL),(3,'百度','北京',3000,10,'010-59928888','baidu.jpg','前台接待员',0,1,NULL,NULL),(4,'特卫安防集团','北京朝阳王四营五方天雅汽配城A1栋2层特卫安防',4500,30,'13716608449','teweianfang.png','保安',0,1,NULL,NULL),(5,'都豪鼎盛保安服务公司','北京市怀柔区迎宾中路36号二层',4000,100,'15311960060','duhaodingsheng.png','保安',0,1,NULL,NULL),(6,'北京欢乐谷','朝阳区东四环四方桥东南角',4500,2,'673833338139','huanlegu.jpg','食堂厨师',0,1,NULL,NULL),(138,'北京典创思睿科技有限公司','北京海淀西北旺永丰屯北街2号',4300,2,'78985343','4e1cfe3a-c1e3-4ae4-a2bf-11eda165a2d8.jpg','物流管理',2,1,'商务/营销',NULL),(139,'北京嘉和一品餐饮管理有限公司','北京市各个城区嘉和一品门店',5000,9,'89652376','391177b0-57f1-497e-82f3-3fadbe4a07a0.jpg','餐饮管理',0,1,'商务/营销',NULL),(141,'BHG（北京）百货有限公司','北京西城阜外大街1号四川大厦东塔楼4层401',4000,12,'87665490','e32ec2e7-847a-45f3-b15a-332dad83a6f1.jpg','收银',1,1,'商务/营销',NULL),(142,'北京武吧国际文化传播有限公司','北京市通州区杨庄路9号',3000,2,'87656543','4d68018e-858f-4ab4-9b91-3fc7f3ba25ab.jpg','前台',2,1,'商务/营销',NULL),(143,'北京路琪食品有限公司','金汉绿港家园大东路134号',4000,6,'89878963','3f506837-235d-44a4-abf2-acba226d6057.jpg','营业员',1,1,'商务/营销',NULL),(144,'北京华夏博亿国际服装服饰有限公司','北京通州区通惠南路6号院7号楼',3000,5,'98798678','6b7bacb7-4fb3-4c49-9ac0-ec1601ba8e84.jpg','服装设计',3,1,'科技/设计',NULL),(145,'北京卡派科技有限公司','北京市朝阳区大屯路',3000,10,'98796874','11e23f21-ce13-45e9-acac-43dd3c95023e.jpg','营业员',1,1,'商务/营销',NULL),(146,'北京诚丰房地产经纪有限公司','北京海淀万柳新起点嘉园12号楼805室',8000,7,'97899824','ba806dab-0a5f-4ffa-a939-7fdbe741338c.jpg','置业顾问',2,1,'商务/营销',NULL),(147,'北京搜厚物业管理有限公司','北京市朝阳区东大桥路8号SOHO尚都南塔B1',5000,4,'87678873','3b8978ce-8ad3-4bdd-8c05-36c710280a49.jpg','水暖工',0,1,'劳工/制造',NULL),(148,'中国光大银行股份有限公司','北京海淀西二旗上地东路5号',5000,6,'77899876','aace507a-60cc-45a7-a441-59db9bd330d4.jpg','助理',2,1,'商务/营销',NULL),(149,'中龙环球投资管理(北京)有限公司','西城区南菜园甲2号',6000,12,'68768754','b8e6c749-cbf0-4345-93bf-543fc28f0f61.jpg','电话客服',1,1,'商务/营销',NULL),(150,'北京信元电信维护有限责任公司','北京西单西西友谊写字楼4层每周周四下午面试',4000,9,'89874687','59104bd6-895e-4b62-9eb9-fa1b84700ca1.jpg','电话客服',1,1,'商务/营销',NULL),(151,'工信联盟（北京）教育科技有限公司','北京丰台总部基地188号18区25号楼1209室',8000,6,'98798749','a668e545-6d3a-47a2-a4ad-88d1dfdc56f8.jpg','招生顾问',3,1,'艺术/教育',NULL),(152,'北京全时联盟便利店有限公司','面试地址北京朝阳区呼家楼博瑞大厦B座8层',3000,5,'98765786','31adffdd-92a4-4622-bb98-baedc6e2fb9b.jpg','理货员',0,1,'劳工/制造',NULL),(153,'北京融七牛信息技术有限公司','北京市丰台区星火路1号昌宁大厦19层',5000,3,'98784796','6f2fb5f3-a684-481d-b549-2f355ca2bb26.jpg','呼叫中心人员',1,1,'商务/营销',NULL),(154,'微观世界（北京）咨询有限公司','北京门头沟熙旺中心',5000,7,'78744905','42c9f9f5-bcfa-4f7d-b083-20fc27541bf3.jpg','电话客服',1,1,'商务/营销',NULL),(155,'北京市丰台区右安门翠林敬老院','北京丰台右安门外大街翠林小区二里9号楼',7000,8,'6546464','86d5fc01-fd8c-436b-aac1-bb2db116ebc7.jpg','助理',0,1,'劳工/制造',NULL),(156,'北京金玉蓬勃商贸有限公司','北京通州区大北关',5000,17,'56577567','a6424b5c-df42-4246-b777-73575ab91771.jpg','搬运工',0,1,'劳工/制造',NULL),(157,'北京东方顺弛汽车技术咨询有限公司','北京市海淀区莲宝路9号院澐澐国际',4000,5,'85785766','1a1ba535-8b47-4045-90d7-977418573595.jpg','客服专员',1,1,'商务/营销',NULL),(158,'北京市力迈中美学校','北京朝阳仰山路2号力迈中美国际学校',3500,6700,'57897594','5ef716f2-d7d9-4549-9fe7-9fa12a5b3c78.jpg','保安',0,1,'生活/医疗',NULL),(159,'北京弘创博学教育科技有限公司','北京朝阳十里堡都会国际A座5层5AB室',10000,7,'97984335','2cfd1ee9-7266-4eb8-9f39-0780293ac807.jpg','课程顾问',3,1,'艺术/教育',NULL),(160,'儒满（北京）文化传播有限公司','住邦2000商务楼',5000,7,'47589675','f38ffeeb-6793-4e56-bcbf-f06f14f72adf.jpg','电话客服',1,1,'商务/营销',NULL),(161,'北京典仕佳商贸有限公司','北京昌平霍营国美风唐综合楼6号楼602室',6000,8,'48675893','5b83450f-9303-4fcb-a148-8896ff932aad.jpg','课程顾问',2,1,'艺术/教育',NULL),(162,'播爱文化传播（香河）有限公司','廊坊香河安平第一小学斜对面',6000,20,'58687954','cd607691-f1eb-421b-9802-5090614580cc.jpg','助教',3,1,'商务/营销',NULL),(163,'北京市通州东关加油站','中国北京市通州区芙蓉东路辅路',3000,5,'46875687','e2a22c46-6421-42f5-a978-e8b6097e6b82.jpg','加油站工作员',0,1,'劳工/制造',NULL),(164,'北京桔子树音乐艺术培训有限公司','东城区国瑞城写字楼615',5000,4,'58768665','7c4b9332-5526-43fe-8d40-93a7bf93a665.jpg','客服专员',1,1,'艺术/教育',NULL),(165,'北京乾善元科技有限公司','北京市大兴区住总万科广场B座10层',10000,8,'47589578','fcb32b92-482e-4c7f-8c0f-e20ee58d775a.jpg','电话客服',1,1,'商务/营销',NULL),(166,'北京盾安保安服务有限公司','北京市海淀区北京理工大学',3000,7,'87658962','6ef7e303-40a5-4f20-a190-1820cc6cc9d4.jpg','保安',2,1,'生活/医疗',NULL),(167,'北京奇保良制冷设备有限公司','北京朝阳望京北皋玖星商务',8000,7,'74984378','379e4893-452f-4124-a2aa-6ce5cec98539.jpg','空调工',0,1,'劳工/制造',NULL),(168,'北京博瀚卓雅教育科技发展有限责任公司','北京丰台东路58号人才大厦401',5000,5,'65785678','8f71a4f3-3930-449c-a159-def97e1ad0ed.jpg','招生顾问',3,1,'艺术/教育',NULL),(169,'北京亚创新太网络科技有限公司','北京通州九棵树瑞都国际中心',4000,2,'46578678','4c91cacb-0011-48f3-a0cf-6f50afa83fb3.jpg','编辑',4,1,'商务/营销',NULL),(170,'北京阳光创展科技有限公司','河和居1107室北京阳光创展科技有限公司总部',5000,3,'57895784','0eec314a-fdaf-4485-98e9-ef7f34f74b08.jpg','布线工',0,1,'劳工/制造',NULL),(171,'北京市朝阳区朝花幼儿园','北京朝阳区朝花幼儿园各园所',3000,2,'56879578','1b3872a5-a4f1-4693-9dd7-92fcd13dc15b.jpg','保健医生',3,1,'生活/医疗',NULL),(172,'北京市保安服务总公司昌平分公司','北京市朝阳区中国银行支行',3000,9,'57894755','f7b38ddc-c64a-4a5d-9791-d78958e4a232.jpg','保安',1,1,'劳工/制造',NULL),(173,'北京福铃汽车技术发展有限公司','北京丰台区郭公庄608号福铃汽车',3000,7,'45689756','3203f212-10d5-4d73-87a8-42d165e8506a.jpg','客服专员',0,1,'劳工/制造',NULL),(174,'北京赛若迪科贸有限公司','北京海淀中关村南大街',7000,9,'57895769','6cf64d07-ad26-4507-8010-91486f550f79.jpg','送餐员',0,1,'生活/医疗',NULL),(175,'北京市保安服务总公司丰台分公司','北京市丰台区六里桥派出所',3000,15,'46587946','235c5c3b-1773-4dc3-9885-4a1d7604af00.jpg','保安',2,1,'生活/医疗',NULL),(176,'北京创锐文化传媒有限公司','北京市通州区梨园镇大马庄村东荟萃园B座3层',3000,6,'75698767','a6275d20-2099-4f7f-8f57-7099dd975f3b.jpg','客服专员',1,1,'商务/营销',NULL),(177,'乾源科工（北京）机械设备有限公司','北京朝阳四惠附近',6000,16,'56783465','ec88179d-1e7a-4dba-b4e4-0d490f580b57.jpg','送餐员',0,1,'劳工/制造',NULL),(178,'北京创编彩织商贸有限公司东城分公司','北京东城区崇文门外大街18号1幢F213',5000,2,'58789435','a11ea3e4-8ddc-4f49-a7c5-5b73c7c52201.jpg','卖场经理',3,1,'商务/营销',NULL),(179,'北京市朝阳区朝花幼儿园','北京市朝阳区东坝乡丽湾家园小区',9000,2,'75985476','9ac5ecc6-afb2-4366-b908-8cf53313564c.jpg','幼教',4,1,'艺术/教育',NULL),(180,'北京彩虹启点教育科技有限公司','北京市昌平区沙河镇于辛庄付家坟',4000,4,'65489743','0ae49f95-a4ed-452b-bcd7-d3c4a75fc8df.jpg','幼教',3,1,'艺术/教育',NULL),(181,'北京服务有限公司','北京丰台马家堡附近',3500,5,'75986693','7a4354ca-ef31-4d39-8688-7d54c2d6a34d.jpg','保安',1,1,'生活/医疗',NULL),(182,'北京首儿药厂','北京市顺义区李桥镇李天路李桥段五号',9000,1,'57893457','929b7f38-3e0c-465d-bf0b-beced7d41b84.jpg','儿科医生',3,1,'生活/医疗',NULL),(183,'北京德邦货运代理有限公司','北京朝阳区成寿寺路甲108号',5000,18,'85698745','f0ebe401-9a89-4f71-9c61-fd4e87ad7bbd.jpg','快递员',0,1,'劳工/制造',NULL),(184,'上海香淼贸易有限公司','北京西城西直门外大街1号凯德mall西直门2楼09C铺位',4000,7,'46587467','7b06436f-7b33-4aab-9acc-557e5e1f7797.jpg','导购员',1,1,'商务/营销',NULL),(185,'北京渝湘居餐饮管理有限公司','北京顺义天竺镇府前一街万斯酒店楼下',3500,3,'56784674','89b85f5a-632b-49ff-993d-a6e375c6bfb0.jpg','服务员',2,1,'生活/医疗',NULL),(186,'北京鸿峰视景科技有限公司','北京市通州区马驹桥镇合生世界村H区6号楼301室',4000,5,'84657836','d51d987a-1705-4e3e-817e-a0abffd34316.jpg','服务员',1,1,'生活/医疗',NULL),(187,'BHG（北京）百货有限公司','北京市海淀区成府路28号优盛大厦',7000,4,'67894657','0ea1424f-0824-4c40-85e8-ca41ed469bbc.jpg','收银员',2,1,'生活/医疗',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
