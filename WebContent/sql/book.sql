-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 book 的数据库结构
CREATE DATABASE IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `book`;

-- 导出  表 book.t_book 结构
CREATE TABLE IF NOT EXISTS `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sales` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_path` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  book.t_book 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` (`id`, `name`, `price`, `author`, `sales`, `stock`, `img_path`) VALUES
	(1, '人间词话', 80.00, '王国维', 9999, 9, 'static/img/default.jpg'),
	(2, '儒林外史', 78.50, '吴敬梓', 6, 13, 'static/img/default.jpg'),
	(3, '背影', 68.00, '朱自清', 99999, 52, 'static/img/default.jpg'),
	(4, '自在独行', 16.00, '贾平凹', 1000, 50, 'static/img/default.jpg'),
	(5, '活着', 45.50, '余华', 14, 95, 'static/img/default.jpg'),
	(6, '百年孤独', 9.90, '马尔克斯', 12, 53, 'static/img/default.jpg'),
	(7, '人生的枷锁', 66.50, '毛姆', 125, 535, 'static/img/default.jpg'),
	(8, '霍乱时期的爱情', 99.50, '马尔克斯', 47, 36, 'static/img/default.jpg'),
	(9, '生命不能承受之轻', 9.90, '昆德拉', 85, 95, 'static/img/default.jpg'),
	(10, '红楼梦', 49.00, '曹雪芹', 52, 62, 'static/img/default.jpg'),
	(11, '围城', 28.00, '钱钟书', 52, 74, 'static/img/default.jpg'),
	(12, '你当像鸟飞往你的山', 51.50, '韦斯特弗', 48, 82, 'static/img/default.jpg'),
	(13, '西游记', 12.00, '罗贯中', 19, 9999, 'static/img/default.jpg'),
	(14, '一句顶一万句', 33.05, '刘震云', 22, 88, 'static/img/default.jpg'),
	(15, '1984', 133.05, '奥威尔', 122, 188, 'static/img/default.jpg'),
	(16, '杀死一只知更鸟', 173.15, '哈伯.李', 21, 81, 'static/img/default.jpg'),
	(17, '半生缘', 99.15, '张爱玲', 210, 810, 'static/img/default.jpg'),
	(18, '温柔的夜', 69.15, '三毛', 210, 810, 'static/img/default.jpg'),
	(19, '酒吧长谈', 89.15, '略萨', 20, 10, 'static/img/default.jpg'),
	(20, '亲爱的安德烈', 88.15, '龙应台', 20, 80, 'static/img/default.jpg');
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;

-- 导出  表 book.t_order 结构
CREATE TABLE IF NOT EXISTS `t_order` (
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  book.t_order 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;

-- 导出  表 book.t_order_item 结构
CREATE TABLE IF NOT EXISTS `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `order_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `t_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  book.t_order_item 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order_item` ENABLE KEYS */;

-- 导出  表 book.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  book.t_user 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `username`, `password`, `email`) VALUES
	(1, 'mask', '123456', '123456789@qq.com');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
