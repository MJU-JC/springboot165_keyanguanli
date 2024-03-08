/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - keyangongzuoliang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`keyangongzuoliang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `keyangongzuoliang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/keyangongzuoliang/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/keyangongzuoliang/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/keyangongzuoliang/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-07 10:24:55'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-07 10:24:55'),(3,'xiangmu_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-07 10:24:55'),(4,'xiangmu_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-07 10:24:55'),(5,'xiangmu_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-07 10:24:55'),(6,'xiangmu_types','科研项目类型',1,'科研项目类型1',NULL,'87','2022-03-07 10:24:55'),(7,'xiangmu_types','科研项目类型',2,'科研项目类型2',NULL,'71','2022-03-07 10:24:55'),(8,'xiangmu_types','科研项目类型',3,'科研项目类型3',NULL,'14','2022-03-07 10:24:55'),(9,'xiangmu_types','科研项目类型',4,'科研项目类型4',NULL,'65','2022-03-07 10:24:55'),(10,'keyanlunwen_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-07 10:24:55'),(11,'keyanlunwen_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-07 10:24:55'),(12,'keyanlunwen_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-07 10:24:55'),(13,'keyanlunwen_types','科研论文类型',1,'科研论文类型1',NULL,NULL,'2022-03-07 10:24:55'),(14,'keyanlunwen_types','科研论文类型',2,'科研论文类型2',NULL,NULL,'2022-03-07 10:24:55'),(15,'keyanlunwen_types','科研论文类型',3,'科研论文类型3',NULL,NULL,'2022-03-07 10:24:55'),(16,'keyanlunwen_types','科研论文类型',4,'科研论文类型4',NULL,NULL,'2022-03-07 10:24:56'),(17,'keyanhuojiang_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-03-07 10:24:56'),(18,'keyanhuojiang_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-03-07 10:24:56'),(19,'keyanhuojiang_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-07 10:24:56'),(20,'keyanhuojiang_types','科研获奖类型',1,'科研获奖类型1',NULL,NULL,'2022-03-07 10:24:56'),(21,'keyanhuojiang_types','科研获奖类型',2,'科研获奖类型2',NULL,NULL,'2022-03-07 10:24:56'),(22,'keyanhuojiang_types','科研获奖类型',3,'科研获奖类型3',NULL,NULL,'2022-03-07 10:24:56'),(23,'keyanhuojiang_types','科研获奖类型',4,'科研获奖类型4',NULL,NULL,'2022-03-07 10:24:56'),(24,'xiangmu_types','科研项目类型',5,'科研项目类型5',NULL,'10','2022-03-07 11:04:43');

/*Table structure for table `gongzuoliang` */

DROP TABLE IF EXISTS `gongzuoliang`;

CREATE TABLE `gongzuoliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `gongzuoliang_content` text COMMENT '工作量详情',
  `tijiaozongshu` int(11) DEFAULT NULL COMMENT '提交总数',
  `zonggongzuoliang` int(11) DEFAULT NULL COMMENT '总工作量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='工作量';

/*Data for the table `gongzuoliang` */

insert  into `gongzuoliang`(`id`,`xiangmu_id`,`gongzuoliang_content`,`tijiaozongshu`,`zonggongzuoliang`,`insert_time`,`create_time`) values (1,1,'工作量详情1',236,149,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(2,2,'工作量详情2',144,404,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(3,3,'工作量详情3',481,281,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(4,4,'工作量详情4',14,186,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(5,5,'工作量详情5',242,196,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(6,3,'工作量详情3',481,281,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(7,4,'工作量详情4',14,186,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(8,5,'工作量详情5',242,196,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(11,3,'工作量详情3',481,281,'2022-02-07 10:27:54','2022-02-07 10:27:54'),(12,4,'工作量详情4',14,186,'2022-02-07 10:27:54','2022-02-07 10:27:54'),(13,5,'工作量详情5',242,196,'2022-02-07 10:27:54','2022-02-07 10:27:54');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '教师工号 Search111 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_uuid_number`,`jiaoshi_name`,`jiaoshi_phone`,`jiaoshi_id_number`,`jiaoshi_photo`,`sex_types`,`jiaoshi_email`,`create_time`) values (1,'a1','123456','164662007441311','教师姓名1','17703786901','410224199610232001','http://localhost:8080/keyangongzuoliang/upload/jiaoshi1.jpg',1,'1@qq.com','2022-03-07 10:27:54'),(2,'a2','123456','164662007441314','教师姓名2','17703786902','410224199610232002','http://localhost:8080/keyangongzuoliang/upload/jiaoshi2.jpg',1,'2@qq.com','2022-03-07 10:27:54'),(3,'a3','123456','16466200744139','教师姓名3','17703786903','410224199610232003','http://localhost:8080/keyangongzuoliang/upload/jiaoshi3.jpg',1,'3@qq.com','2022-03-07 10:27:54');

/*Table structure for table `keyanhuojiang` */

DROP TABLE IF EXISTS `keyanhuojiang`;

CREATE TABLE `keyanhuojiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `keyanhuojiang_name` varchar(200) DEFAULT NULL COMMENT '科研获奖名称  Search111 ',
  `keyanhuojiang_types` int(11) DEFAULT NULL COMMENT '科研获奖类型 Search111',
  `keyanhuojiang_file` varchar(200) DEFAULT NULL COMMENT '相关文件',
  `keyanhuojiang_content` text COMMENT '科研获奖详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `keyanhuojiang_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `keyanhuojiang_yesno_text` text COMMENT '审核意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='科研获奖';

