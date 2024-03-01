/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboote51e2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboote51e2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboote51e2`;

/*Table structure for table `caigoujilu` */

DROP TABLE IF EXISTS `caigoujilu`;

CREATE TABLE `caigoujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `caigoushuliang` int(11) NOT NULL COMMENT '采购数量',
  `caigoujiage` int(11) NOT NULL COMMENT '采购价格',
  `caigougongsi` varchar(200) NOT NULL COMMENT '采购公司',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212715410 DEFAULT CHARSET=utf8 COMMENT='采购记录';

/*Data for the table `caigoujilu` */

insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (91,'2021-05-17 08:46:26','设备编号1','设备名称1','型号1',1,1,'采购公司1','2021-05-17','备注1');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (92,'2021-05-17 08:46:26','设备编号2','设备名称2','型号2',2,2,'采购公司2','2021-05-17','备注2');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (93,'2021-05-17 08:46:26','设备编号3','设备名称3','型号3',3,3,'采购公司3','2021-05-17','备注3');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (94,'2021-05-17 08:46:26','设备编号4','设备名称4','型号4',4,4,'采购公司4','2021-05-17','备注4');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (95,'2021-05-17 08:46:26','设备编号5','设备名称5','型号5',5,5,'采购公司5','2021-05-17','备注5');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (96,'2021-05-17 08:46:26','设备编号6','设备名称6','型号6',6,6,'采购公司6','2021-05-17','备注6');
insert  into `caigoujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`caigoushuliang`,`caigoujiage`,`caigougongsi`,`caigouriqi`,`beizhu`) values (1621212715409,'2021-05-17 08:51:54','1','XX设备','A101',100,100,'111','2021-05-19','测试测试');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboote51e2/upload/1621212737966.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springboote51e2/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springboote51e2/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussgonggaoxinxi` */

DROP TABLE IF EXISTS `discussgonggaoxinxi`;

CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212879474 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';

/*Data for the table `discussgonggaoxinxi` */

insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-17 08:46:26',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-17 08:46:26',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-17 08:46:26',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-17 08:46:26',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-17 08:46:26',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-17 08:46:26',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussgonggaoxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621212879473,'2021-05-17 08:54:39',1621212799192,1621212542867,'2','6666',NULL);

/*Table structure for table `discussshiyankecheng` */

DROP TABLE IF EXISTS `discussshiyankecheng`;

