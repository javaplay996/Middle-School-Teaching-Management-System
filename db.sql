/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jinghaizhongxuejiaoxueguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jinghaizhongxuejiaoxueguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jinghaizhongxuejiaoxueguanli`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '考试学生',
  `kaoshi_id` int(200) DEFAULT NULL COMMENT '考试科目',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `chengji_content` text COMMENT '考试结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考试成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`kaoshi_id`,`insert_time`,`chengji_content`,`create_time`) values (1,2,2,'2021-05-08 11:18:24','考试结果1\r\n','2021-05-08 11:18:24'),(2,1,1,'2021-05-08 11:18:46','考试结果2\r\n','2021-05-08 11:18:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-08 10:44:40'),(2,'sex_types','性别',2,'女',NULL,'2021-05-08 10:44:40'),(3,'news_types','公告类型名称',1,'公告类型1',NULL,'2021-05-08 10:44:40'),(4,'news_types','公告类型名称',2,'公告类型2',NULL,'2021-05-08 10:44:40'),(5,'xueke_types','学科类型名称',1,'学科1',NULL,'2021-05-08 10:44:40'),(6,'xueke_types','学科类型名称',2,'学科2',NULL,'2021-05-08 10:44:40');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_email`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,'410882200011261211','17785569781','11111@qq.com','http://localhost:8080/jinghaizhongxuejiaoxueguanli/file/download?fileName=1620443713013.jpg','2021-05-08 10:57:01'),(2,'444','123456','教师2',1,'410882200011261212','17785569782','22222@qq.com','http://localhost:8080/jinghaizhongxuejiaoxueguanli/file/download?fileName=1620443705542.jpg','2021-05-08 10:57:21');

/*Table structure for table `kaoshi` */

DROP TABLE IF EXISTS `kaoshi`;

CREATE TABLE `kaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kaoshi_name` varchar(200) DEFAULT NULL COMMENT '考试标题 Search111',
  `xueke_types` int(200) DEFAULT NULL COMMENT '考试学科 Search111',
  `kaoshi_shijian` varchar(200) DEFAULT NULL COMMENT '考试时间',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '负责教师',
  `kaoshi_dizhi` varchar(200) DEFAULT NULL COMMENT '考试地址 ',
  `kaoshi_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考试信息';

/*Data for the table `kaoshi` */

insert  into `kaoshi`(`id`,`kaoshi_name`,`xueke_types`,`kaoshi_shijian`,`jiaoshi_id`,`kaoshi_dizhi`,`kaoshi_content`,`create_time`) values (1,'考试标题1',1,'60分钟',2,'考试地址1','详情信息1\r\n','2021-05-08 11:17:26'),(2,'考试标题2',2,'120分钟',1,'考试地址2','详情信息2\r\n','2021-05-08 11:17:39');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `xueke_types` int(200) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_shijian` varchar(200) DEFAULT NULL COMMENT '课程时间',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '上课教师',
  `kecheng_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='课程信息';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_name`,`xueke_types`,`kecheng_shijian`,`jiaoshi_id`,`kecheng_content`,`create_time`) values (1,'课程名称1',1,'60分钟',1,'详情信息1\r\n','2021-05-08 11:17:57'),(2,'课程名称2',2,'45分钟',2,'详情信息2\r\n','2021-05-08 11:18:12');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/jinghaizhongxuejiaoxueguanli/file/download?fileName=1620444975774.jpg','2021-05-08 11:36:17','公告详情1\r\n','2021-05-08 11:36:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','4qvdt0q2qv27nvz8mgnol0fgxx1gmqew','2021-05-08 10:56:19','2021-05-08 12:38:30'),(2,1,'111','yonghu','用户','fx69oqdeh0ewwxurg9np0ys93w1e8cxl','2021-05-08 11:32:03','2021-05-08 12:37:36'),(3,1,'333','jiaoshi','教师','3cs6vkajkvyg7a41e23q3iny5m80ozjn','2021-05-08 11:32:17','2021-05-08 12:36:23'),(4,2,'444','jiaoshi','教师','wtm48itsllmqruhu2kmx0z5g3myiu1mj','2021-05-08 11:32:34','2021-05-08 12:36:51');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','11111@qq.com','http://localhost:8080/jinghaizhongxuejiaoxueguanli/file/download?fileName=1620443735101.jpg','2021-05-08 10:57:41'),(2,'222','123456','用户2',1,'410882200011064872','17789944562','22222@qq.com','http://localhost:8080/jinghaizhongxuejiaoxueguanli/file/download?fileName=1620443728266.jpg','2021-05-08 10:57:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