/*Data for the table `keyanhuojiang` */

insert  into `keyanhuojiang`(`id`,`jiaoshi_id`,`keyanhuojiang_name`,`keyanhuojiang_types`,`keyanhuojiang_file`,`keyanhuojiang_content`,`insert_time`,`keyanhuojiang_yesno_types`,`keyanhuojiang_yesno_text`,`update_time`,`create_time`) values (1,3,'科研获奖名称1',2,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情1','2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(2,3,'科研获奖名称2',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情2','2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(3,1,'科研获奖名称3',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情3','2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(4,2,'科研获奖名称4',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情4','2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(5,3,'科研获奖名称5',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情5','2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(8,3,'科研获奖名称2',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情2','2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54'),(9,1,'科研获奖名称3',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情3','2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54'),(10,2,'科研获奖名称4',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研获奖详情4','2022-02-07 10:27:54',1,'','2022-02-07 10:27:54','2022-02-07 10:27:54');

/*Table structure for table `keyanlunwen` */

DROP TABLE IF EXISTS `keyanlunwen`;

CREATE TABLE `keyanlunwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `keyanlunwen_name` varchar(200) DEFAULT NULL COMMENT '科研论文名称  Search111 ',
  `keyanlunwen_types` int(11) DEFAULT NULL COMMENT '科研论文类型 Search111',
  `keyanlunwen_file` varchar(200) DEFAULT NULL COMMENT '相关文件',
  `keyanlunwen_content` text COMMENT '科研论文详情 ',
  `keyanlunwen_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `keyanlunwen_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `keyanlunwen_yesno_text` text COMMENT '审核意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='科研论文';

/*Data for the table `keyanlunwen` */

insert  into `keyanlunwen`(`id`,`jiaoshi_id`,`keyanlunwen_name`,`keyanlunwen_types`,`keyanlunwen_file`,`keyanlunwen_content`,`keyanlunwen_delete`,`insert_time`,`keyanlunwen_yesno_types`,`keyanlunwen_yesno_text`,`update_time`,`create_time`) values (1,2,'科研论文名称1',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情1',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(2,1,'科研论文名称2',4,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情2',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(3,2,'科研论文名称3',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情3',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(4,2,'科研论文名称4',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情4',1,'2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(5,3,'科研论文名称5',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情5',1,'2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'科研论文名称1',3,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情1',1,'2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54'),(8,2,'科研论文名称2',4,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研论文详情2',1,'2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54');

/*Table structure for table `mishu` */

DROP TABLE IF EXISTS `mishu`;

CREATE TABLE `mishu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `mishu_uuid_number` varchar(200) DEFAULT NULL COMMENT '秘书工号 Search111 ',
  `mishu_name` varchar(200) DEFAULT NULL COMMENT '秘书姓名 Search111 ',
  `mishu_phone` varchar(200) DEFAULT NULL COMMENT '秘书手机号',
  `mishu_photo` varchar(200) DEFAULT NULL COMMENT '秘书头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `mishu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='秘书';

/*Data for the table `mishu` */

insert  into `mishu`(`id`,`username`,`password`,`mishu_uuid_number`,`mishu_name`,`mishu_phone`,`mishu_photo`,`sex_types`,`mishu_email`,`create_time`) values (1,'a1','123456','16466200744084','秘书姓名1','17703786901','http://localhost:8080/keyangongzuoliang/upload/mishu1.jpg',2,'1@qq.com','2022-03-07 10:27:54'),(2,'a2','123456','16466200744089','秘书姓名2','17703786902','http://localhost:8080/keyangongzuoliang/upload/mishu2.jpg',2,'2@qq.com','2022-03-07 10:27:54'),(3,'a3','123456','164662007440813','秘书姓名3','17703786903','http://localhost:8080/keyangongzuoliang/upload/mishu3.jpg',1,'3@qq.com','2022-03-07 10:27:54');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','nka20o7g66tmmr6afyrek6xz6cmvr4ai','2022-03-07 10:31:22','2022-03-07 14:15:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '科研项目名称  Search111 ',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '科研项目类型 Search111',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '相关文件',
  `xiangmu_content` text COMMENT '科研项目介绍 ',
  `xiangmu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `xiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `xiangmu_yesno_text` text COMMENT '审核意见',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='科研项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`jiaoshi_id`,`xiangmu_name`,`xiangmu_types`,`xiangmu_file`,`xiangmu_content`,`xiangmu_delete`,`insert_time`,`xiangmu_yesno_types`,`xiangmu_yesno_text`,`update_time`,`create_time`) values (1,1,'科研项目名称1',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍1',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(2,2,'科研项目名称2',4,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍2',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(3,2,'科研项目名称3',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍3',1,'2022-03-07 10:27:54',2,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(4,1,'科研项目名称4',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍4',1,'2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(5,1,'科研项目名称5',4,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍5',1,'2022-03-07 10:27:54',1,NULL,'2022-03-07 10:27:54','2022-03-07 10:27:54'),(7,1,'科研项目名称1',1,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍1',1,'2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54'),(8,2,'科研项目名称2',4,'http://localhost:8080/keyangongzuoliang/upload/file.rar','科研项目介绍2',1,'2022-02-07 10:27:54',2,'','2022-02-07 10:27:54','2022-02-07 10:27:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