CREATE TABLE `discussshiyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212921111 DEFAULT CHARSET=utf8 COMMENT='实验课程评论表';

/*Data for the table `discussshiyankecheng` */

insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-17 08:46:26',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-17 08:46:26',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-17 08:46:26',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-17 08:46:26',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-17 08:46:26',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-17 08:46:26',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshiyankecheng`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621212921110,'2021-05-17 08:55:21',1621212847328,1621212542867,'2','888','9999');

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212799193 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (31,'2021-05-17 08:46:26','标题1','类型1','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian1.jpg','工号1','教师姓名1','公告内容1','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (32,'2021-05-17 08:46:26','标题2','类型2','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian2.jpg','工号2','教师姓名2','公告内容2','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (33,'2021-05-17 08:46:26','标题3','类型3','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian3.jpg','工号3','教师姓名3','公告内容3','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (34,'2021-05-17 08:46:26','标题4','类型4','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian4.jpg','工号4','教师姓名4','公告内容4','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (35,'2021-05-17 08:46:26','标题5','类型5','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian5.jpg','工号5','教师姓名5','公告内容5','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (36,'2021-05-17 08:46:26','标题6','类型6','http://localhost:8080/springboote51e2/upload/gonggaoxinxi_tupian6.jpg','工号6','教师姓名6','公告内容6','2021-05-17');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`leixing`,`tupian`,`gonghao`,`jiaoshixingming`,`gonggaoneirong`,`faburiqi`) values (1621212799192,'2021-05-17 08:53:18','XX公告','公告','http://localhost:8080/springboote51e2/upload/1621212786973.jpg','1','王老师','<p><img src=\"http://localhost:8080/springboote51e2/upload/1621212792142.jpg\"></p><p>这里可以发布一些相关公告内容的</p>','2021-05-17');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (21,'2021-05-17 08:46:26','1','1','王老师','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang1.jpg','上海大学','班主任','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (22,'2021-05-17 08:46:26','教师2','123456','教师姓名2','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang2.jpg','学院2','职称2','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (23,'2021-05-17 08:46:26','教师3','123456','教师姓名3','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang3.jpg','学院3','职称3','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (24,'2021-05-17 08:46:26','教师4','123456','教师姓名4','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang4.jpg','学院4','职称4','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (25,'2021-05-17 08:46:26','教师5','123456','教师姓名5','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang5.jpg','学院5','职称5','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xueyuan`,`zhicheng`,`dianhua`) values (26,'2021-05-17 08:46:26','教师6','123456','教师姓名6','男','http://localhost:8080/springboote51e2/upload/jiaoshi_touxiang6.jpg','学院6','职称6','13823888886');

/*Table structure for table `shiyankecheng` */

DROP TABLE IF EXISTS `shiyankecheng`;

CREATE TABLE `shiyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiyanriqi` date DEFAULT NULL COMMENT '实验日期',
  `shiyanshihao` varchar(200) NOT NULL COMMENT '实验室号',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shiyanneirong` longtext COMMENT '实验内容',
  `shiyanyaoqiu` longtext COMMENT '实验要求',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212847329 DEFAULT CHARSET=utf8 COMMENT='实验课程';

/*Data for the table `shiyankecheng` */

insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (51,'2021-05-17 08:46:26','课程名称1','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian1.jpg','2021-05-17','实验室号1','工号1','教师姓名1','实验内容1','实验要求1',1);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (52,'2021-05-17 08:46:26','课程名称2','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian2.jpg','2021-05-17','实验室号2','工号2','教师姓名2','实验内容2','实验要求2',2);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (53,'2021-05-17 08:46:26','课程名称3','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian3.jpg','2021-05-17','实验室号3','工号3','教师姓名3','实验内容3','实验要求3',3);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (54,'2021-05-17 08:46:26','课程名称4','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian4.jpg','2021-05-17','实验室号4','工号4','教师姓名4','实验内容4','实验要求4',4);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (55,'2021-05-17 08:46:26','课程名称5','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian5.jpg','2021-05-17','实验室号5','工号5','教师姓名5','实验内容5','实验要求5',5);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (56,'2021-05-17 08:46:26','课程名称6','http://localhost:8080/springboote51e2/upload/shiyankecheng_tupian6.jpg','2021-05-17','实验室号6','工号6','教师姓名6','实验内容6','实验要求6',6);
insert  into `shiyankecheng`(`id`,`addtime`,`kechengmingcheng`,`tupian`,`shiyanriqi`,`shiyanshihao`,`gonghao`,`jiaoshixingming`,`shiyanneirong`,`shiyanyaoqiu`,`userid`) values (1621212847328,'2021-05-17 08:54:07','物理实验课','http://localhost:8080/springboote51e2/upload/1621212836492.jpg','2021-05-06','201','1','王老师','测试','测试',NULL);

/*Table structure for table `shiyanshebei` */

DROP TABLE IF EXISTS `shiyanshebei`;

CREATE TABLE `shiyanshebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) NOT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) NOT NULL COMMENT '设备名称',
  `xinghao` varchar(200) NOT NULL COMMENT '型号',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shebeishuliang` int(11) NOT NULL COMMENT '设备数量',
  `shiyongfangfa` longtext COMMENT '使用方法',
  `shebeizhuangtai` varchar(200) DEFAULT NULL COMMENT '设备状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='实验设备';

/*Data for the table `shiyanshebei` */

insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (81,'2021-05-17 08:46:26','1','XX设备','A101','件','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian1.jpg',15,'使用方法1测试','正常');
insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (82,'2021-05-17 08:46:26','设备编号2','设备名称2','型号2','单位2','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian2.jpg',2,'使用方法2','正常');
insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (83,'2021-05-17 08:46:26','设备编号3','设备名称3','型号3','单位3','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian3.jpg',3,'使用方法3','正常');
insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (84,'2021-05-17 08:46:26','设备编号4','设备名称4','型号4','单位4','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian4.jpg',4,'使用方法4','正常');
insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (85,'2021-05-17 08:46:26','设备编号5','设备名称5','型号5','单位5','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian5.jpg',5,'使用方法5','正常');
insert  into `shiyanshebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`danwei`,`tupian`,`shebeishuliang`,`shiyongfangfa`,`shebeizhuangtai`) values (86,'2021-05-17 08:46:26','设备编号6','设备名称6','型号6','单位6','http://localhost:8080/springboote51e2/upload/shiyanshebei_tupian6.jpg',6,'使用方法6','正常');

/*Table structure for table `shiyanshixinxi` */

DROP TABLE IF EXISTS `shiyanshixinxi`;

