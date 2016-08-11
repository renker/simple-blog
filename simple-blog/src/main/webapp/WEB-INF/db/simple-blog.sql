-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.1.33-community - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 simple_blog 的数据库结构
DROP DATABASE IF EXISTS `simple_blog`;
CREATE DATABASE IF NOT EXISTS `simple_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `simple_blog`;


-- 导出  表 simple_blog.blog_permission 结构
DROP TABLE IF EXISTS `blog_permission`;
CREATE TABLE IF NOT EXISTS `blog_permission` (
  `id` varchar(50) DEFAULT NULL COMMENT 'id',
  `key` varchar(50) DEFAULT NULL COMMENT '权限名',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

-- 正在导出表  simple_blog.blog_permission 的数据：~0 rows (大约)
DELETE FROM `blog_permission`;
/*!40000 ALTER TABLE `blog_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_permission` ENABLE KEYS */;


-- 导出  表 simple_blog.blog_person 结构
DROP TABLE IF EXISTS `blog_person`;
CREATE TABLE IF NOT EXISTS `blog_person` (
  `id` varchar(50) NOT NULL COMMENT 'id',
  `account` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `root` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是root用户(0 否 1 是)',
  `login_error_allow_num` int(2) NOT NULL DEFAULT '5' COMMENT '允许登陆错误次数',
  `login_error_num` int(2) NOT NULL DEFAULT '0' COMMENT '登陆错误次数',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '账号状态 （-1 删除 0 未激活 1 正常 2 锁定）',
  `salt` varchar(50) NOT NULL COMMENT '盐',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  simple_blog.blog_person 的数据：~1 rows (大约)
DELETE FROM `blog_person`;
/*!40000 ALTER TABLE `blog_person` DISABLE KEYS */;
INSERT INTO `blog_person` (`id`, `account`, `password`, `root`, `login_error_allow_num`, `login_error_num`, `status`, `salt`) VALUES
	('6E2FEA7CE7944222A54F0157160335E0', 'root', '74716FA90FC8F94626AE6068B74ADC59', 0, 5, 0, 1, 'E523B0BFC54E44449F72FB9ADFDD30EE');
/*!40000 ALTER TABLE `blog_person` ENABLE KEYS */;


-- 导出  表 simple_blog.blog_resource 结构
DROP TABLE IF EXISTS `blog_resource`;
CREATE TABLE IF NOT EXISTS `blog_resource` (
  `id` varchar(50) DEFAULT NULL COMMENT 'id',
  `key` varchar(50) DEFAULT NULL COMMENT '资源key',
  `resource` varchar(50) DEFAULT NULL COMMENT '资源路径',
  `pattern` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源';

-- 正在导出表  simple_blog.blog_resource 的数据：~0 rows (大约)
DELETE FROM `blog_resource`;
/*!40000 ALTER TABLE `blog_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_resource` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
