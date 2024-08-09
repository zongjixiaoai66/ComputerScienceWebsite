/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t293`;
CREATE DATABASE IF NOT EXISTS `t293` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t293`;

DROP TABLE IF EXISTS `chengyuan`;
CREATE TABLE IF NOT EXISTS `chengyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiaoyoufenhui_id` int DEFAULT NULL COMMENT '分会名称 ',
  `chengyuan_name` varchar(200) DEFAULT NULL COMMENT '成员名称 Search111 ',
  `chengyuan_photo` varchar(200) DEFAULT NULL COMMENT '成员头像',
  `sex_types` varchar(200) DEFAULT NULL COMMENT '性别',
  `chengyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='分会成员';

DELETE FROM `chengyuan`;
INSERT INTO `chengyuan` (`id`, `xiaoyoufenhui_id`, `chengyuan_name`, `chengyuan_photo`, `sex_types`, `chengyuan_phone`, `create_time`) VALUES
	(1, 1, '成员名称1', 'http://localhost:8080/xiaoyouwang/upload/yonghu1.jpg', '性别1', '17703786901', '2022-04-01 09:19:34'),
	(2, 2, '成员名称2', 'http://localhost:8080/xiaoyouwang/upload/yonghu2.jpg', '性别2', '17703786902', '2022-04-01 09:19:34'),
	(3, 3, '成员名称3', 'http://localhost:8080/xiaoyouwang/upload/yonghu3.jpg', '性别3', '17703786903', '2022-04-01 09:19:34'),
	(4, 4, '成员名称4', 'http://localhost:8080/xiaoyouwang/upload/yonghu1.jpg', '性别4', '17703786904', '2022-04-01 09:19:34'),
	(5, 5, '成员名称5', 'http://localhost:8080/xiaoyouwang/upload/yonghu2.jpg', '性别5', '17703786905', '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xiaoyouwang/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xiaoyouwang/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xiaoyouwang/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'xiaoyoufenhui_types', '分会类型', 1, '分会类型1', NULL, NULL, '2022-04-01 09:19:27'),
	(2, 'xiaoyoufenhui_types', '分会类型', 2, '分会类型2', NULL, NULL, '2022-04-01 09:19:27'),
	(3, 'xiaoyoufenhui_types', '分会类型', 3, '分会类型3', NULL, NULL, '2022-04-01 09:19:27'),
	(4, 'xiaoyoufengcai_types', '奖项类型', 1, '奖项类型1', NULL, NULL, '2022-04-01 09:19:27'),
	(5, 'xiaoyoufengcai_types', '奖项类型', 2, '奖项类型2', NULL, NULL, '2022-04-01 09:19:27'),
	(6, 'xiaoyoufengcai_types', '奖项类型', 3, '奖项类型3', NULL, NULL, '2022-04-01 09:19:27'),
	(7, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2022-04-01 09:19:27'),
	(8, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2022-04-01 09:19:27'),
	(9, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2022-04-01 09:19:27'),
	(10, 'zhaopin_types', '招聘岗位', 1, '招聘岗位1', NULL, NULL, '2022-04-01 09:19:27'),
	(11, 'zhaopin_types', '招聘岗位', 2, '招聘岗位2', NULL, NULL, '2022-04-01 09:19:27'),
	(12, 'zhaopin_types', '招聘岗位', 3, '招聘岗位3', NULL, NULL, '2022-04-01 09:19:27'),
	(13, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-01 09:19:28'),
	(14, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-01 09:19:28'),
	(15, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-01 09:19:28'),
	(16, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-01 09:19:28'),
	(17, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-01 09:19:28'),
	(18, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2022-04-01 09:19:28'),
	(19, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2022-04-01 09:19:28'),
	(20, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2022-04-01 09:19:28'),
	(21, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-01 09:19:28'),
	(22, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-01 09:19:28');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '校友',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='校友交谈';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', NULL, 3, 1, '2022-04-01 09:19:34', '2022-04-01 09:19:34', '2022-04-01 09:19:34'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 3, 1, '2022-04-01 09:19:34', '2022-04-01 09:19:34', '2022-04-01 09:19:34'),
	(3, '帖子标题3', 1, NULL, '发布内容3', NULL, 2, 1, '2022-04-01 09:19:34', '2022-04-01 09:19:34', '2022-04-01 09:19:34'),
	(4, '帖子标题4', 2, NULL, '发布内容4', NULL, 1, 1, '2022-04-01 09:19:34', '2022-04-01 09:19:34', '2022-04-01 09:19:34'),
	(5, '帖子标题5', 2, NULL, '发布内容5', NULL, 3, 1, '2022-04-01 09:19:34', '2022-04-01 09:19:34', '2022-04-01 09:19:34'),
	(6, NULL, 1, NULL, '评论123', 5, NULL, 2, '2022-04-01 09:50:46', NULL, '2022-04-01 09:50:46'),
	(7, NULL, NULL, 1, '管理评论', 5, NULL, 2, '2022-04-01 09:51:55', NULL, '2022-04-01 09:51:55');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '校友',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111 ',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动封面',
  `huodong_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='活动发布';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `yonghu_id`, `huodong_name`, `huodong_types`, `huodong_photo`, `huodong_content`, `create_time`) VALUES
	(1, 1, '活动名称1', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805342060.jpeg', '<p>详情1</p>', '2022-04-01 09:19:34'),
	(2, 2, '活动名称2', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805333521.jpeg', '<p>详情2</p>', '2022-04-01 09:19:34'),
	(3, 3, '活动名称3', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805326148.jpeg', '<p>详情3</p>', '2022-04-01 09:19:34'),
	(4, 2, '活动名称4', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805310225.jpeg', '<p>详情4</p>', '2022-04-01 09:19:34'),
	(5, 3, '活动名称5', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805296465.webp', '<p>详情5</p>', '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 1, 'http://localhost:8080/xiaoyouwang/upload/news1.jpg', '2022-04-01 09:19:34', '公告详情1', '2022-04-01 09:19:34'),
	(2, '公告标题2', 3, 'http://localhost:8080/xiaoyouwang/upload/news2.jpg', '2022-04-01 09:19:34', '公告详情2', '2022-04-01 09:19:34'),
	(3, '公告标题3', 2, 'http://localhost:8080/xiaoyouwang/upload/news3.jpg', '2022-04-01 09:19:34', '公告详情3', '2022-04-01 09:19:34'),
	(4, '公告标题4', 2, 'http://localhost:8080/xiaoyouwang/upload/news4.jpg', '2022-04-01 09:19:34', '公告详情4', '2022-04-01 09:19:34'),
	(5, '公告标题5', 3, 'http://localhost:8080/xiaoyouwang/upload/news5.jpg', '2022-04-01 09:19:34', '公告详情5', '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'bq3uiawaz4ib5a3uhssetw05ttj9cxx6', '2022-04-01 09:24:03', '2024-07-24 04:29:46'),
	(2, 1, 'a1', 'yonghu', '校友', 'whev7pc19o63mpcz2s8e0fi7tvfwytd7', '2022-04-01 09:30:15', '2024-07-24 04:31:09');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `xiaoyoufengcai`;
CREATE TABLE IF NOT EXISTS `xiaoyoufengcai` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '校友 ',
  `xiaoyoufengcai_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xiaoyoufengcai_types` int DEFAULT NULL COMMENT '奖项类型 Search111',
  `xiaoyoufengcai_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaoyoufengcai_jiango` varchar(200) DEFAULT NULL COMMENT '所得奖项',
  `xiaoyoufengcai_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='校友风采';

DELETE FROM `xiaoyoufengcai`;
INSERT INTO `xiaoyoufengcai` (`id`, `yonghu_id`, `xiaoyoufengcai_name`, `xiaoyoufengcai_types`, `xiaoyoufengcai_photo`, `xiaoyoufengcai_jiango`, `xiaoyoufengcai_content`, `create_time`) VALUES
	(1, 3, '标题1', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805388338.webp', '所得奖项1', '<p>详情1</p>', '2022-04-01 09:19:34'),
	(2, 2, '标题2', 2, 'http://localhost:8080/xiaoyouwang/upload/1648805381224.webp', '所得奖项2', '<p>详情2</p>', '2022-04-01 09:19:34'),
	(3, 1, '标题3', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805373706.webp', '所得奖项3', '<p>详情3</p>', '2022-04-01 09:19:34'),
	(4, 1, '标题4', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805366169.webp', '所得奖项4', '<p>详情4</p>', '2022-04-01 09:19:34'),
	(5, 1, '标题5', 2, 'http://localhost:8080/xiaoyouwang/upload/1648805358797.webp', '所得奖项5', '<p>详情5</p>', '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `xiaoyoufenhui`;
CREATE TABLE IF NOT EXISTS `xiaoyoufenhui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiaoyoufenhui_name` varchar(200) DEFAULT NULL COMMENT '分会名称 Search111 ',
  `xiaoyoufenhui_types` int DEFAULT NULL COMMENT '分会类型 Search111',
  `xiaoyoufenhui_photo` varchar(200) DEFAULT NULL COMMENT '分会封面',
  `xiaoyoufenhui_fuzheren` varchar(200) DEFAULT NULL COMMENT '负责人 ',
  `xiaoyoufenhui_address` varchar(200) DEFAULT NULL COMMENT '分会地点 ',
  `xiaoyoufenhui_content` text COMMENT '分会简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='校友分会';

DELETE FROM `xiaoyoufenhui`;
INSERT INTO `xiaoyoufenhui` (`id`, `xiaoyoufenhui_name`, `xiaoyoufenhui_types`, `xiaoyoufenhui_photo`, `xiaoyoufenhui_fuzheren`, `xiaoyoufenhui_address`, `xiaoyoufenhui_content`, `create_time`) VALUES
	(1, '分会名称1', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805262595.jpeg', '负责人1', '分会地点1', '<p>分会简介1</p>', '2022-04-01 09:19:34'),
	(2, '分会名称2', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805255170.jpeg', '负责人2', '分会地点2', '<p>分会简介2</p>', '2022-04-01 09:19:34'),
	(3, '分会名称3', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805247135.jpeg', '负责人3', '分会地点3', '<p>分会简介3</p>', '2022-04-01 09:19:34'),
	(4, '分会名称4', 1, 'http://localhost:8080/xiaoyouwang/upload/1648805239898.jpeg', '负责人4', '分会地点4', '<p>分会简介4</p>', '2022-04-01 09:19:34'),
	(5, '分会名称5', 3, 'http://localhost:8080/xiaoyouwang/upload/1648805232135.jpeg', '负责人5', '分会地点5', '<p>分会简介5</p>', '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '校友姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='校友';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '校友1', '123456', '校友姓名1', 'http://localhost:8080/xiaoyouwang/upload/yonghu1.jpg', '17703786901', '1@qq.com', 2, 1, '2022-04-01 09:19:34'),
	(2, '校友2', '123456', '校友姓名2', 'http://localhost:8080/xiaoyouwang/upload/yonghu2.jpg', '17703786902', '2@qq.com', 1, 1, '2022-04-01 09:19:34'),
	(3, '校友3', '123456', '校友姓名3', 'http://localhost:8080/xiaoyouwang/upload/yonghu3.jpg', '17703786903', '3@qq.com', 1, 1, '2022-04-01 09:19:34');

DROP TABLE IF EXISTS `zhaopin`;
CREATE TABLE IF NOT EXISTS `zhaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '校友',
  `zhaopin_name` varchar(200) DEFAULT NULL COMMENT '招聘信息名称  Search111 ',
  `zhaopin_photo` varchar(200) DEFAULT NULL COMMENT '招聘信息照片',
  `zhaopin_daiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `zhaopin_address` varchar(200) DEFAULT NULL COMMENT '上班地点',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopin_phone` varchar(200) DEFAULT NULL COMMENT '招聘电话',
  `zhaopin_types` int DEFAULT NULL COMMENT '招聘岗位 Search111',
  `zhaopin_renshu_number` int DEFAULT NULL COMMENT '招聘人数',
  `zhaopin_content` text COMMENT '招聘信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='校友招聘';

DELETE FROM `zhaopin`;
INSERT INTO `zhaopin` (`id`, `yonghu_id`, `zhaopin_name`, `zhaopin_photo`, `zhaopin_daiyu`, `zhaopin_address`, `lianxiren_name`, `zhaopin_phone`, `zhaopin_types`, `zhaopin_renshu_number`, `zhaopin_content`, `create_time`) VALUES
	(1, 1, '招聘信息名称1', 'http://localhost:8080/xiaoyouwang/upload/zhaopin1.jpg', '薪资待遇1', '上班地点1', '联系人1', '17703786901', 2, 121, '招聘信息详情1', '2022-04-01 09:19:34'),
	(2, 2, '招聘信息名称2', 'http://localhost:8080/xiaoyouwang/upload/zhaopin2.jpg', '薪资待遇2', '上班地点2', '联系人2', '17703786902', 2, 202, '招聘信息详情2', '2022-04-01 09:19:34'),
	(3, 1, '招聘信息名称3', 'http://localhost:8080/xiaoyouwang/upload/zhaopin3.jpg', '薪资待遇3', '上班地点3', '联系人3', '17703786903', 1, 455, '招聘信息详情3', '2022-04-01 09:19:34'),
	(4, 3, '招聘信息名称4', 'http://localhost:8080/xiaoyouwang/upload/zhaopin4.jpg', '薪资待遇4', '上班地点4', '联系人4', '17703786904', 1, 215, '招聘信息详情4', '2022-04-01 09:19:34'),
	(5, 1, '招聘信息名称5', 'http://localhost:8080/xiaoyouwang/upload/zhaopin5.jpg', '薪资待遇5', '上班地点5', '联系人5', '17703786905', 1, 198, '招聘信息详情5', '2022-04-01 09:19:34');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