CREATE TABLE `shiyanshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshibianhao` varchar(200) NOT NULL COMMENT '实验室编号',
  `shiyanshimingcheng` varchar(200) NOT NULL COMMENT '实验室名称',
  `shiyanshiguimo` varchar(200) NOT NULL COMMENT '实验室规模',
  `shiyanshitupian` varchar(200) DEFAULT NULL COMMENT '实验室图片',
  `shiyanshiweizhi` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `shiyanshixiangqing` longtext COMMENT '实验室详情',
  `shiyanshizhuangtai` varchar(200) NOT NULL COMMENT '实验室状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shiyanshibianhao` (`shiyanshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='实验室信息';

/*Data for the table `shiyanshixinxi` */

insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (61,'2021-05-17 08:46:26','1','化学实验室','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian1.jpg','3号楼','8-10点','<p>实验室详情1</p><p>这里可以发布一些相关实验室简介内容，这里的所有内容都是用于测试功能，都是随意添加的，都是可以自行添加修改删除替换的</p><p><img src=\"http://localhost:8080/springboote51e2/upload/1621212676843.jpg\"></p>','可预约');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (62,'2021-05-17 08:46:26','实验室编号2','实验室名称2','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian2.jpg','实验室位置2','可约时间2','实验室详情2','可预约');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (63,'2021-05-17 08:46:26','实验室编号3','实验室名称3','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian3.jpg','实验室位置3','可约时间3','实验室详情3','可预约');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (64,'2021-05-17 08:46:26','实验室编号4','实验室名称4','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian4.jpg','实验室位置4','可约时间4','实验室详情4','可预约');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (65,'2021-05-17 08:46:26','实验室编号5','实验室名称5','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian5.jpg','实验室位置5','可约时间5','实验室详情5','可预约');
insert  into `shiyanshixinxi`(`id`,`addtime`,`shiyanshibianhao`,`shiyanshimingcheng`,`shiyanshiguimo`,`shiyanshitupian`,`shiyanshiweizhi`,`keyueshijian`,`shiyanshixiangqing`,`shiyanshizhuangtai`) values (66,'2021-05-17 08:46:26','实验室编号6','实验室名称6','大型','http://localhost:8080/springboote51e2/upload/shiyanshixinxi_shiyanshitupian6.jpg','实验室位置6','可约时间6','实验室详情6','可预约');

/*Table structure for table `shiyanshiyuyue` */

DROP TABLE IF EXISTS `shiyanshiyuyue`;

CREATE TABLE `shiyanshiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `yuyueneirong` varchar(200) DEFAULT NULL COMMENT '预约内容',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212945551 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `shiyanshiyuyue` */

insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (71,'2021-05-17 08:46:26','实验室名称1','预约内容1','预约时间1','学号1','学生姓名1','班级1','手机1','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (72,'2021-05-17 08:46:26','实验室名称2','预约内容2','预约时间2','学号2','学生姓名2','班级2','手机2','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (73,'2021-05-17 08:46:26','实验室名称3','预约内容3','预约时间3','学号3','学生姓名3','班级3','手机3','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (74,'2021-05-17 08:46:26','实验室名称4','预约内容4','预约时间4','学号4','学生姓名4','班级4','手机4','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (75,'2021-05-17 08:46:26','实验室名称5','预约内容5','预约时间5','学号5','学生姓名5','班级5','手机5','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (76,'2021-05-17 08:46:26','实验室名称6','预约内容6','预约时间6','学号6','学生姓名6','班级6','手机6','是','');
insert  into `shiyanshiyuyue`(`id`,`addtime`,`shiyanshimingcheng`,`yuyueneirong`,`yuyueshijian`,`xuehao`,`xueshengxingming`,`banji`,`shouji`,`sfsh`,`shhf`) values (1621212945550,'2021-05-17 08:55:44','化学实验室','我要预约进行试验','9点','2','李四','201','15214121411','是','同意预约');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212903984 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621212889252,'2021-05-17 08:54:49',1621212542867,1621212799192,'gonggaoxinxi','XX公告','http://localhost:8080/springboote51e2/upload/1621212786973.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621212903983,'2021-05-17 08:55:03',1621212542867,1621212826428,'zhishiku','XX知识库','http://localhost:8080/springboote51e2/upload/1621212817212.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','slbqcptuh0jdlm1sjc600f6cyns7g2ci','2021-05-17 08:47:29','2021-05-17 09:56:48');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621212542867,'2','xuesheng','学生','2vdzxuxrbyqtjjcvezrrpyzocoe45w4j','2021-05-17 08:49:18','2021-05-17 09:57:06');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,21,'1','jiaoshi','教师','ahbx55hwyamroi85r7mr6dkraaqe4ovb','2021-05-17 08:52:34','2021-05-17 09:56:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 08:46:26');

/*Table structure for table `weixiujilu` */

DROP TABLE IF EXISTS `weixiujilu`;

CREATE TABLE `weixiujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `weixiushuliang` int(11) NOT NULL COMMENT '维修数量',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `weixiujieguo` longtext COMMENT '维修结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212728954 DEFAULT CHARSET=utf8 COMMENT='维修记录';

