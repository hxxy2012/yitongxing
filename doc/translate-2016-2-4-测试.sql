﻿# Host: 172.51.96.187  (Version: 5.6.21)
# Date: 2016-02-04 15:42:13
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "t_comment"
#

DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '意见反馈编码',
  `userid` int(11) DEFAULT NULL COMMENT '用户编码',
  `content` varchar(500) DEFAULT NULL COMMENT '反馈内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

#
# Data for table "t_comment"
#

INSERT INTO `t_comment` VALUES (10,163,'带回家的好多亟待解决放假会大喊大叫好大家记得家好多话好多都好好好多好多机会金像奖独家好多好多话复活复活复活会复活复活好多会复活复活复活复活复活亟待解决','2016-02-03 16:16:03'),(11,165,'你空MSN哦婆婆哦破功MSN哦色彩why哦POS我热JOJO你女老婆哦婆婆丁墨SOHO陪敏敏','2016-02-04 09:16:22');

#
# Structure for table "t_maketrans"
#

DROP TABLE IF EXISTS `t_maketrans`;
CREATE TABLE `t_maketrans` (
  `maketransid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编码',
  `userid` int(11) DEFAULT NULL COMMENT '用户编码',
  `countryid` int(11) DEFAULT NULL COMMENT '目的地国家编码',
  `provinceid` int(11) DEFAULT NULL COMMENT '目的地省或州编码',
  `cityid` int(11) DEFAULT NULL COMMENT '目的地市编码',
  `begintime` datetime DEFAULT NULL COMMENT '开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `hours` int(5) DEFAULT NULL COMMENT '小时数',
  `languageid` int(11) DEFAULT NULL COMMENT '语种编码',
  `level` int(20) DEFAULT NULL COMMENT '等级 1初级2中级3高级',
  `specialtyid` int(11) DEFAULT NULL COMMENT '专业编码',
  `address` varchar(500) DEFAULT NULL COMMENT '起始地址',
  `state` int(2) DEFAULT '0' COMMENT '是否被抢单 0否1是',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `tranuserid` int(11) DEFAULT NULL COMMENT '翻译人员编码',
  `getbilltime` datetime DEFAULT NULL COMMENT '抢单时间',
  PRIMARY KEY (`maketransid`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='预约表';

#
# Data for table "t_maketrans"
#

INSERT INTO `t_maketrans` VALUES (82,161,1,3,4,'2016-02-06 18:00:00','2016-02-06 22:00:00',4,1,3,343,'5555',1,NULL,'2016-02-03 15:21:48',173,'2016-02-03 15:35:57'),(83,163,1,3,4,'2016-02-05 15:00:00','2016-02-05 19:00:00',4,1,3,343,'你放假放假放假减肥亟待解决吧大家大家互粉互粉吧办法还放假经典百搭暖暖的不放假绝对会复活复活好大家记得好多喝酒',1,'减肥解放军好多还放假放假放假回复好多都好好好多好多很好的呵护好多好多呵呵好的呵护好多话好多呵呵呵呵','2016-02-03 15:52:00',173,'2016-02-03 16:20:55'),(93,185,1,3,4,'2016-02-15 00:00:00','2016-02-15 03:00:00',3,6,2,NULL,'bbjb',0,'jvvj','2016-02-04 10:36:59',NULL,NULL),(99,163,1,5,20,'2016-02-09 05:00:00','2016-02-09 09:00:00',4,8,2,NULL,'放假解放军大家金像奖解放军大家会复活回到家大家大家记得大家好好吃',1,'不放假放假经典合集大家好大家记得家好多话废话会会复活复活会复活hdhdhh','2016-02-04 10:54:14',171,'2016-02-04 11:09:37'),(100,185,1,5,20,'2016-02-17 14:00:00','2016-02-17 22:00:00',8,8,2,NULL,'图',0,'娶老婆','2016-02-04 11:07:40',NULL,NULL),(107,179,1,3,4,'2016-02-06 10:00:00','2016-02-06 15:00:00',5,1,3,343,'哦咯弄哦李敏进魔龙进攻民工李敏kilojoule哦送民工took哦咯名模',0,'哦咯哦哦哦look哦哦哦龙哦look哦咯嗯咯津南李敏金龙kilogram寂寞空距离咯','2016-02-04 15:15:00',NULL,NULL);

#
# Structure for table "t_maketrans_user"
#

DROP TABLE IF EXISTS `t_maketrans_user`;
CREATE TABLE `t_maketrans_user` (
  `maketransiduserid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `maketransid` int(11) DEFAULT NULL COMMENT '预约编码',
  `userid` int(11) DEFAULT NULL COMMENT '翻译编码',
  PRIMARY KEY (`maketransiduserid`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COMMENT='预约应该翻译表';

#
# Data for table "t_maketrans_user"
#

INSERT INTO `t_maketrans_user` VALUES (90,64,173),(91,65,173),(92,66,171),(93,67,173),(94,68,173),(95,69,173),(96,70,173),(97,71,173),(98,72,173),(99,73,173),(100,74,173),(101,75,173),(102,76,173),(103,77,173),(104,78,173),(106,80,171),(108,82,173),(109,83,173),(110,84,173),(111,85,171),(112,86,165),(113,87,165),(116,90,165),(117,91,165),(119,93,165),(120,94,165),(125,99,171),(126,100,171),(127,101,173),(128,101,184),(135,105,173),(136,105,184),(137,106,173),(138,106,184),(139,107,173),(140,107,184);

#
# Structure for table "t_message"
#

DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `msgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息编码',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(500) DEFAULT NULL COMMENT '消息内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COMMENT='消息表';

#
# Data for table "t_message"
#

INSERT INTO `t_message` VALUES (227,'抢单通知','您的预约单已经被翻译员刘冰抢到','2016-02-04 10:52:03'),(228,'取消订单','您好，您的订单编号为D16020410520343293的订单，翻译端已将订单取消，给您带来了不便，请您谅解，我们将会为您重新发布您的订单，谢谢！','2016-02-04 10:54:14'),(229,'用户取消订单','订单号D16020316312543380已经被用户qwerty取消','2016-02-04 10:54:36'),(230,'抢单通知','您的预约单已经被翻译员刘冰抢到','2016-02-04 11:09:37'),(231,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 14:01:25'),(232,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 14:06:16'),(233,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 14:07:31'),(234,'用户取消订单','订单号D16020414090096342已经被用户诺诺闵坡敏莫柔楼多取消','2016-02-04 14:15:59'),(235,'取消订单','您好，您的订单编号为D16020414082912749的订单，翻译端已将订单取消，给您带来了不便，请您谅解，我们将会为您重新发布您的订单，谢谢！','2016-02-04 14:16:42'),(236,'取消订单','您好，您的订单编号为D16020414034105379的订单，翻译端已将订单取消，给您带来了不便，请您谅解，我们将会为您重新发布您的订单，谢谢！','2016-02-04 14:17:27'),(237,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 15:06:39'),(238,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 15:08:02'),(239,'抢单通知','您的预约单已经被翻译员111111抢到','2016-02-04 15:19:09');

#
# Structure for table "t_message_user"
#

DROP TABLE IF EXISTS `t_message_user`;
CREATE TABLE `t_message_user` (
  `messageuserid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `msgid` int(11) DEFAULT NULL COMMENT '消息编码',
  `userid` int(11) DEFAULT NULL COMMENT '接收人编码',
  `isread` int(2) DEFAULT '0' COMMENT '是否查看 0否1是',
  `senduserid` int(11) DEFAULT NULL COMMENT '发送人编码',
  PRIMARY KEY (`messageuserid`)
) ENGINE=InnoDB AUTO_INCREMENT=3390 DEFAULT CHARSET=utf8 COMMENT='消息与人关系表';

#
# Data for table "t_message_user"
#

INSERT INTO `t_message_user` VALUES (3377,227,163,1,0),(3378,228,163,1,0),(3379,229,171,0,0),(3380,230,163,0,0),(3381,231,179,1,0),(3382,232,179,1,0),(3383,233,179,1,0),(3384,234,173,1,0),(3385,235,179,1,0),(3386,236,179,1,0),(3387,237,179,1,0),(3388,238,179,1,0),(3389,239,179,1,0);

#
# Structure for table "t_notify"
#

DROP TABLE IF EXISTS `t_notify`;
CREATE TABLE `t_notify` (
  `notifyid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `orderid` varchar(40) DEFAULT NULL COMMENT '订单编码',
  `totalfee` float(9,2) DEFAULT '0.00' COMMENT '金额',
  `state` int(11) DEFAULT '0' COMMENT '支付状态 0失败1成功',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `type` int(2) DEFAULT NULL COMMENT '类型 2翻译3用户',
  `transactionid` varchar(64) DEFAULT NULL COMMENT '微信或支付宝订单号',
  `paytype` int(2) DEFAULT NULL COMMENT '支付方式 1支付宝2微信',
  `buyerid` varchar(30) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝唯一用户号。以2088开头的纯16位数字',
  `buyeremail` varchar(100) DEFAULT NULL COMMENT '买家支付宝账号，可以是Email或手机号码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`notifyid`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='回调信息';

#
# Data for table "t_notify"
#


#
# Structure for table "t_order"
#

DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderid` varchar(40) NOT NULL DEFAULT '' COMMENT '订单编码',
  `countryid` int(11) DEFAULT NULL COMMENT '目的地国家编码',
  `provinceid` int(11) DEFAULT NULL COMMENT '目的地省或州编码',
  `cityid` int(11) DEFAULT NULL COMMENT '目的地市编码',
  `begintime` datetime DEFAULT NULL COMMENT '开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `hours` int(5) DEFAULT NULL COMMENT '小时数',
  `tranuserid` int(11) DEFAULT NULL COMMENT '翻译人员编码',
  `languageid` int(11) DEFAULT NULL COMMENT '语种编码',
  `level` int(20) DEFAULT NULL COMMENT '等级 1初级2中级3高级',
  `specialtyid` int(11) DEFAULT NULL COMMENT '专业编码',
  `address` varchar(500) DEFAULT NULL COMMENT '起始地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `userid` int(11) DEFAULT NULL COMMENT '用户编码',
  `bondmoney` float(9,2) NOT NULL DEFAULT '0.00' COMMENT '用户担保金',
  `userfine` float(9,2) DEFAULT '0.00' COMMENT '用户取消罚金',
  `fanyimoney` float(9,2) DEFAULT '0.00' COMMENT '翻译会费',
  `fanyifine` float(9,2) DEFAULT '0.00' COMMENT '翻译罚金',
  `state` int(2) DEFAULT '0' COMMENT '订单状态 0待付款1未支付取消2订单进行中3确认订单4待评价5完成6用户取消7翻译取消8用户确认取消',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `cancel` int(2) DEFAULT '0' COMMENT '取消订单已退钱 0未退1已退',
  `confirm` int(2) DEFAULT '0' COMMENT '是否退保证金 0未退1已退',
  `reset` int(2) DEFAULT '3' COMMENT '0退钱1扣钱2退钱扣钱 未退未扣是3',
  `canceltime` datetime DEFAULT NULL COMMENT '取消时间',
  `userconfirm` int(2) DEFAULT '0' COMMENT '用户确认 0未确认1确认',
  `tranconfirm` int(2) DEFAULT '0' COMMENT '翻译确认 0未确认1确认',
  `confirmtime` datetime DEFAULT NULL COMMENT '订单确认时间',
  `getbilltime` datetime DEFAULT NULL COMMENT '抢单时间',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `userdel` int(2) DEFAULT '0' COMMENT '用户删除订单  0否1是',
  `trandel` int(2) DEFAULT '0' COMMENT '翻译删除订单 0否1是',
  `usersay` int(2) DEFAULT '0' COMMENT '用户评价 0未评价1已评价',
  `transay` int(2) DEFAULT '0' COMMENT '翻译评价 0未评价1已评价',
  `oneday` int(2) DEFAULT '0' COMMENT '当订单预约日达到前1天消息提醒 0未提醒1已提醒',
  `paytype` tinyint(1) DEFAULT NULL COMMENT '支付方式 0支付宝1微信',
  `dealorderid` varchar(70) DEFAULT NULL COMMENT '微信或支付宝订单号',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

#
# Data for table "t_order"
#

INSERT INTO `t_order` VALUES ('D16020310302077562',2,7,8,'2016-02-03 11:00:00','2016-02-03 14:00:00',3,171,6,2,374,'今日经典亟待解决吃的解放军亟待解决放假吵架吵架亟待解决的坚持坚持坚持能分辨出暖暖的','还得继续的回到家大家觉得你大家大家亟待解决的经典亟待解决好大家记得绝对经典家',163,0.01,0.00,6.00,10.00,5,'2016-02-03 10:30:24',0,0,3,NULL,1,1,'2016-02-03 13:41:06','2016-02-03 10:30:24','2016-02-03 13:38:21',0,0,1,1,0,0,'13143214'),('D16020313584236206',2,7,8,'2016-02-05 09:00:00','2016-02-05 11:00:00',2,171,6,2,NULL,'除非还放假放假大家记得绝对经典亟待解决滴滴嘟嘟软件经典解放军减肥减肥解放军解放军大家经典解放军家大家绝对经典家','不想你的家大家记得难道你的你解放军的绝对经典绝对经典解放军大家亟待解决的解放军大家软件解放军减肥解放军大家亟待解决的家你的你难道你发怒发怒放假放假放假放假参加放假就吵架解放军大家',163,0.01,0.00,6.00,10.00,8,'2016-02-03 13:58:31',0,0,3,'2016-02-03 14:18:22',0,0,NULL,'2016-02-03 13:57:23','2016-02-03 14:16:51',0,0,0,0,0,0,'1223'),('D16020315198154050',1,3,4,'2016-02-06 18:00:00','2016-02-06 22:00:00',4,173,1,3,343,'5555',NULL,161,2.00,0.00,6.00,7.00,7,'2016-02-03 15:19:20',0,0,3,'2016-02-03 15:21:48',0,0,NULL,'2016-02-03 15:19:02','2016-02-03 15:21:21',0,0,0,0,0,0,'22222222'),('D16020315247454163',1,3,4,'2016-02-05 15:00:00','2016-02-05 19:00:00',4,173,1,3,343,'你放假放假放假减肥亟待解决吧大家大家互粉互粉吧办法还放假经典百搭暖暖的不放假绝对会复活复活好大家记得好多喝酒','减肥解放军好多还放假放假放假回复好多都好好好多好多很好的呵护好多好多呵呵好的呵护好多话好多呵呵呵呵',163,2.00,0.00,6.00,7.00,7,'2016-02-03 15:24:36',0,0,2,'2016-02-03 15:51:59',0,0,NULL,'2016-02-03 15:24:36','2016-02-03 12:49:21',0,0,0,0,0,0,'111'),('D16020316312543380',1,5,20,'2016-02-08 09:00:00','2016-02-08 15:00:00',6,171,8,2,395,'解放军大家饿经典的家大家亟待解决的家亟待解决的经典亟待解决滴滴绝对经典家难道你的家hdh','减肥解放军软件亟待解决的经典的家亟待解决的家大家记得亟待解决经典合集jdjjdjhdhhfjrjjej你发怒发怒放假好多话好多',163,2.00,0.00,6.00,7.00,6,'2016-02-03 16:31:54',0,0,0,'2016-02-04 10:54:36',0,0,NULL,'2016-02-03 16:31:54','2016-02-03 16:32:20',0,0,0,0,0,0,'11111111'),('D16020409520108177',1,3,4,'2016-02-06 10:00:00','2016-02-06 13:00:00',3,165,6,2,NULL,'无语诺您took诺MSN欧诺空','欧诺空哦公民敏魔咯女魔头拖哦logo哦咯你摸咯X5YY您提莫look哦哦您JOJO偷心',174,2.00,0.00,6.00,7.00,8,'2016-02-04 09:52:49',0,0,2,'2016-02-04 10:00:27',0,0,NULL,'2016-02-04 09:51:21','2016-02-04 09:58:01',0,0,0,0,0,0,'11111'),('D16020410049941131',1,3,4,'2016-02-06 10:00:00','2016-02-06 13:00:00',3,165,6,2,NULL,'无语诺您took诺MSN欧诺空','欧诺空哦公民敏魔咯女魔头拖哦logo哦咯你摸咯X5YY您提莫look哦哦您JOJO偷心',174,2.00,0.00,6.00,7.00,8,'2016-02-04 10:04:17',0,0,3,'2016-02-04 10:25:06',0,0,NULL,'2016-02-04 10:01:17','2016-02-04 10:05:21',0,0,0,0,0,0,'123123123'),('D16020410145688769',1,3,4,'2016-02-04 11:00:00','2016-02-04 14:00:00',3,165,6,2,374,'cjjcjc','xujccu',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:14:32',0,0,3,NULL,0,0,NULL,'2016-02-04 10:14:32',NULL,0,0,0,0,0,NULL,NULL),('D16020410191141328',1,3,4,'2016-02-14 08:00:00','2016-02-14 22:00:00',14,165,6,2,374,'vhjvjv','chjvjv',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:19:35',0,0,3,NULL,0,0,NULL,'2016-02-04 10:19:35',NULL,0,0,0,0,0,NULL,NULL),('D16020410244364620',1,3,4,'2016-02-07 08:00:00','2016-02-07 22:00:00',14,165,6,2,374,'ubbi','bjbj',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:24:01',0,0,3,NULL,0,0,NULL,'2016-02-04 10:24:01',NULL,0,0,0,0,0,NULL,NULL),('D16020410253858776',1,3,4,'2016-02-08 00:00:00','2016-02-08 22:00:00',22,165,6,2,374,'ubbi','bjbj',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:25:36',0,0,3,NULL,0,0,NULL,'2016-02-04 10:25:36',NULL,0,0,0,0,0,NULL,NULL),('D16020410295772145',1,3,4,'2016-02-10 00:00:00','2016-02-10 07:00:00',7,165,6,2,374,'knknkn','biibbi',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:29:55',0,0,3,NULL,0,0,NULL,'2016-02-04 10:29:55',NULL,0,0,0,0,0,NULL,NULL),('D16020410327079599',1,3,4,'2016-02-11 00:00:00','2016-02-11 18:00:00',18,165,6,2,374,'yvvuhv','vhjbjb',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:32:33',0,0,3,NULL,0,0,NULL,'2016-02-04 10:32:33',NULL,0,0,0,0,0,NULL,NULL),('D16020410369525785',1,3,4,'2016-02-05 09:00:00','2016-02-05 19:00:00',10,165,6,2,NULL,'外婆咯抠门诺寂寞进攻李民基','哦lol欧恩了8莫咯哦咯另一种咯敏敏',174,2.00,0.00,6.00,7.00,7,'2016-02-04 10:36:24',0,0,3,'2016-02-04 10:37:16',0,0,NULL,'2016-02-04 10:36:02','2016-02-04 10:36:47',0,0,0,0,0,0,'1231231231'),('D16020410376181868',1,3,4,'2016-02-22 14:00:00','2016-02-22 18:00:00',4,165,6,2,374,'vvhjbq','vjvj',185,2.00,0.00,6.00,7.00,0,'2016-02-04 10:37:35',0,0,3,NULL,0,0,NULL,'2016-02-04 10:37:35',NULL,0,0,0,0,0,NULL,NULL),('D16020410448962718',1,3,4,'2016-02-06 15:00:00','2016-02-06 19:00:00',4,165,6,2,NULL,'乌云咯木有呀民族舞诺诺mumming哦送了经理苦命林敏54556155868','哦lol诺女模咯欧美爱你哦额破功M8',174,2.00,0.00,6.00,7.00,8,'2016-02-04 10:44:34',0,0,3,'2016-02-04 10:45:35',0,0,NULL,'2016-02-04 10:44:01','2016-02-04 10:44:59',0,0,0,0,0,1,'123123121'),('D16020410481454984',1,3,4,'2016-02-06 15:00:00','2016-02-06 19:00:00',4,165,6,2,NULL,'乌云咯木有呀民族舞诺诺mumming哦送了经理苦命林敏54556155868','哦lol诺女模咯欧美爱你哦额破功M8',174,2.00,0.00,6.00,7.00,0,'2016-02-04 10:48:10',0,0,3,NULL,0,0,NULL,'2016-02-04 10:46:53',NULL,0,0,0,0,0,NULL,NULL),('D16020410503725118',1,5,20,'2016-02-09 05:00:00','2016-02-09 09:00:00',4,171,8,2,NULL,'放假解放军大家金像奖解放军大家会复活回到家大家大家记得大家好好吃','不放假放假经典合集大家好大家记得家好多话废话会会复活复活会复活hdhdhh',163,2.00,0.00,6.00,7.00,8,'2016-02-04 10:50:05',0,0,3,'2016-02-04 10:50:48',0,0,NULL,'2016-02-04 10:49:44','2016-02-04 10:50:43',1,0,0,0,0,0,'1231231'),('D16020410520343293',1,5,20,'2016-02-09 05:00:00','2016-02-09 09:00:00',4,171,8,2,NULL,'放假解放军大家金像奖解放军大家会复活回到家大家大家记得大家好好吃','不放假放假经典合集大家好大家记得家好多话废话会会复活复活会复活hdhdhh',163,2.00,0.00,6.00,7.00,8,'2016-02-04 10:52:17',0,0,3,'2016-02-04 10:54:14',0,0,NULL,'2016-02-04 10:52:03','2016-02-04 10:54:06',1,0,0,0,0,0,'123123'),('D16020414034105379',1,3,4,'2016-02-13 00:00:00','2016-02-13 14:00:00',14,173,1,3,343,'木木木民工哦poor哦哦JOJOMSN明敏您就姑姑定魔鬼','木木木哦哦名模童年哦你名字与我倪敏look牧民民工漫明明敏敏空哦破努努力老K里咯你诺诺TOTO',179,2.00,0.00,6.00,7.00,8,'2016-02-04 14:03:12',0,0,3,'2016-02-04 14:17:27',0,0,NULL,'2016-02-04 14:01:25','2016-02-04 14:15:09',1,1,0,0,0,0,'222'),('D16020414082912749',1,3,4,'2016-02-10 10:00:00','2016-02-10 15:00:00',5,173,1,3,343,'欲女敏敏咯哦SOHO心头虐特多哦可哦扣女木木木弄多厚魔女哦咯','哦漏糯米你摸搜搜哦密谋多怕忒您你摸婆婆婆婆婆婆送哦婆婆哦热搜',179,2.00,0.00,6.00,7.00,8,'2016-02-04 14:08:00',0,0,3,'2016-02-04 14:16:42',0,0,NULL,'2016-02-04 14:07:31','2016-02-04 14:15:24',1,1,0,0,0,0,'2341234'),('D16020414090096342',1,3,4,'2016-02-07 09:00:00','2016-02-07 14:00:00',5,173,1,3,343,'欧诺LOL哦了是快手里了林敏numinous名模后轮MSN够你琢磨民工你明明','哦肉哦咯哦咯龙猫哦公民口蘑MSN你女女哦咯红哦咯him',179,2.00,0.00,6.00,7.00,6,'2016-02-04 14:09:11',0,0,0,'2016-02-04 14:15:59',0,0,NULL,'2016-02-04 14:06:16','2016-02-04 14:15:36',1,1,0,0,0,0,'234234'),('D16020415251833850',1,3,4,'2016-02-07 06:00:00','2016-02-07 15:00:00',9,173,1,3,343,'哦lol诺敏敏进攻敏敏哦颇多破密谋鲁诺军训咯来咯好哦哦哦logo哦咯来咯哦咯哦他咯军工','哦lol你摸公民进攻敏敏哦李敏名模你摸过哦公积金静默你摸你摸你摸明年',179,2.00,0.00,6.00,7.00,2,'2016-02-04 15:25:00',0,0,3,NULL,0,0,NULL,'2016-02-04 15:19:09','2016-02-04 15:28:39',0,0,0,0,0,0,'23423423');

#
# Structure for table "t_order_comment"
#

DROP TABLE IF EXISTS `t_order_comment`;
CREATE TABLE `t_order_comment` (
  `commentid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论编码',
  `orderid` varchar(40) DEFAULT NULL COMMENT '订单编码',
  `fromuserid` int(11) DEFAULT NULL COMMENT '评论人编码',
  `touserid` int(11) DEFAULT NULL COMMENT '被评论人编码',
  `starlevel` int(2) DEFAULT '1' COMMENT '星等级',
  `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `createtime` datetime DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='评论表';

#
# Data for table "t_order_comment"
#

INSERT INTO `t_order_comment` VALUES (59,'D16020310302077562',163,171,5,'德国广告公司发 v 个非法提供给对方坛坛罐罐应该给广告费刚刚发广告 v 很纠结很高风 vv 个 vv 个很好而改变积极举报个 vv 不久就会斑斑驳驳','2016-02-03 13:42:09'),(60,'D16020310302077562',171,163,4,'地方尴尬尴尬dffdfgcvh唱的法国黄金家的发挥哦房地产吃火锅聚会v发广告广告广告古恍恍惚惚反反复复发个广告 v 斑斑驳驳复活宝贝呢的国会尽快女吧有 v 家居服吃','2016-02-03 13:43:11');

#
# Structure for table "t_price"
#

DROP TABLE IF EXISTS `t_price`;
CREATE TABLE `t_price` (
  `priceid` int(11) NOT NULL AUTO_INCREMENT COMMENT '价格表',
  `price` float(9,2) DEFAULT '0.00' COMMENT '价格',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT '0' COMMENT '类型 2口译员3高级口译员4起步小时5担保金6订单会费金额7翻译取消罚金',
  `remark` varchar(100) DEFAULT NULL COMMENT '解释',
  `countryid` int(11) DEFAULT NULL COMMENT '目的地国家编码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `unit` varchar(20) DEFAULT NULL COMMENT '货币单位',
  PRIMARY KEY (`priceid`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='价格表';

#
# Data for table "t_price"
#

INSERT INTO `t_price` VALUES (66,5.00,'口译员',2,'口译员每小时单价',2,'2016-01-25 13:05:03','美元'),(67,8.00,'高级口译员',3,'高级口译员每小时单价',2,'2016-01-25 13:05:03','美元'),(68,2.00,'起步小时',4,'每笔订单至少选择的服务时间',2,'2016-01-25 13:05:03','美元'),(69,0.01,'担保金金额',5,'用户端支付订单的担保金',2,'2016-01-25 13:05:03','美元'),(70,6.00,'订单会费金额',6,'翻译完成订单后扣除的会费',2,'2016-01-25 13:05:03','美元'),(71,10.00,'翻译取消罚金',7,'翻译临时取消订单后扣除的会费',2,'2016-01-25 13:05:03','美元'),(109,5.00,'口译员',2,'口译员每小时单价',1,'2016-01-29 15:35:00','人民币'),(110,9.00,'高级口译员',3,'高级口译员每小时单价',1,'2016-01-29 15:35:00','人民币'),(111,2.50,'起步小时',4,'每笔订单至少选择的服务时间',1,'2016-01-29 15:35:00','人民币'),(112,2.00,'担保金金额',5,'用户端支付订单的担保金',1,'2016-01-29 15:35:00','人民币'),(113,6.00,'订单会费金额',6,'翻译完成订单后扣除的会费',1,'2016-01-29 15:35:00','人民币'),(114,7.00,'翻译取消罚金',7,'翻译临时取消订单后扣除的会费',1,'2016-01-29 15:35:00','人民币');

#
# Structure for table "t_sys_area"
#

DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT COMMENT '地区编码',
  `areaname` varchar(100) DEFAULT NULL COMMENT '地区名称',
  `parentid` int(11) DEFAULT NULL COMMENT '父节点，若是国家则为0',
  `userid` int(11) DEFAULT NULL COMMENT '添加人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`areaid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='地区表';

#
# Data for table "t_sys_area"
#

INSERT INTO `t_sys_area` VALUES (1,'中国',0,1,NULL),(2,'美国',0,NULL,NULL),(3,'北京',1,NULL,NULL),(4,'北京',3,NULL,NULL),(5,'辽宁',1,NULL,NULL),(6,'沈阳',5,NULL,NULL),(7,'纽约州',2,NULL,NULL),(8,'纽约市',7,NULL,NULL),(9,'俄亥俄州',2,NULL,NULL),(10,'哥伦布',9,NULL,NULL),(11,'抚顺',5,1,'2015-12-03 09:45:16'),(12,'铁岭',5,1,'2015-12-03 09:48:33'),(14,'锦州',5,1,'2015-12-03 09:50:44'),(15,'法国',10,1,'2015-12-22 15:31:16'),(16,'法国',0,1,'2015-12-22 15:31:29'),(18,'巴黎',16,1,'2015-12-22 15:32:10'),(20,'营口',5,1,'2015-12-25 15:42:43'),(21,'营口',15,1,'2015-12-25 15:44:13'),(23,'韩国',0,1,'2015-12-25 15:45:19'),(24,'明洞',23,1,'2015-12-25 15:45:31'),(25,'大连',21,1,'2016-01-19 15:15:23'),(26,'山东',1,1,'2016-01-19 15:20:23'),(27,'巴黎',16,1,'2016-01-19 17:42:56'),(28,'fyt',18,1,'2016-01-19 17:51:00'),(29,'fyt',18,1,'2016-01-19 17:51:12'),(30,'菏泽',26,1,'2016-01-19 17:53:02'),(31,'锦州',5,1,'2016-01-22 11:09:57'),(32,'1212',0,1,'2016-01-25 11:15:59'),(33,'日本',0,1,'2016-01-27 10:45:08'),(36,'黑龙江',5,1,NULL);

#
# Structure for table "t_sys_language"
#

DROP TABLE IF EXISTS `t_sys_language`;
CREATE TABLE `t_sys_language` (
  `languageid` int(11) NOT NULL AUTO_INCREMENT COMMENT '语种编码',
  `languagename` varchar(200) DEFAULT NULL COMMENT '语种名称',
  `userid` int(11) DEFAULT NULL COMMENT '添加人编码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`languageid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='语种表';

#
# Data for table "t_sys_language"
#

INSERT INTO `t_sys_language` VALUES (1,'英语',1,'2015-11-25 12:58:01'),(5,'汉语',1,'2015-11-30 11:02:26'),(6,'西班牙语',1,'2015-11-30 11:02:39'),(8,'日语',1,'2015-11-30 11:02:47'),(10,'德语',1,'2015-11-30 11:03:43'),(11,'四川话',1,'2015-11-30 11:03:51'),(17,'中国话',1,'2015-12-01 14:56:39');

#
# Structure for table "t_sys_menu"
#

DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单编码',
  `parentid` int(11) DEFAULT '0' COMMENT '父节点',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '导航 icon',
  `icon_bg` varchar(50) DEFAULT NULL COMMENT '导航 icon 背景',
  `sort` int(11) DEFAULT NULL COMMENT '序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用。1：是；0：否；',
  `ctime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='菜单编码';

#
# Data for table "t_sys_menu"
#

INSERT INTO `t_sys_menu` VALUES (2,1,'用户管理','','fa-male','bg-primary',5,1,'2014-07-04 00:25:24'),(3,2,'用户管理','/background/user/userindex','fa-users','',6,1,NULL),(4,1,'语种管理',NULL,'fa-adn','bg-danger',16,1,'2015-11-25 15:19:57'),(5,4,'语种管理','/background/language/language_index','fa-users','',17,1,'2015-11-25 15:23:06'),(6,1,'用户意见',NULL,'fa-folder-open','bg-primary',22,1,NULL),(7,6,'用户意见','/background/comment/index','fa-users','',23,1,NULL),(8,1,'订单管理','','fa-file-text-o','bg-danger',1,1,'2014-07-04 00:25:24'),(9,8,'订单列表管理','/background/order/findOrder','fa-users','',2,1,'2014-07-25 11:35:38'),(10,8,'取消订单管理','/background/order/findCancelOrder','fa-users','',4,1,'2015-11-26 10:25:30'),(12,2,'翻译管理','/background/user/tranindex','fa-users','',7,1,NULL),(13,1,'资料审核管理',NULL,'fa-pencil','bg-danger',8,1,NULL),(14,13,'资料审核管理','/background/useraudit/auditindex','fa-users','',9,1,NULL),(15,8,'评价管理','/background/ordercomment/index','fa-users','',3,1,NULL),(16,1,'文字管理',NULL,'fa-font','bg-danger',20,1,NULL),(17,16,'文字管理','/background/word/word_index','fa-users','',21,1,NULL),(20,1,'专业管理','','fa-gears','bg-primary',14,1,'2014-07-04 00:25:24'),(21,20,'专业管理','/background/specialty/entrance','fa-users','',15,1,'2014-07-04 00:25:24'),(22,1,'消息管理',NULL,'fa-volume-up','bg-danger',24,1,'2015-12-02 08:36:22'),(23,22,'消息管理','/background/message/index','fa-users','',25,1,'2015-12-02 08:37:33'),(24,1,'价格管理','','fa-dollar','bg-danger',12,1,'2015-12-02 09:19:27'),(25,24,'价格管理','/background/price/price_index','fa-users','',13,1,'2015-12-02 09:22:18'),(26,1,'管理员管理',NULL,'fa-user','bg-primary',10,1,NULL),(27,26,'管理员管理','/background/useradmin/useradminindex','fa-users','',11,1,NULL),(28,1,'地区管理',NULL,'fa-th','bg-primary',18,1,NULL),(29,28,'地区管理','/background/area/index','fa-users','',19,1,NULL);

#
# Structure for table "t_sys_menu_user"
#

DROP TABLE IF EXISTS `t_sys_menu_user`;
CREATE TABLE `t_sys_menu_user` (
  `menuroleid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编码',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户编码',
  `menuid` int(11) NOT NULL DEFAULT '0' COMMENT '菜单编码',
  PRIMARY KEY (`menuroleid`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='用户菜单关联表';

#
# Data for table "t_sys_menu_user"
#

INSERT INTO `t_sys_menu_user` VALUES (1,1,8),(2,1,2),(3,1,3),(4,1,9),(5,1,4),(8,1,5),(9,1,6),(10,1,7),(11,1,10),(13,1,12),(14,1,13),(15,1,14),(16,1,15),(17,1,16),(18,1,17),(21,1,20),(22,1,21),(23,1,22),(24,1,23),(25,1,24),(26,1,25),(27,1,26),(28,1,27),(29,1,28),(30,1,29),(105,40,8),(106,40,9),(107,40,15),(108,40,10),(109,40,26),(110,40,27),(111,40,22),(112,40,23),(113,43,2),(114,43,3),(115,43,12),(116,43,13),(117,43,14);

#
# Structure for table "t_sys_specialty"
#

DROP TABLE IF EXISTS `t_sys_specialty`;
CREATE TABLE `t_sys_specialty` (
  `specialtyid` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业编码',
  `specialtyname` varchar(200) DEFAULT NULL COMMENT '专业名称',
  `userid` int(11) DEFAULT NULL COMMENT '添加人编码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`specialtyid`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8 COMMENT='专业表';

#
# Data for table "t_sys_specialty"
#

INSERT INTO `t_sys_specialty` VALUES (343,'阿道夫',1,'2015-11-30 15:28:50'),(372,'联系',1,'2015-12-01 11:16:32'),(374,'管理',1,'2015-12-01 11:34:39'),(388,'阿斯蒂芬请问',1,'2015-12-01 13:03:44'),(389,'同意',1,'2015-12-01 13:04:27'),(393,'爱的',1,'2015-12-01 16:31:29'),(394,'商学院',1,'2015-12-22 15:28:35'),(395,'计算机科学与技术',1,'2015-12-25 15:39:12');

#
# Structure for table "t_sys_validatecode"
#

DROP TABLE IF EXISTS `t_sys_validatecode`;
CREATE TABLE `t_sys_validatecode` (
  `codeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '验证码编码',
  `userid` int(11) DEFAULT NULL COMMENT '用户编码',
  `obj` varchar(200) DEFAULT NULL COMMENT '手机号或邮箱',
  `code` int(6) DEFAULT NULL COMMENT '验证码',
  `type` int(2) DEFAULT NULL COMMENT '类型 1注册2找回密码',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='验证码表';

#
# Data for table "t_sys_validatecode"
#


#
# Structure for table "t_transpay"
#

DROP TABLE IF EXISTS `t_transpay`;
CREATE TABLE `t_transpay` (
  `transpayid` varchar(40) NOT NULL DEFAULT '' COMMENT '充值编码',
  `userid` int(11) DEFAULT NULL COMMENT '翻译编码',
  `amount` float(9,2) DEFAULT '0.00' COMMENT '充值金额',
  `state` int(2) DEFAULT '0' COMMENT '状态 0未支付1支付2失败',
  `transactionid` varchar(40) DEFAULT NULL COMMENT '微信或支付宝订单号',
  `paytype` int(2) DEFAULT NULL COMMENT '支付方式 1支付宝2微信',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`transpayid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='翻译充值';

#
# Data for table "t_transpay"
#


#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编码',
  `account` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `pwd` varchar(40) DEFAULT NULL COMMENT '密码',
  `name` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `sex` int(2) DEFAULT '1' COMMENT '性别 1男2女',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `education` int(2) DEFAULT NULL COMMENT '学历 1本科，2硕士，3博士',
  `school` varchar(500) DEFAULT NULL COMMENT '毕业学校',
  `idcardno` varchar(500) DEFAULT NULL COMMENT '护照号',
  `specialtyid` int(11) DEFAULT NULL COMMENT '专业编码',
  `languageid` int(11) DEFAULT NULL COMMENT '语种编码',
  `countryid` int(11) DEFAULT NULL COMMENT '服务国家编码',
  `provinceid` int(11) DEFAULT NULL COMMENT '服务省或州编码',
  `cityid` int(11) DEFAULT NULL COMMENT '服务城市编码',
  `passporturl` varchar(100) DEFAULT NULL COMMENT '护照照片url',
  `passporturlmin` varchar(100) DEFAULT NULL COMMENT '护照照片压缩url',
  `visaurl` varchar(100) DEFAULT NULL COMMENT '签证照片url',
  `visaurlmin` varchar(100) DEFAULT NULL COMMENT '签证照片压缩url',
  `studentupurl` varchar(100) DEFAULT NULL COMMENT '学生证照片url',
  `studentupurlmin` varchar(100) DEFAULT NULL COMMENT '学生证照片压缩url',
  `studentdownurl` varchar(100) DEFAULT NULL COMMENT '外语等级证明照片url',
  `studentdownurlmin` varchar(100) DEFAULT NULL COMMENT '外语等级证明照片压缩url',
  `state` int(2) DEFAULT '0' COMMENT '是否屏蔽 0未屏蔽1屏蔽',
  `token` varchar(40) DEFAULT NULL COMMENT 'APP端token',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `x` float(12,9) DEFAULT NULL COMMENT 'x坐标',
  `y` float(12,9) DEFAULT NULL COMMENT 'y轴',
  `level` int(2) DEFAULT NULL COMMENT '等级 2口译员3高级口译员',
  `balance` float(15,2) DEFAULT '0.00' COMMENT '帐户余额',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `pushcode` varchar(50) DEFAULT NULL COMMENT '极光注册码',
  `system` int(2) DEFAULT NULL COMMENT '1 android，2 ios',
  `usertype` int(2) DEFAULT NULL COMMENT '用户类型 1后台管理员2翻译3用户',
  `isadmin` int(2) DEFAULT '0' COMMENT '是否超级管理员 0否1是',
  `headurl` varchar(100) DEFAULT NULL COMMENT '头像url',
  `auditstate` int(2) DEFAULT '0' COMMENT '翻译人员审核状态 0未填资料，1审核中，2审核不通过，3审核通过，4申请更新资料，5更新资料审核不通过',
  `remark` varchar(500) DEFAULT NULL COMMENT '个人简介',
  `ip` varchar(20) DEFAULT NULL COMMENT '登录ip地址',
  `lasttime` datetime DEFAULT NULL COMMENT '上次登录时间',
  `transtate` int(2) DEFAULT '0' COMMENT '翻译注册邮箱是否验证 0未验证1验证',
  `exitbalance` float(9,2) DEFAULT '0.00' COMMENT '退出返还金额',
  `apptoken` varchar(300) DEFAULT NULL COMMENT '荣云token',
  `isexit` int(2) DEFAULT '0' COMMENT '是否申请退出 0未申请1申请退出2已退3未退',
  `exittime` datetime DEFAULT NULL COMMENT '申请退出时间',
  `exitpaytype` tinyint(1) DEFAULT NULL COMMENT '申请退出支付方式 1微信2支付宝',
  `exitpayaccount` varchar(200) DEFAULT NULL COMMENT '申请退出支付账号',
  `iosresult` varchar(40) DEFAULT NULL COMMENT 'ios推送号',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','超级管理员',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'77734019D3D04DAE87F90E55B4C210B5wert','2015-11-24 13:27:40',NULL,NULL,NULL,500.00,NULL,'awsd',1,1,1,'123',0,NULL,'61.161.243.74','2016-02-04 15:28:24',1,0.00,NULL,0,NULL,NULL,NULL,NULL),(161,'18802456377','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'CCAA45BE2A394D8080C13B422E8EF46A','2016-02-02 15:33:04',NULL,NULL,NULL,0.00,NULL,NULL,2,3,0,NULL,0,NULL,NULL,'2016-02-03 11:01:52',0,0.00,'SaBD2aq2MFDXuRh7jeSHYPnOPJ4OJAYNfM464oThqgwjUD+R7X0VmRK3T1X28JvcOMcrjUbsS+1LBObA+76puA==',0,'2016-02-02 15:33:04',NULL,NULL,NULL),(162,'15801122123@163.com','e10adc3949ba59abbe56e057f20f883e',' zhangdz',1,27,1,'11111','1111111',343,1,0,3,4,'/upload/images/2016/2/2/28D589F0B7C24EACBDF14138AB1A0FB3.jpg','/upload/images/2016/2/2/28D589F0B7C24EACBDF14138AB1A0FB3-min.jpg','/upload/images/2016/2/2/CC13E4C48DFA485E8BCFDACF9CD6F943.jpg','/upload/images/2016/2/2/CC13E4C48DFA485E8BCFDACF9CD6F943-min.jpg','/upload/images/2016/2/2/3DA23E2FFF954DE7A1A643B2E9C43146.jpg','/upload/images/2016/2/2/3DA23E2FFF954DE7A1A643B2E9C43146-min.jpg','/upload/images/2016/2/2/C11CC0FE92B8487BB7B42EC10F46101B.jpg','/upload/images/2016/2/2/C11CC0FE92B8487BB7B42EC10F46101B-min.jpg',0,'6A8CBA454EC547E3B7826EDB24147123','2016-02-02 16:02:50',NULL,NULL,3,0.00,NULL,NULL,1,2,0,'/upload/images/2016/2/4/29591EEC24614553B4767F0333DECF71-min.jpg',4,'hehehehehehehehehehehehehehehehehehheehehehehehehehehheehhehehehehheheheehehehehehehehehehehehehehehehehehehehehehehehehe',NULL,'2016-02-04 11:12:42',1,0.00,'aXzrIjS6ISHEeAtUUufwuis/9QubkIymiMsy0eaBU79/iXEWSSZ7SGlBH/sQV0ePKP7+pheX9os=',0,'2016-02-02 16:02:50',NULL,NULL,NULL),(163,'15002486406','d8578edf8458ce06fbc5bb76a58c5ca4','qwerty',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'B71020E7A0704CCB90657B0201F519FD','2016-02-02 16:07:31',NULL,NULL,NULL,0.00,'1990-02-02',NULL,2,3,0,'/upload/images/2016/2/3/6BC16654B4734C95A76CBB5906A910DB-min.jpg',0,NULL,NULL,'2016-02-03 15:48:38',0,0.00,'mtMvAbeUVL15ZRxLhDEIbpk+19tlomIloO6UeOLvBxCwtx/c5T2urwq6qmemATshVEeMIQmgBBlplyLTR0ldnQ==',0,'2016-02-02 16:07:31',NULL,NULL,NULL),(165,'jianghh@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e','惠惠惠惠惠',2,21,1,'哦lol你静默静默进攻敏敏呵呵','676766764',374,6,1,3,4,'/upload/images/2016/2/4/8A013306045F48EC8EE2415EE2402332.jpg','/upload/images/2016/2/4/8A013306045F48EC8EE2415EE2402332-min.jpg','/upload/images/2016/2/4/2938C4B190DD4E68BAAC5736626F2F2F.jpg','/upload/images/2016/2/4/2938C4B190DD4E68BAAC5736626F2F2F-min.jpg','/upload/images/2016/2/4/4EA6D15595C544F2BE0690594099C3A8.jpg','/upload/images/2016/2/4/4EA6D15595C544F2BE0690594099C3A8-min.jpg','/upload/images/2016/2/4/0A1359CD94984DA5985A3450D31000E1.jpg','/upload/images/2016/2/4/0A1359CD94984DA5985A3450D31000E1-min.jpg',0,'D751E07015904BEE86CEE9C8A9224E2E','2016-02-02 16:23:09',NULL,NULL,2,193.00,NULL,NULL,1,2,0,'/upload/images/2016/2/4/2F848D6108D046CBB1D34CB070AFE1DF-min.jpg',3,'拖同你民工明明民工敏敏LOL弄明明哦你明明哦公民你敏敏个垃圾民工女儿why',NULL,'2016-02-04 13:41:11',1,0.00,'MJ+FG5rLbgQBy1UBiyRg1fnOPJ4OJAYNfM464oThqgwjUD+R7X0VmYtJ30EGw4e+AYqnRLB2HzlLBObA+76puA==',0,'2016-02-02 16:23:09',NULL,NULL,NULL),(166,'15921112387','2cc8339428e54ae9072ae1a5b6cf9e23','波波',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'A32B197E404F4DD6A41E2AEE6EA51334','2016-02-02 17:06:16',NULL,NULL,NULL,0.00,'1993-01-24',NULL,1,3,0,'/upload/images/2016/2/2/C848411767BB4DC08A4A079A546C0DDB-min.jpg',0,NULL,NULL,'2016-02-02 17:06:28',0,0.00,'SdEVc+cndjbqHN2S+VFtf/nOPJ4OJAYNfM464oThqgwjUD+R7X0VmXWBd8CQnfkJ0rtcWvJdU+1LBObA+76puA==',0,'2016-02-02 17:06:16',NULL,NULL,NULL),(167,'weishunbosw123@163.com','2cc8339428e54ae9072ae1a5b6cf9e23',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'5CE9D4DBF4514FFD9F4C43D6BA97507D','2016-02-02 17:18:14',NULL,NULL,NULL,0.00,NULL,NULL,1,2,0,NULL,0,NULL,NULL,'2016-02-02 17:26:35',1,0.00,'ks28P+6t10NZAyS44XvA8/bbsiT4fyT74fnCUIs9TO4clHuCg2ejMkrOL4iGXis+f2RXBp9VAtU=',0,'2016-02-02 17:18:14',NULL,NULL,NULL),(168,'zhangdz@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'6173089FA46F4C1994EE57B82385AD4E','2016-02-03 09:14:23',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,0,0.00,NULL,0,'2016-02-03 09:14:23',NULL,NULL,NULL),(169,'hewl@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'17EA9DEFC3BB489EB9A65FFAD0342C1A','2016-02-03 09:15:01',NULL,NULL,NULL,0.00,NULL,NULL,1,2,0,NULL,1,NULL,NULL,'2016-02-04 11:13:09',1,0.00,'anaBdahzvSWLFMH0m4mNU/nOPJ4OJAYNfM464oThqgwjUD+R7X0VmVLOpls76SIHTPWCt38txkBLBObA+76puA==',0,'2016-02-03 09:15:01',NULL,NULL,NULL),(170,'xiaojiao.wang@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1043739CFD884F5DB0CDEFB279510833','2016-02-03 09:29:47',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,0,0.00,NULL,0,'2016-02-03 09:29:47',NULL,NULL,NULL),(171,'liub01@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e','刘冰',2,21,1,'继续绝对经典家金像奖独家好多好多呵呵','283847747',395,8,1,5,20,'/upload/images/2016/2/3/21A37F9EC9374040B7EA644116384E78.jpg','/upload/images/2016/2/3/21A37F9EC9374040B7EA644116384E78-min.jpg','/upload/images/2016/2/3/CAACDD4C0FA44BEEA2D24FD7BAE7284C.jpg','/upload/images/2016/2/3/CAACDD4C0FA44BEEA2D24FD7BAE7284C-min.jpg','/upload/images/2016/2/3/3FA0735871AE4ACC929AF8F107436A07.jpg','/upload/images/2016/2/3/3FA0735871AE4ACC929AF8F107436A07-min.jpg','/upload/images/2016/2/3/500A6AD064EC45A2866AFA6A73880195.jpg','/upload/images/2016/2/3/500A6AD064EC45A2866AFA6A73880195-min.jpg',0,'A6EEA507460A47C197E5370187941F65','2016-02-03 09:35:28',NULL,NULL,2,194.00,NULL,NULL,1,2,0,'/upload/images/2016/2/3/D4629CEA851147208FD0296919ABDDBC-min.jpg',3,'你的绝对经典家的你就发怒发怒发怒会复活的家大家记得回到家大家好多话好多好多呵呵hdh能对你的你继续亟待解决回到家大家好多话好多',NULL,'2016-02-04 13:44:35',1,0.00,'+nlxYnh1lO9P/g3/VXuH8vbbsiT4fyT74fnCUIs9TO4clHuCg2ejMr9IwtDlxJthBVKfzIVMcO0=',0,'2016-02-03 09:35:28',NULL,NULL,NULL),(172,'wang_xiao_jiao@yeah.net','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'30BEFABA92154D77A6F89BBC7339FCB3','2016-02-03 09:37:32',NULL,NULL,NULL,0.00,NULL,NULL,1,2,0,NULL,4,NULL,NULL,'2016-02-04 08:43:40',1,0.00,'OVvZPwKhCx+DXBQdshEJ3vnOPJ4OJAYNfM464oThqgwjUD+R7X0VmZNkOSKSHTDchmN/AtneMxhLBObA+76puA==',0,'2016-02-03 09:37:32',NULL,NULL,NULL),(173,'zhangfy@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e','111111',1,1111,1,'1111','111111111111',343,1,1,3,4,'/upload/images/2016/2/3/3EB1644261CF4E27ADD9D8174F570086.jpg','/upload/images/2016/2/3/3EB1644261CF4E27ADD9D8174F570086-min.jpg','/upload/images/2016/2/3/765707A2612A417D8B24B6B5049BDBC8.jpg','/upload/images/2016/2/3/765707A2612A417D8B24B6B5049BDBC8-min.jpg','/upload/images/2016/2/3/386B0551E37F4175AD4660BB6A27102F.jpg','/upload/images/2016/2/3/386B0551E37F4175AD4660BB6A27102F-min.jpg','/upload/images/2016/2/3/27EFD6D2B33D45B1A3D87ECFA4F9180D.jpg','/upload/images/2016/2/3/27EFD6D2B33D45B1A3D87ECFA4F9180D-min.jpg',0,'C031EAF241F44A5C8113BA2738336B1B','2016-02-03 10:12:32',NULL,NULL,3,200.00,NULL,NULL,1,2,0,'/upload/images/2016/2/3/2E89A44628034CECAF68046D326A50EE-min.jpg',3,'111111',NULL,'2016-02-04 15:30:02',1,200.00,'O9DHHIM6QEte8/SsQI3BPvnOPJ4OJAYNfM464oThqgwjUD+R7X0VmTPN3wP0dM0N/o6Wu+qe1nhLBObA+76puA==',0,'2016-02-03 16:25:56',1,'zfy1242288285',NULL),(174,'15940279100','e10adc3949ba59abbe56e057f20f883e','xiaojiao',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'719222AB174840C093C3FCC61A8AD75B','2016-02-03 10:32:36',NULL,NULL,NULL,0.00,'1991-02-03',NULL,2,3,0,'/upload/images/2016/2/3/F74395390D2F436A8252DCDAF7AFC159-min.jpg',0,NULL,NULL,'2016-02-03 12:42:35',0,0.00,'+odhp+hCySc+8oiFPmRFmvnOPJ4OJAYNfM464oThqgwjUD+R7X0VmVgf9cK2iJ9TijrCO4nq64xLBObA+76puA==',0,'2016-02-03 10:32:36',NULL,NULL,NULL),(175,'haowen@163.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'0785E81293CC41F9B853D725EAD8A3B9','2016-02-03 14:51:05',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,0,0.00,NULL,0,'2016-02-03 14:51:05',NULL,NULL,NULL),(176,' haowen86@163.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'1E51D9D941144C58A828C969A3C4BFD1','2016-02-03 14:51:47',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,1,0.00,NULL,0,'2016-02-03 14:51:47',NULL,NULL,NULL),(177,'haowen86@163.com','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'486669878D40400FAC36A97121E14B64','2016-02-03 14:53:00',NULL,NULL,NULL,0.00,NULL,NULL,1,2,0,NULL,1,NULL,NULL,'2016-02-03 16:26:28',1,0.00,'XKZ/gEL5IQiQRyn/KgBFS/nOPJ4OJAYNfM464oThqgwjUD+R7X0VmZu0o0CunOya6wAA6DHxPeJLBObA+76puA==',0,'2016-02-03 14:53:00',NULL,NULL,NULL),(178,'fan.zhang@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e','张帆',2,64,1,'哦咯JOJO咯himMSN公民log迷宫','6867649766',395,10,1,3,4,'/upload/images/2016/2/4/E295D339AAC44D43AC6019891A98A9D5.jpg','/upload/images/2016/2/4/E295D339AAC44D43AC6019891A98A9D5-min.jpg','/upload/images/2016/2/4/DA9F3EE172F0416EB3929AD5534F2D59.jpg','/upload/images/2016/2/4/DA9F3EE172F0416EB3929AD5534F2D59-min.jpg','/upload/images/2016/2/4/5EC4257CCD4A4155B7020885068B16CA.jpg','/upload/images/2016/2/4/5EC4257CCD4A4155B7020885068B16CA-min.jpg','/upload/images/2016/2/4/4EE6CCBEC5444C57B5EBF202919DA7F5.jpg','/upload/images/2016/2/4/4EE6CCBEC5444C57B5EBF202919DA7F5-min.jpg',0,'F258E0113A65436A8085DE7C48889529','2016-02-03 15:41:18',NULL,NULL,2,0.00,NULL,NULL,1,2,0,'/upload/images/2016/2/4/DA7E8A7973934315A94A4C9156235E31-min.jpg',3,'root哦JOJO诺log女模logoMP3咯很有名哦哦额LOL又拖哦咯MSN哦来lol哦咯JOJO',NULL,'2016-02-04 15:42:09',1,0.00,'qKTq9pgqXOTZKEM6wYX3+/nOPJ4OJAYNfM464oThqgwjUD+R7X0VmYAVh4MMfovZjqc0bV6imJFLBObA+76puA==',0,'2016-02-03 15:41:18',NULL,NULL,NULL),(179,'18842457876','e10adc3949ba59abbe56e057f20f883e','诺诺闵坡敏莫柔楼多',2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'B9DD163CC76C4F0E864D6AA5CBCFED66','2016-02-03 15:44:17',NULL,NULL,NULL,0.00,'1992-02-04',NULL,1,3,0,'/upload/images/2016/2/4/02F166BB765D478985765BE8113AF986-min.jpg',0,NULL,NULL,'2016-02-04 15:29:56',0,0.00,'cHP6Nwb7dMQCt27Lnjo+zPnOPJ4OJAYNfM464oThqgwjUD+R7X0VmZL1Zs4eMLqvlYyzD98nyjVLBObA+76puA==',0,'2016-02-03 15:44:17',NULL,NULL,NULL),(180,'wenhaoli@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'92B4A2B0870741A8B17E658508E3EFC1','2016-02-03 16:28:16',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,0,0.00,NULL,0,'2016-02-03 16:28:16',NULL,NULL,NULL),(181,'weihaoli@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'E6CA6DDB0D684C5D96FCC15ACEC38E9A','2016-02-03 16:28:55',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,0,0.00,NULL,0,'2016-02-03 16:28:55',NULL,NULL,NULL),(182,'zhouxb@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'584DCBD8D22B40FFB01F1E512D140620','2016-02-03 16:30:51',NULL,NULL,NULL,0.00,NULL,NULL,1,2,0,NULL,1,NULL,NULL,'2016-02-04 11:13:53',1,0.00,'59Jy/1u+/GYJP8u6RmiA45k+19tlomIloO6UeOLvBxCwtx/c5T2urxoYsFet6hA+Vy1xEXADpoiTWL6FTIzJSQ==',0,'2016-02-03 16:30:51',NULL,NULL,NULL),(183,' yuzw@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e',NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'10056DAB9BAF40428219D1BDC8269B76','2016-02-03 16:50:03',NULL,NULL,NULL,0.00,NULL,NULL,NULL,2,0,NULL,0,NULL,NULL,NULL,1,0.00,NULL,0,'2016-02-03 16:50:03',NULL,NULL,NULL),(184,'yuzw@bluemobi.cn','e10adc3949ba59abbe56e057f20f883e','111111',1,11111,1,'111','111',343,1,1,3,4,'/upload/images/2016/2/3/2EE1C88644E1484B93F3484C96DBA59A.jpg','/upload/images/2016/2/3/2EE1C88644E1484B93F3484C96DBA59A-min.jpg','/upload/images/2016/2/3/2632799FAAEF48D59B79D2C6FDE65761.jpg','/upload/images/2016/2/3/2632799FAAEF48D59B79D2C6FDE65761-min.jpg','/upload/images/2016/2/3/05182A82C07A45918E21D78792FB5183.jpg','/upload/images/2016/2/3/05182A82C07A45918E21D78792FB5183-min.jpg','/upload/images/2016/2/3/65D885624C944FF8B363D318817D4AB5.jpg','/upload/images/2016/2/3/65D885624C944FF8B363D318817D4AB5-min.jpg',0,'6E7059EAD83842C1B0259C79EECF9A18','2016-02-03 16:51:16',NULL,NULL,3,0.00,NULL,NULL,1,2,0,'/upload/images/2016/2/4/91FDD2F45A2C4C8792484805D2952108-min.jpg',3,'111',NULL,'2016-02-04 11:22:41',1,0.00,'6RtyV0O20vBKnXgtW62Xj5k+19tlomIloO6UeOLvBxCwtx/c5T2urxQb+fb2N2fyVaY1QtfoUIZ+Hbwn8hD9Bg==',0,'2016-02-03 16:51:16',NULL,NULL,NULL),(185,'15948308596','4297f44b13955235245b2497399d7a93','weictor',1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2B06414BC1F54AF4B438DC71DF7CC0A9','2016-02-04 08:50:27',NULL,NULL,NULL,0.00,'1994-02-04',NULL,1,3,0,'/upload/images/2016/2/4/92294931F6B2407381DD052DECB27208-min.jpg',0,NULL,NULL,'2016-02-04 08:50:30',0,0.00,'OCr2GI08MKuvMk7/ARO/lvnOPJ4OJAYNfM464oThqgwjUD+R7X0VmWIAXlCsaKLyV8oaOlivlMZLBObA+76puA==',0,'2016-02-04 08:50:27',NULL,NULL,NULL);

#
# Structure for table "t_user_audit"
#

DROP TABLE IF EXISTS `t_user_audit`;
CREATE TABLE `t_user_audit` (
  `auditid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编码',
  `userid` int(11) DEFAULT NULL COMMENT '翻译编码',
  `account` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 1男2女',
  `age` int(11) DEFAULT '0' COMMENT '年龄',
  `education` varchar(2) DEFAULT NULL COMMENT '学历 1本科，2硕士，3博士',
  `school` varchar(500) DEFAULT NULL COMMENT '毕业学校',
  `idcardno` varchar(20) DEFAULT NULL COMMENT '护照号',
  `specialtyid` int(11) DEFAULT NULL COMMENT '专业编码',
  `languageid` int(11) DEFAULT NULL COMMENT '语种编码',
  `countryid` int(11) DEFAULT NULL COMMENT '服务国家编码',
  `provinceid` int(11) DEFAULT NULL COMMENT '服务省编码',
  `cityid` int(11) DEFAULT NULL COMMENT '服务城市编码',
  `passporturl` varchar(100) DEFAULT NULL COMMENT '护照照片url',
  `passporturlmin` varchar(100) DEFAULT NULL COMMENT '护照照片压缩url',
  `visaurl` varchar(100) DEFAULT NULL COMMENT '签证照片url',
  `visaurlmin` varchar(100) DEFAULT NULL COMMENT '签证照片压缩url',
  `studentupurl` varchar(100) DEFAULT NULL COMMENT '学生证照片url',
  `studentupurlmin` varchar(100) DEFAULT NULL COMMENT '学生证照片压缩url',
  `studentdownurl` varchar(100) DEFAULT NULL COMMENT '外语等级证明照片url',
  `studentdownurlmin` varchar(100) DEFAULT NULL COMMENT '外语等级证照片压缩url',
  `auditstate` int(2) DEFAULT '0' COMMENT '翻译人员审核状态 0未填资料，1审核中，2审核不通过，3审核通过，4申请更新资料，5更新资料审核不通过',
  `level` int(2) DEFAULT NULL COMMENT '等级 1初级2中级3高级',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '个人简介',
  `applytime` datetime DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='翻译申请表';

#
# Data for table "t_user_audit"
#

INSERT INTO `t_user_audit` VALUES (18,162,'15801122123@163.com','11111','1',122,'1','1111','11111',343,1,1,3,4,'/upload/images/2016/2/3/43ED3BBC25C643E59D6E7541C8037D0B.jpg','/upload/images/2016/2/3/43ED3BBC25C643E59D6E7541C8037D0B-min.jpg','/upload/images/2016/2/3/F1AC4893009C4D26B0D26817D2631510.jpg','/upload/images/2016/2/3/F1AC4893009C4D26B0D26817D2631510-min.jpg','/upload/images/2016/2/3/43028031798F48ED83862BFED3588A3F.jpg','/upload/images/2016/2/3/43028031798F48ED83862BFED3588A3F-min.jpg','/upload/images/2016/2/3/B0DA9B2007DF49C3A8C216A5B4953195.jpg','/upload/images/2016/2/3/B0DA9B2007DF49C3A8C216A5B4953195-min.jpg',4,3,'2016-02-02 16:02:50','111','2016-02-03 08:51:55'),(20,165,'jianghh@bluemobi.cn','惠惠惠惠惠','2',21,'1','哦lol你静默静默进攻敏敏呵呵','676766764',374,6,1,3,4,'/upload/images/2016/2/4/8A013306045F48EC8EE2415EE2402332.jpg','/upload/images/2016/2/4/8A013306045F48EC8EE2415EE2402332-min.jpg','/upload/images/2016/2/4/2938C4B190DD4E68BAAC5736626F2F2F.jpg','/upload/images/2016/2/4/2938C4B190DD4E68BAAC5736626F2F2F-min.jpg','/upload/images/2016/2/4/4EA6D15595C544F2BE0690594099C3A8.jpg','/upload/images/2016/2/4/4EA6D15595C544F2BE0690594099C3A8-min.jpg','/upload/images/2016/2/4/0A1359CD94984DA5985A3450D31000E1.jpg','/upload/images/2016/2/4/0A1359CD94984DA5985A3450D31000E1-min.jpg',3,2,'2016-02-02 16:23:09','拖同你民工明明民工敏敏LOL弄明明哦你明明哦公民你敏敏个垃圾民工女儿why','2016-02-04 09:08:40'),(21,167,'weishunbosw123@163.com',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-02 17:18:14',NULL,NULL),(22,168,'zhangdz@bluemobi.cn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 09:14:23',NULL,NULL),(23,169,'hewl@bluemobi.cn','111111','1',111,'1','111','111',343,1,0,3,4,'null','null','null','null','null','null','null','null',1,NULL,'2016-02-03 09:15:01','222222111','2016-02-03 09:22:36'),(24,170,'xiaojiao.wang@bluemobi.cn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 09:29:47',NULL,NULL),(25,171,'liub01@bluemobi.cn','刘冰','2',21,'1','继续绝对经典家金像奖独家好多好多呵呵','283847747',395,8,1,5,20,'/upload/images/2016/2/3/21A37F9EC9374040B7EA644116384E78.jpg','/upload/images/2016/2/3/21A37F9EC9374040B7EA644116384E78-min.jpg','/upload/images/2016/2/3/CAACDD4C0FA44BEEA2D24FD7BAE7284C.jpg','/upload/images/2016/2/3/CAACDD4C0FA44BEEA2D24FD7BAE7284C-min.jpg','/upload/images/2016/2/3/3FA0735871AE4ACC929AF8F107436A07.jpg','/upload/images/2016/2/3/3FA0735871AE4ACC929AF8F107436A07-min.jpg','/upload/images/2016/2/3/500A6AD064EC45A2866AFA6A73880195.jpg','/upload/images/2016/2/3/500A6AD064EC45A2866AFA6A73880195-min.jpg',3,2,'2016-02-03 09:35:28','你的绝对经典家的你就发怒发怒发怒会复活的家大家记得回到家大家好多话好多好多呵呵hdh能对你的你继续亟待解决回到家大家好多话好多','2016-02-03 14:38:14'),(26,172,'wang_xiao_jiao@yeah.net','可loll','2',25,'2','啦咯啦咯拒绝啦','5655',395,6,1,3,4,'/upload/images/2016/2/3/5B639925D64E4482A7EE73280E4B79D0.jpg','/upload/images/2016/2/3/5B639925D64E4482A7EE73280E4B79D0-min.jpg','/upload/images/2016/2/3/37273BAEC01D4E30896D2044DE5AB102.jpg','/upload/images/2016/2/3/37273BAEC01D4E30896D2044DE5AB102-min.jpg','/upload/images/2016/2/3/DC454516C4E54F15B107DA0CCD44621C.jpg','/upload/images/2016/2/3/DC454516C4E54F15B107DA0CCD44621C-min.jpg','/upload/images/2016/2/3/80A721B4DD23465BA2E3C35F4AFF097D.jpg','/upload/images/2016/2/3/80A721B4DD23465BA2E3C35F4AFF097D-min.jpg',4,NULL,'2016-02-03 09:37:32','啦咯loll口号','2016-02-03 10:51:45'),(27,173,'zhangfy@bluemobi.cn','111111','1',1111,'1','1111','111111111111',343,1,1,3,4,'/upload/images/2016/2/3/3EB1644261CF4E27ADD9D8174F570086.jpg','/upload/images/2016/2/3/3EB1644261CF4E27ADD9D8174F570086-min.jpg','/upload/images/2016/2/3/765707A2612A417D8B24B6B5049BDBC8.jpg','/upload/images/2016/2/3/765707A2612A417D8B24B6B5049BDBC8-min.jpg','/upload/images/2016/2/3/386B0551E37F4175AD4660BB6A27102F.jpg','/upload/images/2016/2/3/386B0551E37F4175AD4660BB6A27102F-min.jpg','/upload/images/2016/2/3/27EFD6D2B33D45B1A3D87ECFA4F9180D.jpg','/upload/images/2016/2/3/27EFD6D2B33D45B1A3D87ECFA4F9180D-min.jpg',3,3,'2016-02-03 10:12:32','111111','2016-02-03 13:41:58'),(28,175,'haowen@163.com',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 14:51:05',NULL,NULL),(29,176,' haowen86@163.com',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 14:51:47',NULL,NULL),(30,177,'haowen86@163.com','11111111','1',1111,'2','22222','11111',343,1,1,3,4,'/upload/images/2016/2/3/03899D2B2FFF4A639D7D82FCB17981EF.jpg','/upload/images/2016/2/3/03899D2B2FFF4A639D7D82FCB17981EF-min.jpg','/upload/images/2016/2/3/4EF8A60710144EC5804575F9264957A7.jpg','/upload/images/2016/2/3/4EF8A60710144EC5804575F9264957A7-min.jpg','/upload/images/2016/2/3/8994A9AB83CF4FE9B068E5EF7DF5432F.jpg','/upload/images/2016/2/3/8994A9AB83CF4FE9B068E5EF7DF5432F-min.jpg','/upload/images/2016/2/3/6269AAA46B8F410F984839A2CDA06912.jpg','/upload/images/2016/2/3/6269AAA46B8F410F984839A2CDA06912-min.jpg',1,NULL,'2016-02-03 14:53:00','11111','2016-02-03 15:06:31'),(31,178,'fan.zhang@bluemobi.cn','张帆','2',64,'1','哦咯JOJO咯himMSN公民log迷宫','6867649766',395,10,1,3,4,'/upload/images/2016/2/4/E295D339AAC44D43AC6019891A98A9D5.jpg','/upload/images/2016/2/4/E295D339AAC44D43AC6019891A98A9D5-min.jpg','/upload/images/2016/2/4/DA9F3EE172F0416EB3929AD5534F2D59.jpg','/upload/images/2016/2/4/DA9F3EE172F0416EB3929AD5534F2D59-min.jpg','/upload/images/2016/2/4/5EC4257CCD4A4155B7020885068B16CA.jpg','/upload/images/2016/2/4/5EC4257CCD4A4155B7020885068B16CA-min.jpg','/upload/images/2016/2/4/4EE6CCBEC5444C57B5EBF202919DA7F5.jpg','/upload/images/2016/2/4/4EE6CCBEC5444C57B5EBF202919DA7F5-min.jpg',3,2,'2016-02-03 15:41:18','root哦JOJO诺log女模logoMP3咯很有名哦哦额LOL又拖哦咯MSN哦来lol哦咯JOJO','2016-02-04 15:41:37'),(32,180,'wenhaoli@bluemobi.cn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 16:28:16',NULL,NULL),(33,181,'weihaoli@bluemobi.cn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 16:28:55',NULL,NULL),(34,182,'zhouxb@bluemobi.cn','1111111','1',1111,'1','111111','111',343,1,1,3,4,'/upload/images/2016/2/3/2D87454DCA9949E6BEC642E008430C7C.jpg','/upload/images/2016/2/3/2D87454DCA9949E6BEC642E008430C7C-min.jpg','/upload/images/2016/2/3/F622ED9013D146F19DBD5538E3E0DD88.jpg','/upload/images/2016/2/3/F622ED9013D146F19DBD5538E3E0DD88-min.jpg','/upload/images/2016/2/3/05C4EE52EA4F4EB4B8A03AAEAC57DD6C.jpg','/upload/images/2016/2/3/05C4EE52EA4F4EB4B8A03AAEAC57DD6C-min.jpg','/upload/images/2016/2/3/91AD4AD719E4482B9C4BC84871394AE5.jpg','/upload/images/2016/2/3/91AD4AD719E4482B9C4BC84871394AE5-min.jpg',1,NULL,'2016-02-03 16:30:51','11111','2016-02-03 16:32:08'),(35,183,' yuzw@bluemobi.cn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2016-02-03 16:50:03',NULL,NULL),(36,184,'yuzw@bluemobi.cn','111111','1',11111,'1','111','111',343,1,1,3,4,'/upload/images/2016/2/3/2EE1C88644E1484B93F3484C96DBA59A.jpg','/upload/images/2016/2/3/2EE1C88644E1484B93F3484C96DBA59A-min.jpg','/upload/images/2016/2/3/2632799FAAEF48D59B79D2C6FDE65761.jpg','/upload/images/2016/2/3/2632799FAAEF48D59B79D2C6FDE65761-min.jpg','/upload/images/2016/2/3/05182A82C07A45918E21D78792FB5183.jpg','/upload/images/2016/2/3/05182A82C07A45918E21D78792FB5183-min.jpg','/upload/images/2016/2/3/65D885624C944FF8B363D318817D4AB5.jpg','/upload/images/2016/2/3/65D885624C944FF8B363D318817D4AB5-min.jpg',3,3,'2016-02-03 16:51:16','111','2016-02-03 16:52:47');

#
# Structure for table "t_word"
#

DROP TABLE IF EXISTS `t_word`;
CREATE TABLE `t_word` (
  `wordid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `type` int(2) DEFAULT NULL COMMENT '1关于我们2使用帮助3服务条款4计费规则5服务法律及违约责任约定6法律声明及隐私政策7注册协议',
  `createtime` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`wordid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文字管理';

#
# Data for table "t_word"
#

INSERT INTO `t_word` VALUES (1,'\r\n\r\n关于我们','    “e翻译”手机APP是针对国内的商务人士出访国外，期望在到访的目的地位置附近找到可以提供翻译服务人员的一款应用程序。分为客户端和翻译端，客户端发布需求，在目的地附近寻找当地能够提供满足要求的翻译人员；翻译端接收相关的需求信息，并接单提供服务。\n     “e翻译”手机APP是由上海伊等网络科技有限公司于2016年开发，公司将企业愿景定位于：“打造一个跨国界、全球化，服务大众的异地翻译服务预约平台！”在满足用户需求的同时，创造一种全新的消费模式，打破信息孤岛、沟通壁垒和地缘结构，颠覆以往传统的跨境出行模式让语言不再成为沟通的障碍。\n',1,'2016-01-20 18:21:08'),(2,'\r\n\r\n使用帮助','使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助使用帮助111111111111111111111',2,'2015-12-23 15:33:46'),(3,'\r\n\r\n服务条款','《e翻译信息服务平台用户使用规则》\n\n重要提示：在使用e翻译信息服务平台服务之前，请您务必认真阅读本使用规则及附件（简称“本规则”），须充分理解各条款内容，特别是涉及免除或限制责任条款。当您进入e翻译信息服务平台，接受或使用平台各项服务时，即表示您已知悉并同意本规则及附件的全部内容，如您不同意本规则中任何条款，应当立即停止使用。\n您必须具备完全行为能力才能使用平台服务。若您不具备前述行为能力，则您本人及您的监护人、代理人应依法承担因此导致的全部法律责任。\n我们的平台：指e翻译信息服务平台（简称“平台”），是由上海伊等网络科技有限公司开发并运营的，包括官方网站（http://www.easiertrans.com）、手机APP、官方服务电话、第三方网页链接、微信、微博、短消息等在内的综合信息平台，可以向用户提供翻译信息以及获取信息的相关途径。 我们提供的服务是：在我们的平台上，用户可以实现发布和（或）获取海外翻译需求信息，以及与此相关的订单记录、费用测算、评价评级等活动。但平台本身并不实际提供翻译服务，也不代表、代理任何一方用户提供翻译服务，仅充当用户之间的中间人，用户之间使用或提供翻译服务受其签订（或将要履行）的协议约束，平台不是此类协议中的任一方主体。\n我们的用户：依法具有完全行为能力的自然人或法人使用或接受平台服务即为平台用户，包括翻译服务使用方和翻译服务提供方。\n一、用户注册\n1.1自行注册：翻译服务使用方在首次使用或接受平台服务前，按照平台提示信息独立完成注册。\n1.2 协助注册：翻译服务使用方在首次进入平台后或者使用平台服务前，由平台根据用户提供的信息协助其完成注册。\n1.3审核注册：翻译服务提供方应当按照平台提示信息进行注册，并按要求完成相关支持资料的提供、人工审核和审批等流程，通过后方能完成注册。\n1.4用户完成注册后，即可享受平台提供的各项服务，同时应当遵守并履行本规则各项义务。用户以平台认可的其他方式接受或使用翻译服务视为已完成注册。\n二、服务项目\n2.1信息服务\n2.1.1平台为用户提供发送翻译服务需求的请求（下单）和接受该请求（接单）的信息推送服务，以及用户达成和履行翻译服务协议的信息记录服务。\n2.1.2翻译服务提供方通过平台获取信息后，应当向平台支付信息服务费。\n2.2结算服务\n2.2.1平台为用户之间的翻译服务费用结算提供服务。翻译服务结束后，翻译服务使用方应当按照平台订单记录的时间、服务小时数和平台公布的收费标准向翻译服务提供方支付翻译服务费。 平台会根据市场需求或用户反馈更新费用标准，用户应当注意查看平台最新公布收费标准。\n2.2.2平台可以为用户设立预存账户，并根据用户授权代为支付或划取相关费用 （包括预付定金、翻译信息服务费，翻译服务费及其他费用或违约金）。\n2.3评价服务\n2.3.1 用户可以通过平台对翻译服务行为做出评价或提出意见，评价内容应当客观真实，不得包含辱骂、诋毁以及法律禁止性信息，不得违反平台规则。否则，平台有权采取相关措施，包括但不限于删除评价、限制或禁止使用、要求赔偿损失以及追究其他责任。\n2.3.2用户不得以不当方式帮助他人提高评价，不得对其他用户实施威胁、敲诈。\n2.3.3平台可以根据评价统计，对用户进行综合评定，具体评定办法由平台另行制定。\n2.4调查处理服务\n2.4.1 如用户在使用平台过程中以及接受或履行翻译服务过程中发生争议，并选择使用平台的调查处理服务，则表示认可平台作为独立第三方根据所了解的事实及平台规则做出的调处决定。\n2.4.2 用户应当理解并同意，在争议调处服务中，平台人员并非专业判决人士，仅能以普通人的认知对用户提交的凭证进行判断，平台对调处结果免责。\n三、用户义务\n3.1用户使用或接受平台服务时，应当遵守平台秩序，承担以下义务：\n3.1.1用户须向平台提供真实合法的有效信息， 如因提供的信息虚假、错误、不准确、不完整，所导致的服务及信息偏差、失误，平台不承担任何责任；由此引起的任何损失由用户自行承担。\n3.1.2用户应当妥善保管自己的账号，且不应在没有法律授权的情况下提供给他人使用或这使用他人账号。\n3.1.3用户不得利用平台骚扰、妨碍他人或从事任何违法或侵权行为（包括但不限于恶意下单、接单、多次撤单、取消订单等影响平台或其他用户的行为）。\n3.1.4 用户不得影响平台的正常运行，不得进行危害平台服务或影响平台数据的行为。\n3.1.5 当平台提出合理请求时，用户应提供身份证明，相关用户信息支持文件等。\n3.1.6 用户在使用平台服务过程中，所产生的应纳税费，以及一切硬件、软件和网络通讯服务及其它方面的费用，均由其自行承担。\n3.2用户违反平台规则，阻碍平台管理，平台有权采取相关处理措施，包括但不限于：信息删除、屏蔽处理、限制使用、终止服务、查封或注销账号等。如造成平台损失，用户还应赔偿平台包括但不限于直接经济损失、商誉损失、对外垫付或赔偿款项、和解或调解款项、律师费、差旅费、诉讼费用、行政罚款等间接经济损失。\n3.3 用户同意平台向其发送商业性短信息，用以通知、提醒、确认平台使用的相关内容及优惠信息等。\n四、各方责任\n4.1 除本规则载明责任外，平台不对翻译服务中产生的争议及遭受的损失承担责任。\n4.2 翻译服务提供方为翻译服务使用方同意的翻译人员，如双方在履行翻译服务过程中发生争议、纠纷和损失，平台会尽力提供调处服务，但对于双方的损失不承担任何责任。\n4.3鉴于互联网服务的特殊性，以及平台信息来源于用户提供，故平台无法逐一审查信息的真实性、准确性，对此用户自己应审慎判决并独立做出决定。对因此导致的损害，除非平台故意造成外，平台不承担任何责任。\n4.4平台提供的翻译信息服务受制于用户使用情况，平台有权不经事先通知，随时变更、中断或终止部分或全部的服务，并且不保证服务一定能满足用户要求。\n4.5用户未通过平台认可的途径、方式下单、接单，则不能享受本规则中任何权利，因此发生的争议以及造成的损失，平台不承担任何责任。\n五、知识产权\n5.1 平台包含的所有内容，包括但不限于文本、图形、标志及软件的所有权均属上海伊等网络科技有限公司所有，受知识产权等法律法规的保护，您在使用服务过程中不得以任何形式侵害所有人的上述权利。\n5.2 未经平台允许，您不得擅自复制或发送任何平台内容，不得修改平台相关程序或据此创建衍生产品或竞争产品。\n六、规则的发布、变更和终止\n6.1平台所有通过官网、手机app、微信公众号发布的实施细则、公告、通知、产品或流程说明等均视为本规则的不可分割的组成部分，与本规则具有同等法律效力。\n6.2本规则一经发布即生效。平台可以通过官网、手机app、微信、微博、短信等方式对本规则内容的发布、修改、增加、废止等作出公布或通知，也可以就某些功能进行限制或终止使用，用户应当随时关注平台公示信息。规则内容一经公布或通知即替代原规则内容发生效力，如用户不同意发布或变更的内容，应立即停止使用本平台的相关服务；若用户继续使用平台服务，则视为同意发布或变更事项。\n6.3 出现以下情况时，平台有权限制或终止向用户提供服务：\n6.3.1提供的手机号码或邮箱不存在或无法接收信息，且没有其他方式可以进行联系沟通。\n6.3.2本规则变更时，用户明示并通知平台不愿接受新的变更内容的。\n6.3.3 连续180天没有使用平台服务的。\n6.3.4 存在违法或违约行为的。\n6.3.5 其他为维护平台运营秩序采取的限制或终止服务措施。\n6.4 平台在限制或终止提供服务后，仍享有下列权利：\n6.4.1继续保存用户的注册信息及使用平台的服务信息。\n6.4.2就用户的违法或违约行为主张法律责任。\n七、法律适用与管辖\n7.1本规则之效力、解释、变更、执行与争议解决均适用当地法律法规，如与之相违背的，以当地法律法规为首要依据。如无相关法律规定的，则应参照通用商业惯例和（或）行业惯例。用户在使用过程中，因违反当地法律、法规或其他法律规定而受到国家有关部门处罚或处理的，由责任方自行承担。\n7.2因使用平台服务产生争议，应充分友好协商处理；若协商不成，应以平台运营商即上海伊等网络科技有限公司住所地人民法院为管辖法院。\n7.3本规则任一条款被废止或被视为无效的，不影响本规则其余条款的有效性。本规则的最终解释权归平台运营方上海伊等网络科技有限公司所有。\n相关释义：\n平台服务：指基于互联网、通讯技术，包含官网、手机APP、官方客服电话、第三方网页链接、微信、微博以及其他平台认可的服务方式在内的翻译信息服务。\n手机app：指包含翻译服务使用方客户端、翻译服务提供方客户端等在内的由上海伊等网络科技有限公司研发的客户端。\n翻译服务：指翻译服务提供方直接向翻译服务使用方提供的有偿翻译服务。\n帐号：指用户进入和使用平台，以及接受平台服务的账号。\n注册号：指用户用以登录账号的号码。\n预存账户：指用户设立账户预存一定费用，并授权平台代为结算并划扣翻译信息服务费或翻译服务费等费用。翻译服务使用方用户可以设立预存账户，翻译服务提供方用户必须设立预存账户。\n订单：指通过平台记录翻译服务使用方和提供方具体信息的电子订单。\n下单：指翻译服务使用方通过平台认可的方式向翻译服务提供方发出需要翻译服务的邀约。\n接单：指翻译服务提供方通过平台认可的方式做出提供翻译服务的承诺，即接受翻译服务使用方的下单。\n\n《e翻译服务协议》\n甲方：翻译服务使用方\n乙方：翻译服务提供方\n甲、乙双方均为e翻译信息服务平台用户，通过平台使用或提供翻译服务，均应遵守本协议内容。\n一、 甲方权利义务\n1.1确定预约翻译服务的行程安排有效，以及在翻译服务开始后的相关行程地点和环境适宜翻译人员提供服务，如因甲方隐瞒以上事实带来的纠纷或者损害，由甲方承担。\n1.2有权要求乙方对服务过程中的行程安排，涉及的内容信息或商业机密进行保密。\n1.3有权要求乙方尽最大努力做好翻译前期的准备工作，确保为甲方提供高质量的翻译服务。\n1.4甲方委托乙方翻译或进行其它方式处理的文件或资料中不得有违反当地国家法律或社会公德的内容。\n1.5如口译工作，应在合理的时间范围内向乙方提供相关资料及行程安排，以供乙方及时准备；如笔译工作，应提前向乙方提供所需翻译的文稿，以保证有合理充分的时间完成翻译工作。\n1.6妥善保管随身财物，如在翻译过程中出现遗失，应立即报警。\n1.7按照平台公示标准和本协议约定支付翻译服务费及其他费用。\n1.8有权对乙方的翻译服务在平台上进行客观评价。\n二、 乙方权利义务\n2.1提供翻译服务时身体状况良好，不存在不宜翻译的情况（患病、疲惫、饮酒等）。\n2.2提供翻译服务时精神饱满，举止文明。如甲方在翻译服务过程中有正装要求，则应予以满足，如甲方无具体要求，则应服饰整洁。佩戴服务平台胸牌或标识，便于识别。\n2.3接单后不得擅自取消订单，或转由他人提供翻译服务。\n2.4在履行翻译服务前，仔细阅读相关材料，做好翻译前期准备工作，确保准确、清晰、高质量的为甲方提供翻译服务。\n2.5严格遵守职业道德，对于翻译服务过程中的非公开内容予以严格保密。\n2.6结束翻译服务后，返还甲方相关的文件资料。\n2.7按照平台公示标准和本协议约定向甲方展示订单记录的服务时间和费用，收取翻译服务费及其他费用。\n2.8有权对甲方在平台上进行客观评价。\n三、翻译服务费用\n3.1 双方同意以平台订单记录的时间、服务小时数及公示的费用标准为结算依据，并由甲方在服务时间到达后，直接支付给乙方，或者授权平台代为支付。\n3.2若甲方对翻译服务费存有异议，仍应先行付款，可在24小时内向平台提出异议并提供相关证据，经核实确定计费错误，则由乙方退还多收取的费用。\n3.3 在翻译服务过程中产生的其他临时费用均由甲方承担，如因特殊原因乙方先行垫付了上述款项，则甲方应及时返还乙方。\n四、保密责任\n4.1乙方从执行订单开始，应在严格保密的前提下为甲方提供翻译服务，并承诺在订单结束后，决不向任何第三方泄露或不正当使用与甲方文件相关的产品、合同、客户、技术，或其他甲方关联机构业务等任何信息。\n五、违约责任\n5.1 甲、乙双方达成共识就翻译服务内容明确意向并支付定金的，如在服务开始时间的48小时以上，因特殊原因需要取消该次服务的，应向对方说明原因并取得谅解和同意后，取消订单并退回其定金。如在服务开始时间的48小时以内（含48小时），因故取消该次服务的，则定金不予退还，以补偿金的方式发放给受损方。如双方支付定金订单确定的时间与服务开始的时间在48小时以内的，因故取消该次服务，定金退还。\n5.2乙方取消订单必须得到甲方的确认。\n5.3甲方要求或迫使乙方中途停止翻译服务的（包括但不限于对翻译服务费有异议、对乙方服务不满等原因），甲方仍须据实向乙方支付翻译服务费。乙方停止翻译后的全部后果由甲方承担。\n5.4乙方故意拖沓、拖延时间以增加翻译服务费用的，应向甲方支付相当于该次翻译服务费用的2倍作为违约金。\n六、特别约定\n6.1各方确认并知悉，平台仅为向甲、乙双方提供翻译信息服务，促成双方签订本协议的中间人，并不实际提供也不代表、代理任何一方提供本协议项下的翻译服务，平台有权对翻译服务进行质量监控，但不对翻译服务过程中产生的纠纷或争议承担责任，也不对甲、乙双方翻译服务过程中或准备服务过程中、结束服务后遭受的损失承担责任。\n6.2甲、乙任何一方，在履行协议过程中，因违反当地法律、法规或其他法律规定而受到国家有关部门处罚或处理的，由责任方自行承担。\n七、协议效力\n7.1甲方通过平台下单，乙方接单后即视为双方自愿达成了本协议。本协议附件属于协议不可分割的组成部分，与本协议具有同等法律效力。\n7.2本协议所涉及相关概念均适用《e翻译信息服务平台用户使用规则》作出的定义解释。\n八、争议解决\n本协议履行过程中发生的争议，各方应友好协商解决，协商未成的，各方一致同意将争议提交被告所在地人民法院诉讼解决。\n',3,'2016-01-20 18:05:40'),(4,'计费规则','计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则计费规则!@$#^$%&%^#%$',4,'2015-12-23 15:34:08'),(5,'\r\n\r\n服务法律及违约责任约定','\n1111服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定\n\n服务法律及违约责任约定',5,'2015-11-30 14:48:19'),(6,'\r\n\r\n法律声明和隐私政策','法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策法律声明和隐私政策                 !@%#############',6,'2015-12-23 15:34:17'),(7,'\r\n\r\n注册协议','《e翻译信息服务平台用户使用规则》\n\n重要提示：在使用e翻译信息服务平台服务之前，请您务必认真阅读本使用规则及附件（简称“本规则”），须充分理解各条款内容，特别是涉及免除或限制责任条款。当您进入e翻译信息服务平台，接受或使用平台各项服务时，即表示您已知悉并同意本规则及附件的全部内容，如您不同意本规则中任何条款，应当立即停止使用。\n您必须具备完全行为能力才能使用平台服务。若您不具备前述行为能力，则您本人及您的监护人、代理人应依法承担因此导致的全部法律责任。\n我们的平台：指e翻译信息服务平台（简称“平台”），是由上海伊等网络科技有限公司开发并运营的，包括官方网站（http://www.easiertrans.com）、手机APP、官方服务电话、第三方网页链接、微信、微博、短消息等在内的综合信息平台，可以向用户提供翻译信息以及获取信息的相关途径。 我们提供的服务是：在我们的平台上，用户可以实现发布和（或）获取海外翻译需求信息，以及与此相关的订单记录、费用测算、评价评级等活动。但平台本身并不实际提供翻译服务，也不代表、代理任何一方用户提供翻译服务，仅充当用户之间的中间人，用户之间使用或提供翻译服务受其签订（或将要履行）的协议约束，平台不是此类协议中的任一方主体。\n我们的用户：依法具有完全行为能力的自然人或法人使用或接受平台服务即为平台用户，包括翻译服务使用方和翻译服务提供方。\n一、用户注册\n1.1自行注册：翻译服务使用方在首次使用或接受平台服务前，按照平台提示信息独立完成注册。\n1.2 协助注册：翻译服务使用方在首次进入平台后或者使用平台服务前，由平台根据用户提供的信息协助其完成注册。\n1.3审核注册：翻译服务提供方应当按照平台提示信息进行注册，并按要求完成相关支持资料的提供、人工审核和审批等流程，通过后方能完成注册。\n1.4用户完成注册后，即可享受平台提供的各项服务，同时应当遵守并履行本规则各项义务。用户以平台认可的其他方式接受或使用翻译服务视为已完成注册。\n二、服务项目\n2.1信息服务\n2.1.1平台为用户提供发送翻译服务需求的请求（下单）和接受该请求（接单）的信息推送服务，以及用户达成和履行翻译服务协议的信息记录服务。\n2.1.2翻译服务提供方通过平台获取信息后，应当向平台支付信息服务费。\n2.2结算服务\n2.2.1平台为用户之间的翻译服务费用结算提供服务。翻译服务结束后，翻译服务使用方应当按照平台订单记录的时间、服务小时数和平台公布的收费标准向翻译服务提供方支付翻译服务费。 平台会根据市场需求或用户反馈更新费用标准，用户应当注意查看平台最新公布收费标准。\n2.2.2平台可以为用户设立预存账户，并根据用户授权代为支付或划取相关费用 （包括预付定金、翻译信息服务费，翻译服务费及其他费用或违约金）。\n2.3评价服务\n2.3.1 用户可以通过平台对翻译服务行为做出评价或提出意见，评价内容应当客观真实，不得包含辱骂、诋毁以及法律禁止性信息，不得违反平台规则。否则，平台有权采取相关措施，包括但不限于删除评价、限制或禁止使用、要求赔偿损失以及追究其他责任。\n2.3.2用户不得以不当方式帮助他人提高评价，不得对其他用户实施威胁、敲诈。\n2.3.3平台可以根据评价统计，对用户进行综合评定，具体评定办法由平台另行制定。\n2.4调查处理服务\n2.4.1 如用户在使用平台过程中以及接受或履行翻译服务过程中发生争议，并选择使用平台的调查处理服务，则表示认可平台作为独立第三方根据所了解的事实及平台规则做出的调处决定。\n2.4.2 用户应当理解并同意，在争议调处服务中，平台人员并非专业判决人士，仅能以普通人的认知对用户提交的凭证进行判断，平台对调处结果免责。\n三、用户义务\n3.1用户使用或接受平台服务时，应当遵守平台秩序，承担以下义务：\n3.1.1用户须向平台提供真实合法的有效信息， 如因提供的信息虚假、错误、不准确、不完整，所导致的服务及信息偏差、失误，平台不承担任何责任；由此引起的任何损失由用户自行承担。\n3.1.2用户应当妥善保管自己的账号，且不应在没有法律授权的情况下提供给他人使用或这使用他人账号。\n3.1.3用户不得利用平台骚扰、妨碍他人或从事任何违法或侵权行为（包括但不限于恶意下单、接单、多次撤单、取消订单等影响平台或其他用户的行为）。\n3.1.4 用户不得影响平台的正常运行，不得进行危害平台服务或影响平台数据的行为。\n3.1.5 当平台提出合理请求时，用户应提供身份证明，相关用户信息支持文件等。\n3.1.6 用户在使用平台服务过程中，所产生的应纳税费，以及一切硬件、软件和网络通讯服务及其它方面的费用，均由其自行承担。\n3.2用户违反平台规则，阻碍平台管理，平台有权采取相关处理措施，包括但不限于：信息删除、屏蔽处理、限制使用、终止服务、查封或注销账号等。如造成平台损失，用户还应赔偿平台包括但不限于直接经济损失、商誉损失、对外垫付或赔偿款项、和解或调解款项、律师费、差旅费、诉讼费用、行政罚款等间接经济损失。\n3.3 用户同意平台向其发送商业性短信息，用以通知、提醒、确认平台使用的相关内容及优惠信息等。\n四、各方责任\n4.1 除本规则载明责任外，平台不对翻译服务中产生的争议及遭受的损失承担责任。\n4.2 翻译服务提供方为翻译服务使用方同意的翻译人员，如双方在履行翻译服务过程中发生争议、纠纷和损失，平台会尽力提供调处服务，但对于双方的损失不承担任何责任。\n4.3鉴于互联网服务的特殊性，以及平台信息来源于用户提供，故平台无法逐一审查信息的真实性、准确性，对此用户自己应审慎判决并独立做出决定。对因此导致的损害，除非平台故意造成外，平台不承担任何责任。\n4.4平台提供的翻译信息服务受制于用户使用情况，平台有权不经事先通知，随时变更、中断或终止部分或全部的服务，并且不保证服务一定能满足用户要求。\n4.5用户未通过平台认可的途径、方式下单、接单，则不能享受本规则中任何权利，因此发生的争议以及造成的损失，平台不承担任何责任。\n五、知识产权\n5.1 平台包含的所有内容，包括但不限于文本、图形、标志及软件的所有权均属上海伊等网络科技有限公司所有，受知识产权等法律法规的保护，您在使用服务过程中不得以任何形式侵害所有人的上述权利。\n5.2 未经平台允许，您不得擅自复制或发送任何平台内容，不得修改平台相关程序或据此创建衍生产品或竞争产品。\n六、规则的发布、变更和终止\n6.1平台所有通过官网、手机app、微信公众号发布的实施细则、公告、通知、产品或流程说明等均视为本规则的不可分割的组成部分，与本规则具有同等法律效力。\n6.2本规则一经发布即生效。平台可以通过官网、手机app、微信、微博、短信等方式对本规则内容的发布、修改、增加、废止等作出公布或通知，也可以就某些功能进行限制或终止使用，用户应当随时关注平台公示信息。规则内容一经公布或通知即替代原规则内容发生效力，如用户不同意发布或变更的内容，应立即停止使用本平台的相关服务；若用户继续使用平台服务，则视为同意发布或变更事项。\n6.3 出现以下情况时，平台有权限制或终止向用户提供服务：\n6.3.1提供的手机号码或邮箱不存在或无法接收信息，且没有其他方式可以进行联系沟通。\n6.3.2本规则变更时，用户明示并通知平台不愿接受新的变更内容的。\n6.3.3 连续180天没有使用平台服务的。\n6.3.4 存在违法或违约行为的。\n6.3.5 其他为维护平台运营秩序采取的限制或终止服务措施。\n6.4 平台在限制或终止提供服务后，仍享有下列权利：\n6.4.1继续保存用户的注册信息及使用平台的服务信息。\n6.4.2就用户的违法或违约行为主张法律责任。\n七、法律适用与管辖\n7.1本规则之效力、解释、变更、执行与争议解决均适用当地法律法规，如与之相违背的，以当地法律法规为首要依据。如无相关法律规定的，则应参照通用商业惯例和（或）行业惯例。用户在使用过程中，因违反当地法律、法规或其他法律规定而受到国家有关部门处罚或处理的，由责任方自行承担。\n7.2因使用平台服务产生争议，应充分友好协商处理；若协商不成，应以平台运营商即上海伊等网络科技有限公司住所地人民法院为管辖法院。\n7.3本规则任一条款被废止或被视为无效的，不影响本规则其余条款的有效性。本规则的最终解释权归平台运营方上海伊等网络科技有限公司所有。\n相关释义：\n平台服务：指基于互联网、通讯技术，包含官网、手机APP、官方客服电话、第三方网页链接、微信、微博以及其他平台认可的服务方式在内的翻译信息服务。\n手机app：指包含翻译服务使用方客户端、翻译服务提供方客户端等在内的由上海伊等网络科技有限公司研发的客户端。\n翻译服务：指翻译服务提供方直接向翻译服务使用方提供的有偿翻译服务。\n帐号：指用户进入和使用平台，以及接受平台服务的账号。\n注册号：指用户用以登录账号的号码。\n预存账户：指用户设立账户预存一定费用，并授权平台代为结算并划扣翻译信息服务费或翻译服务费等费用。翻译服务使用方用户可以设立预存账户，翻译服务提供方用户必须设立预存账户。\n订单：指通过平台记录翻译服务使用方和提供方具体信息的电子订单。\n下单：指翻译服务使用方通过平台认可的方式向翻译服务提供方发出需要翻译服务的邀约。\n接单：指翻译服务提供方通过平台认可的方式做出提供翻译服务的承诺，即接受翻译服务使用方的下单。\n\n《e翻译服务协议》\n甲方：翻译服务使用方\n乙方：翻译服务提供方\n甲、乙双方均为e翻译信息服务平台用户，通过平台使用或提供翻译服务，均应遵守本协议内容。\n一、 甲方权利义务\n1.1确定预约翻译服务的行程安排有效，以及在翻译服务开始后的相关行程地点和环境适宜翻译人员提供服务，如因甲方隐瞒以上事实带来的纠纷或者损害，由甲方承担。\n1.2有权要求乙方对服务过程中的行程安排，涉及的内容信息或商业机密进行保密。\n1.3有权要求乙方尽最大努力做好翻译前期的准备工作，确保为甲方提供高质量的翻译服务。\n1.4甲方委托乙方翻译或进行其它方式处理的文件或资料中不得有违反当地国家法律或社会公德的内容。\n1.5如口译工作，应在合理的时间范围内向乙方提供相关资料及行程安排，以供乙方及时准备；如笔译工作，应提前向乙方提供所需翻译的文稿，以保证有合理充分的时间完成翻译工作。\n1.6妥善保管随身财物，如在翻译过程中出现遗失，应立即报警。\n1.7按照平台公示标准和本协议约定支付翻译服务费及其他费用。\n1.8有权对乙方的翻译服务在平台上进行客观评价。\n二、 乙方权利义务\n2.1提供翻译服务时身体状况良好，不存在不宜翻译的情况（患病、疲惫、饮酒等）。\n2.2提供翻译服务时精神饱满，举止文明。如甲方在翻译服务过程中有正装要求，则应予以满足，如甲方无具体要求，则应服饰整洁。佩戴服务平台胸牌或标识，便于识别。\n2.3接单后不得擅自取消订单，或转由他人提供翻译服务。\n2.4在履行翻译服务前，仔细阅读相关材料，做好翻译前期准备工作，确保准确、清晰、高质量的为甲方提供翻译服务。\n2.5严格遵守职业道德，对于翻译服务过程中的非公开内容予以严格保密。\n2.6结束翻译服务后，返还甲方相关的文件资料。\n2.7按照平台公示标准和本协议约定向甲方展示订单记录的服务时间和费用，收取翻译服务费及其他费用。\n2.8有权对甲方在平台上进行客观评价。\n三、翻译服务费用\n3.1 双方同意以平台订单记录的时间、服务小时数及公示的费用标准为结算依据，并由甲方在服务时间到达后，直接支付给乙方，或者授权平台代为支付。\n3.2若甲方对翻译服务费存有异议，仍应先行付款，可在24小时内向平台提出异议并提供相关证据，经核实确定计费错误，则由乙方退还多收取的费用。\n3.3 在翻译服务过程中产生的其他临时费用均由甲方承担，如因特殊原因乙方先行垫付了上述款项，则甲方应及时返还乙方。\n四、保密责任\n4.1乙方从执行订单开始，应在严格保密的前提下为甲方提供翻译服务，并承诺在订单结束后，决不向任何第三方泄露或不正当使用与甲方文件相关的产品、合同、客户、技术，或其他甲方关联机构业务等任何信息。\n五、违约责任\n5.1 甲、乙双方达成共识就翻译服务内容明确意向并支付定金的，如在服务开始时间的48小时以上，因特殊原因需要取消该次服务的，应向对方说明原因并取得谅解和同意后，取消订单并退回其定金。如在服务开始时间的48小时以内（含48小时），因故取消该次服务的，则定金不予退还，以补偿金的方式发放给受损方。如双方支付定金订单确定的时间与服务开始的时间在48小时以内的，因故取消该次服务，定金退还。\n5.2乙方取消订单必须得到甲方的确认。\n5.3甲方要求或迫使乙方中途停止翻译服务的（包括但不限于对翻译服务费有异议、对乙方服务不满等原因），甲方仍须据实向乙方支付翻译服务费。乙方停止翻译后的全部后果由甲方承担。\n5.4乙方故意拖沓、拖延时间以增加翻译服务费用的，应向甲方支付相当于该次翻译服务费用的2倍作为违约金。\n六、特别约定\n6.1各方确认并知悉，平台仅为向甲、乙双方提供翻译信息服务，促成双方签订本协议的中间人，并不实际提供也不代表、代理任何一方提供本协议项下的翻译服务，平台有权对翻译服务进行质量监控，但不对翻译服务过程中产生的纠纷或争议承担责任，也不对甲、乙双方翻译服务过程中或准备服务过程中、结束服务后遭受的损失承担责任。\n6.2甲、乙任何一方，在履行协议过程中，因违反当地法律、法规或其他法律规定而受到国家有关部门处罚或处理的，由责任方自行承担。\n七、协议效力\n7.1甲方通过平台下单，乙方接单后即视为双方自愿达成了本协议。本协议附件属于协议不可分割的组成部分，与本协议具有同等法律效力。\n7.2本协议所涉及相关概念均适用《e翻译信息服务平台用户使用规则》作出的定义解释。\n八、争议解决\n本协议履行过程中发生的争议，各方应友好协商解决，协商未成的，各方一致同意将争议提交被告所在地人民法院诉讼解决。\n',7,'2016-01-20 18:06:34');