/*Data for the table `weixiujilu` */

insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (101,'2021-05-17 08:46:26','设备编号1','设备名称1','型号1',1,'2021-05-17','维修结果1');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (102,'2021-05-17 08:46:26','设备编号2','设备名称2','型号2',2,'2021-05-17','维修结果2');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (103,'2021-05-17 08:46:26','设备编号3','设备名称3','型号3',3,'2021-05-17','维修结果3');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (104,'2021-05-17 08:46:26','设备编号4','设备名称4','型号4',4,'2021-05-17','维修结果4');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (105,'2021-05-17 08:46:26','设备编号5','设备名称5','型号5',5,'2021-05-17','维修结果5');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (106,'2021-05-17 08:46:26','设备编号6','设备名称6','型号6',6,'2021-05-17','维修结果6');
insert  into `weixiujilu`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`xinghao`,`weixiushuliang`,`weixiuriqi`,`weixiujieguo`) values (1621212728953,'2021-05-17 08:52:08','1','XX设备','A101',10,'2021-05-18','都已经修好');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212542868 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (11,'2021-05-17 08:46:26','1','1','学生姓名1','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang1.jpg','班级1','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (12,'2021-05-17 08:46:26','学生2','123456','学生姓名2','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang2.jpg','班级2','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (13,'2021-05-17 08:46:26','学生3','123456','学生姓名3','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang3.jpg','班级3','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (14,'2021-05-17 08:46:26','学生4','123456','学生姓名4','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang4.jpg','班级4','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (15,'2021-05-17 08:46:26','学生5','123456','学生姓名5','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang5.jpg','班级5','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (16,'2021-05-17 08:46:26','学生6','123456','学生姓名6','男','http://localhost:8080/springboote51e2/upload/xuesheng_touxiang6.jpg','班级6','13823888886');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`banji`,`shouji`) values (1621212542867,'2021-05-17 08:49:02','2','1','李四','男','http://localhost:8080/springboote51e2/upload/1621212574316.png','201','15214121411');

/*Table structure for table `zhishiku` */

DROP TABLE IF EXISTS `zhishiku`;

CREATE TABLE `zhishiku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `wenjian` varchar(200) NOT NULL COMMENT '文件',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621212826429 DEFAULT CHARSET=utf8 COMMENT='知识库';

/*Data for the table `zhishiku` */

insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (41,'2021-05-17 08:46:26','名称1','班级1','http://localhost:8080/springboote51e2/upload/zhishiku_tupian1.jpg','','工号1','教师姓名1','2021-05-17','详情1');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (42,'2021-05-17 08:46:26','名称2','班级2','http://localhost:8080/springboote51e2/upload/zhishiku_tupian2.jpg','','工号2','教师姓名2','2021-05-17','详情2');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (43,'2021-05-17 08:46:26','名称3','班级3','http://localhost:8080/springboote51e2/upload/zhishiku_tupian3.jpg','','工号3','教师姓名3','2021-05-17','详情3');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (44,'2021-05-17 08:46:26','名称4','班级4','http://localhost:8080/springboote51e2/upload/zhishiku_tupian4.jpg','','工号4','教师姓名4','2021-05-17','详情4');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (45,'2021-05-17 08:46:26','名称5','班级5','http://localhost:8080/springboote51e2/upload/zhishiku_tupian5.jpg','','工号5','教师姓名5','2021-05-17','详情5');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (46,'2021-05-17 08:46:26','名称6','班级6','http://localhost:8080/springboote51e2/upload/zhishiku_tupian6.jpg','','工号6','教师姓名6','2021-05-17','详情6');
insert  into `zhishiku`(`id`,`addtime`,`mingcheng`,`banji`,`tupian`,`wenjian`,`gonghao`,`jiaoshixingming`,`faburiqi`,`xiangqing`) values (1621212826428,'2021-05-17 08:53:46','XX知识库','201','http://localhost:8080/springboote51e2/upload/1621212817212.jpg','http://localhost:8080/springboote51e2/upload/1621212823913.doc','1','王老师',NULL,'<p>测试</p>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
