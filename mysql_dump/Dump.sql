CREATE DATABASE  IF NOT EXISTS `joomla` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `joomla`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: joomla
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `srccn_ak_profiles`
--

DROP TABLE IF EXISTS `srccn_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ak_profiles`
--

LOCK TABLES `srccn_ak_profiles` WRITE;
/*!40000 ALTER TABLE `srccn_ak_profiles` DISABLE KEYS */;
INSERT INTO `srccn_ak_profiles` VALUES (1,'Default Backup Profile','###AES128###oW1IqMkrF25h5+fiGC7b7C+Ex1F94rBphDNLmMC916JKhDX88m+QRfJwwSdq5Q/mPOf7SVNn15Ky43fDac7lSbmdm7cDl/LS6fwJQvPpybyEKq9uVgaEfLSFe/Adqz6RH+RQGhioJCLZ5NskOb6FHB9zdmvsvT2yzDJ773K6rC9dSJI5m0RtVTdhI2jUbFCJYpP1pC8+9/Gpc/36rrGPSHSmYLRCbOYrGwzJlGAlVV5JXUt6qPeL3Xqz4x1Wez63koQLVcUCViGvKgFvKbmsHR2Qd1pag+HTIfttkMa1xMcnfhABJ6L/gw4ilohJV1jEXblgazmfh6XJnvsmeeavAuajTKNaSGew8F7dgh+FB4/WjNisfMjWRM5HTFDTgFxydLm6g71iHBu7xh/ktQdTTIS02LG8THzNKqAyh9QrBBhemNthCT/n1XV4flHTvjdiLf/0nuEAOiy3w5XJDsrm0VWc25E/SJ6b3rhBB5B2gg8Nohh5nshPXfbKWrswsAOdBYKwFDUa2ehNYZi2ZRy1eK+C2w0yApNhFDJRdTpZU30yCk70JQGYnQ8n18pB0Q11rHxZ7gXBOMUX37mhyFhz3w0k+OtSjS8OUGeMSc4fNfJI/cpXtK3MldwyPLFbI8bv+BZDHvesUCLoYOY3di6i8tlkrlw9S2oeyWwoM+0pxNkOiMBkekYP1I48kJxZGjWxKMm6SsfEHoQIoTWzL10/QLsaZi6C9bgWfdAkEKg2jWKEGLImD+q4gdo1axWi5Nlsn8J8sqVIr/3evi3bGgEtYNaARMAlagPMpO9B0xHYacL54vCrseslDSMUtBN0Lj/wMD9UurpxYYtb7r/uaqtfGgAstqgQKozZgv6GB62+6Nfmkkx7N+D0dCNCIZVV8CxswdYmX9VYhYuQzrjoBIMtW8mr5LTtn+s96RMOIvUhqFmjem3fqkOqEilIurtub0CNE+hBnD6L0RFbqAubZmJKRx0T1LVJhQuFxMZHDCUzkO1qWTLWaJdtoV9v1Hj/jLgndzPQuO81wZqa/WpTyHmjYfANt4CMzLVbji4TMaVQYk2DIu4lyek89AsDU/s5H2N4VQBSfV4bY3buNbd9p3MuZgHDP6a+o/yV5MUF2TcZdGL+cecmkmDfqqr440C+LE83yCUw/QyUzLBATVA6TAINGRTqHldlKTTwxuCToDAIurX2neM9dVu4Yi9fjRix/aZMYqX98EtHhR+9qpV/QND+NzmrSnjj7UqyycGFOZwmKOY1Jfy5DBSaPItBPBcKRd6ZLeZQCWRUIXi4MlYxd1OE1d+cLNbyfL2QRwn9Sf7c8KXgQIFGhCshUpdNJ4cVNcQf1Zy2WELcTdRm3tTvWWaZz4X8kAm4gRUt089lJbWnN91jFap44Sh6ecv3wTFCDveDAv/61jGeBdjN5rS4W9++8NRQrg2A5qPMCV2NuDZi+9/e0z94Y+0vZ1lRjS+9tcqB90ud7jH/dV/7S7nzhn9eKaToDNojVrrw5eH3FbkJ3vZa0hwbmHRUTLhJWBQKLDziqf/7YS9ZTSEkByl2H6QVLYbAa3j6lxWGVsRoYKePdUSQyi76Sm/OzU6bIBPJ9kX0ClcRwS4BP2FfkcwrYZdG2xSwtaCiMX7588VXg16Kb901/zHV/M9z5RliVKho+4Tf6A1YUwuNgVatYciSc8V0b39Q92EiSHAh9kNiHzH4gCvgSzKmg3EJFU9Le0vT71AH60nb2E4SxgP5+Lj0oVt7xmYj9c2ya6S3/WeJW6zEvZ+2/lrYWlAnt2PCUdXypAEB2aDMZGy/yMlVku8FggTMUbSFOUOP6k48htyvyB5f3QUYaa/Sdoyd9HsHlQZlKME43xFXFq2yOXazeFiK84+NKUpc/BssHfvkOZuJKarnDpbD3MUWzbndXGF8PwLGLtd4DegFeri4zvZpy54LXR9vu4HQKgJNc8abKeSxCNwSwDxfzedhDJLKr93d/Z4jswFkrhCLqYh+tEFBUaAzuh90c9vEd/gylIiq0bke6u8QKHnBgm9YfBcT+5SUM/GzEmSHQaZ7AVNRhAvcHNgnh97//5hzncVlhdIamr+4Pa7mg9iX2mKVaJoRiPhEAam5QIxA9OprCTSdZUMi9HxA1x7t9VomMQFNp/eMnf6l5cDdYY1NDChoRUwWHDtaPSrWgF+QnMIe3Y1+D/yLmmVQo/GNq/WdyxXC+qJmMfqWicnuhON9BgAA','');
/*!40000 ALTER TABLE `srccn_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_ak_stats`
--

DROP TABLE IF EXISTS `srccn_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` varchar(30) NOT NULL DEFAULT 'backend',
  `type` varchar(30) NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `backupid` varchar(255) DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ak_stats`
--

LOCK TABLES `srccn_ak_stats` WRITE;
/*!40000 ALTER TABLE `srccn_ak_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_ak_storage`
--

DROP TABLE IF EXISTS `srccn_ak_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ak_storage` (
  `tag` varchar(255) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ak_storage`
--

LOCK TABLES `srccn_ak_storage` WRITE;
/*!40000 ALTER TABLE `srccn_ak_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_ak_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_akeeba_common`
--

DROP TABLE IF EXISTS `srccn_akeeba_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_akeeba_common` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_akeeba_common`
--

LOCK TABLES `srccn_akeeba_common` WRITE;
/*!40000 ALTER TABLE `srccn_akeeba_common` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_akeeba_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_assets`
--

DROP TABLE IF EXISTS `srccn_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_assets`
--

LOCK TABLES `srccn_assets` WRITE;
/*!40000 ALTER TABLE `srccn_assets` DISABLE KEYS */;
INSERT INTO `srccn_assets` VALUES (1,0,0,157,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,60,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,61,62,1,'com_cpanel','com_cpanel','{}'),(10,1,63,64,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,65,66,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,67,68,1,'com_login','com_login','{}'),(13,1,69,70,1,'com_mailto','com_mailto','{}'),(14,1,71,72,1,'com_massmail','com_massmail','{}'),(15,1,73,74,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,75,76,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,77,78,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,79,122,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,123,126,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,127,128,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,129,130,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,131,132,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,133,134,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,135,138,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,139,140,1,'com_wrapper','com_wrapper','{}'),(27,8,18,27,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,124,125,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,136,137,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,141,142,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,143,144,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,145,146,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,147,148,1,'com_contenthistory','com_contenthistory','{}'),(37,1,149,150,1,'com_ajax','com_ajax','{}'),(38,1,151,152,1,'com_postinstall','com_postinstall','{}'),(39,18,80,81,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(40,18,82,83,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,84,85,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,86,87,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,88,89,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,90,91,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,92,93,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,94,95,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,96,97,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,98,99,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,100,101,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,102,103,2,'com_modules.module.16','用户登入','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(51,18,104,105,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,106,107,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,108,109,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,1,153,154,1,'com_akeeba','Akeeba','{}'),(55,18,110,111,2,'com_modules.module.87','Chinese Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(56,8,28,39,2,'com_content.category.8','Blog','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(57,8,40,41,2,'com_content.category.9','Projects','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(58,8,42,43,2,'com_content.category.10','Our Teams','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(59,8,44,45,2,'com_content.category.11','FAQ','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(60,56,29,32,3,'com_content.category.12','News','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(61,8,46,47,2,'com_content.category.13','Registered User','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(62,8,48,49,2,'com_content.category.14','Chinese','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(63,27,19,20,3,'com_content.article.1','美国东南地区汽车行业投资','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(64,72,55,56,3,'com_content.article.2','投资于品牌','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(65,72,53,54,3,'com_content.article.3','专业团队','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(66,27,21,22,3,'com_content.article.4','投资者','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(67,27,23,24,3,'com_content.article.5','联系我们','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(68,27,25,26,3,'com_content.article.6','登录客户专区','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(69,56,33,34,3,'com_content.article.7','博客文1','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(70,56,35,36,3,'com_content.article.8','博客文2','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(71,72,51,52,3,'com_content.article.9','公司介绍','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(72,8,50,59,2,'com_content.category.15','Home Articles','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(73,60,30,31,4,'com_content.article.10','News','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(75,18,112,113,2,'com_modules.module.89','left position','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(76,18,114,115,2,'com_modules.module.90','News Category','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(77,1,155,156,1,'com_jce','JCE','{}'),(78,18,116,117,2,'com_modules.module.91','Slideshow CK','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(79,72,57,58,3,'com_content.article.11','安全融资模式','{\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),(80,56,37,38,3,'com_content.article.12','中文博客文章2','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(81,18,118,119,2,'com_modules.module.92','Header Contact Info','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(82,18,120,121,2,'com_modules.module.93','阿拉巴马州官员表述','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}');
/*!40000 ALTER TABLE `srccn_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_associations`
--

DROP TABLE IF EXISTS `srccn_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_associations`
--

LOCK TABLES `srccn_associations` WRITE;
/*!40000 ALTER TABLE `srccn_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_banner_clients`
--

DROP TABLE IF EXISTS `srccn_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_banner_clients`
--

LOCK TABLES `srccn_banner_clients` WRITE;
/*!40000 ALTER TABLE `srccn_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_banner_tracks`
--

DROP TABLE IF EXISTS `srccn_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_banner_tracks`
--

LOCK TABLES `srccn_banner_tracks` WRITE;
/*!40000 ALTER TABLE `srccn_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_banners`
--

DROP TABLE IF EXISTS `srccn_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_banners`
--

LOCK TABLES `srccn_banners` WRITE;
/*!40000 ALTER TABLE `srccn_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_categories`
--

DROP TABLE IF EXISTS `srccn_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_categories`
--

LOCK TABLES `srccn_categories` WRITE;
/*!40000 ALTER TABLE `srccn_categories` DISABLE KEYS */;
INSERT INTO `srccn_categories` VALUES (1,0,0,0,27,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,56,1,11,14,1,'blog','com_content','Blog','blog','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:03:06',0,'2015-04-20 21:03:06',0,'*',1),(9,57,1,15,16,1,'projects','com_content','Projects','projects','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:03:18',0,'2015-04-20 21:03:18',0,'*',1),(10,58,1,17,18,1,'our-teams','com_content','Our Teams','our-teams','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:03:35',0,'2015-04-20 21:03:35',0,'*',1),(11,59,1,19,20,1,'faq','com_content','FAQ','faq','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:03:45',0,'2015-04-20 21:03:45',0,'*',1),(12,60,8,12,13,2,'blog/news','com_content','News','news','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:03:53',365,'2015-04-20 21:19:18',0,'*',1),(13,61,1,21,22,1,'registered-user','com_content','Registered User','registered-user','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:04:19',0,'2015-04-20 21:04:19',0,'*',1),(14,62,1,23,24,1,'chinese','com_content','Chinese','chinese','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:04:28',0,'2015-04-20 21:04:28',0,'*',1),(15,72,1,25,26,1,'home-articles','com_content','Home Articles','home-articles','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',365,'2015-04-20 21:48:42',0,'2015-04-20 21:48:42',0,'*',1);
/*!40000 ALTER TABLE `srccn_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_contact_details`
--

DROP TABLE IF EXISTS `srccn_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_contact_details`
--

LOCK TABLES `srccn_contact_details` WRITE;
/*!40000 ALTER TABLE `srccn_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_content`
--

DROP TABLE IF EXISTS `srccn_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_content`
--

LOCK TABLES `srccn_content` WRITE;
/*!40000 ALTER TABLE `srccn_content` DISABLE KEYS */;
INSERT INTO `srccn_content` VALUES (1,63,'美国东南地区汽车行业投资','2015-04-20-21-05-55','<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/srccn/article_photos/2065212_orig.jpg\" alt=\"\" /></p>\r\n<div style=\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\">\r\n<p><strong>现代汽车和起亚汽车对区域的影响</strong></p>\r\n<p>在美国东南部， 汽车制造业一直保持着强劲的发展势头。美国通用，福特和克莱斯勒公司已经在该区域经营了几十年。然而近年来，是外资汽车公司继续着对该区城的投资。世界著名厂商，现代，起亚，大众，宝马，奔驰，本田，日产和丰田来该地区设厂，这些工厂的供应商们的业务也都持续地扩展。</p>\r\n<p><strong>Automotive Manufacturers in the Southeastern Corridor</strong></p>\r\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br /> <br /> <br/> </p>\r\n</div>\r\n<p style=\"text-align: center;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/srccn/article_photos/4224727_orig.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><strong>现代汽车阿拉巴马生产厂， 庆祝第一百万辆车出厂</strong></p>','',1,2,'2015-04-20 21:05:55',365,'','2015-04-23 21:21:03',365,0,'0000-00-00 00:00:00','2015-04-20 21:05:55','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',25,6,'','',1,83,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,64,'投资于品牌','2015-04-20-21-06-23','<p>我们选择全球知名汽车制造企业作为开发项目，创造大量的真正就业机会，使投资人顺利通过移民所需门槛。</p>','',1,15,'2015-04-20 21:06:23',365,'','2015-04-21 16:45:24',365,0,'0000-00-00 00:00:00','2015-04-20 21:06:23','0000-00-00 00:00:00','{\"image_intro\":\"images\\/srccn\\/slide_photo\\/src_logo_small.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,3,'','',1,24,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,65,'专业团队','2015-04-20-21-07-26','<p>我们的专家团队致力于投资开发项目的顺利进行，这才是EB-5投资人的根本利益所在。我们的团队包括</p>\r\n','\r\n<p>对投资项目评估，移民法律，经济学专家，以及成功移民后的后期服务。</p>\r\n<p>项目评估</p>\r\n<p>&nbsp;</p>\r\n<p>移民法律</p>\r\n<p>&nbsp;</p>\r\n<p>EB-5经济学</p>\r\n<p>&nbsp;</p>\r\n<p>后期服务</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>',1,15,'2015-04-20 21:07:26',365,'','2015-04-21 16:45:24',365,0,'0000-00-00 00:00:00','2015-04-20 21:07:26','0000-00-00 00:00:00','{\"image_intro\":\"images\\/srccn\\/slide_photo\\/src_logo_small.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,2,'','',1,25,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,66,'投资者','2015-04-20-21-07-44','','',1,2,'2015-04-20 21:07:44',365,'','2015-04-20 21:07:44',0,0,'0000-00-00 00:00:00','2015-04-20 21:07:44','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,13,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,67,'联系我们','2015-04-20-21-08-00','','',1,2,'2015-04-20 21:08:00',365,'','2015-04-20 21:08:00',0,0,'0000-00-00 00:00:00','2015-04-20 21:08:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,20,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,68,'登录客户专区','2015-04-20-21-08-42','','',1,2,'2015-04-20 21:08:42',365,'','2015-04-20 21:08:42',0,0,'0000-00-00 00:00:00','2015-04-20 21:08:42','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,69,'博客文1','1','','',1,8,'2015-04-20 21:20:07',365,'','2015-04-20 21:20:07',0,0,'0000-00-00 00:00:00','2015-04-20 21:20:07','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,70,'博客文2','2','','',1,8,'2015-04-20 21:20:35',365,'','2015-04-20 21:20:35',0,0,'0000-00-00 00:00:00','2015-04-20 21:20:35','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,71,'公司介绍','2015-04-20-21-48-02','<p>美国东南地区投资项目中心专门办理汽车和制造业相关的投资项目。我们位于美国同南部的汽车制造的心脏，随着汽车制造一起兴旺发展。</p>\r\n<p>世界上外资汽车制造商，如韩国的现代和起亚已经在美国东南部稳步扩展业务，我们经手办理的EB-5， 投资移民项目，成功地帮助第一，第二级的现代和起亚供应商在本地区扩展业务，同时促进了当地经济的发展， 在就业亟待发展地区，造就了成千上万的就业机会，这些实实在在的就业，无时无刻地影响着普通人和他们所在社区的日常生活。</p>\r\n<hr />\r\n<p>&nbsp;</p>','',1,15,'2015-04-20 21:48:02',365,'','2015-04-23 19:25:31',365,0,'0000-00-00 00:00:00','2015-04-20 21:48:02','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"1\",\"link_titles\":\"0\",\"show_tags\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',11,1,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,73,'News','news','<p>美国EB-5 投资移民项目的实行，目的是吸引海外投资移民者来美国投资及创造就业机会。此类签证每年有10000个名额。根据此方案，外国移民申请人在美投资创设有利 于美国经济的商业性企业，</p>\r\n','\r\n<p>并创造10个全职的美国工人就业机会，即可获发二年期的条件式移民签证。二年届满前90天，若移民投资者的投资行为仍存在，可申 请\"条件移除\"，而成为永久居民。此方案的投资额为美金100万元。如果投资标的是位于目标就业区（Targeted Employment Area），则投资额可降为50万美金</p>',1,12,'2015-04-21 13:22:49',365,'','2015-04-21 13:26:24',365,0,'0000-00-00 00:00:00','2015-04-21 13:22:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,0,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,79,'安全融资模式','2015-04-21-16-39-44','<p>我们致力于保持100%EB-5获批，进而投资人成功获得绿卡的同时，还提供投资理财的金融支持，最大限度地保护EB-5投资人的资金安全。</p>','',1,15,'2015-04-21 16:39:44',365,'','2015-04-21 16:45:24',365,0,'0000-00-00 00:00:00','2015-04-21 16:39:44','0000-00-00 00:00:00','{\"image_intro\":\"images\\/srccn\\/slide_photo\\/src_logo_small.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',2,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,80,'中文博客文章2','2-2','<p>this is a blog artical added from frot-end</p>','',1,8,'2015-04-22 16:37:30',365,'','2015-04-22 16:37:30',0,0,'0000-00-00 00:00:00','2015-04-22 16:37:30','0000-00-00 00:00:00','{}','{}','{}',1,0,'','',1,0,'{}',0,'zh-CN','');
/*!40000 ALTER TABLE `srccn_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_content_frontpage`
--

DROP TABLE IF EXISTS `srccn_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_content_frontpage`
--

LOCK TABLES `srccn_content_frontpage` WRITE;
/*!40000 ALTER TABLE `srccn_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_content_rating`
--

DROP TABLE IF EXISTS `srccn_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_content_rating`
--

LOCK TABLES `srccn_content_rating` WRITE;
/*!40000 ALTER TABLE `srccn_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_content_types`
--

DROP TABLE IF EXISTS `srccn_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_content_types`
--

LOCK TABLES `srccn_content_types` WRITE;
/*!40000 ALTER TABLE `srccn_content_types` DISABLE KEYS */;
INSERT INTO `srccn_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `srccn_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_contentitem_tag_map`
--

DROP TABLE IF EXISTS `srccn_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_contentitem_tag_map`
--

LOCK TABLES `srccn_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `srccn_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_core_log_searches`
--

DROP TABLE IF EXISTS `srccn_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_core_log_searches`
--

LOCK TABLES `srccn_core_log_searches` WRITE;
/*!40000 ALTER TABLE `srccn_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_extensions`
--

DROP TABLE IF EXISTS `srccn_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_extensions`
--

LOCK TABLES `srccn_extensions` WRITE;
/*!40000 ALTER TABLE `srccn_extensions` DISABLE KEYS */;
INSERT INTO `srccn_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"zh-CN\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"simplepie\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"98692adc4518fd130d1bb68b81f66afb\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-03-11 11:59:00\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.2\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"March 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2015 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'','language','zh-CN','',0,1,0,0,'{\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2015-03-03\",\"author\":\"CHN Translation Team: joomla.cn\",\"copyright\":\"Copyright (C) 2005 - 2015 \\u7b80\\u4f53\\u4e2d\\u6587\\u7ffb\\u8bd1\\u7ec4\\uff08joomla.cn\\uff09\\u53caOpen Source Matters\\uff0c\\u7248\\u6743\\u6240\\u6709\\u3002\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"3.4.1.1\",\"description\":\"\\n    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 3.x front-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 3.4\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u5b98\\u65b9\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 2.5\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u5949\\u732e\\u7cbe\\u795e\\u548c\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutJoomlaChina.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,'','language','zh-CN','',1,1,0,0,'{\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2015-3-14\",\"author\":\"CHN Translation Team: joomla.cn\",\"copyright\":\"Copyright (C) 2005 - 2014 \\u7b80\\u4f53\\u4e2d\\u6587\\u7ffb\\u8bd1\\u7ec4\\uff08joomla.cn\\uff09\\u53caOpen Source Matters\\uff0c\\u7248\\u6743\\u6240\\u6709\\u3002\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"3.4.1.1\",\"description\":\"\\n    \\n<div align=\\\"center\\\">\\n <table border=\\\"0\\\" width=\\\"90%\\\">\\n  <table width=\\\"100%\\\" border=\\\"0\\\">\\n  <tr>\\n    <td colspan=\\\"2\\\">Chinese language for Joomla 3.x front-end. Translated by CHN Joomla Translation Team, one of Joomla Accredited Translations.<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla 3.4\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u662f\\u7531Joomla\\u5b98\\u65b9\\u7ffb\\u8bd1\\u7ec4\\u7684Derek Joe\\u5728Joomla 2.5\\u7ffb\\u8bd1\\u5de5\\u4f5c\\u7684\\u57fa\\u7840\\u4e0a\\u8865\\u5145\\u7ffb\\u8bd1\\u3002<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">Joomla\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7684\\u4e3b\\u8981\\u8d21\\u732e\\u4eba\\uff1a<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u524d\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/wuyujie\\/\\\" target=\\\"_blank\\\">\\u6b66\\u7389\\u6770<\\/a>(wuyujie)\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/gzpan123\\/\\\" target=\\\"_blank\\\">\\u90ed\\u5fd7\\u6500<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u540e\\u53f0\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/keydiagram\\/\\\" target=\\\"_blank\\\">Key Diagram<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u5b89\\u88c5\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/freechoice\\/\\\" target=\\\"_blank\\\">Johnathan Cheun<\\/a>\\u3001<a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/tchyusuf\\/\\\">Yusuf  Wang<\\/a>\\u3001 <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u793a\\u8303\\u5185\\u5bb9\\u53ca\\u7f16\\u8f91\\u5668\\uff1a <a href=\\\"http:\\/\\/joomlacode.org\\/gf\\/user\\/zhous\\/\\\" target=\\\"_blank\\\">Derek Joe<\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">\\u591a\\u8c22\\u5927\\u5bb6\\u7684\\u5949\\u732e\\u7cbe\\u795e\\u548c\\u8f9b\\u52e4\\u52b3\\u52a8\\uff01<\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td width=\\\"132\\\"><p><a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/aboutJoomlaChina.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\" width=\\\"130\\\" height=\\\"70\\\" align=\\\"left\\\" longdesc=\\\"http:\\/\\/www.joomla.cn\\\"><br \\/>\\n    <\\/a><\\/p><\\/td>\\n    <td valign=\\\"middle\\\"><a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\">Joomla\\u53ca\\u5176\\u6269\\u5c55\\u6c49\\u5316\\u7684\\u5206\\u4eab\\u4e0e\\u8ba8\\u8bba\\u8bf7\\u8bbf\\u95ee\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\\"<\\/a><br \\/>\\n      <b>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u7684\\u670b\\u53cb<\\/b><br \\/>\\n    <a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\"><b>\\u52a0\\u5165\\u6211\\u4eec\\u7684\\u7ffb\\u8bd1\\u7ec4<\\/b><\\/a><\\/td>\\n  <\\/tr>\\n  <tr>\\n    <td colspan=\\\"2\\\">&nbsp;<\\/td>\\n  <\\/tr>\\n<\\/table>\\n <\\/div>\\n  \\n\\t\",\"group\":\"\",\"filename\":\"install\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10002,'简体中文语言包','package','pkg_zh-CN','',0,1,1,0,'{\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\",\"type\":\"package\",\"creationDate\":\"2015-03-03\",\"author\":\"CHN Translation Team: joomla.cn\",\"copyright\":\"Copyright (C) 2005 - 2015 \\u56e7\\u5566\\u4e2d\\u56fd\\uff08joomla.cn\\uff09\\u53caOpen Source Matters\\uff0c\\u7248\\u6743\\u6240\\u6709\\u3002\",\"authorEmail\":\"zhous1998@sohu.com\",\"authorUrl\":\"www.joomla.cn\",\"version\":\"3.4.1.1\",\"description\":\"\\n\\t\\n\\t<h3>Joomla! 3.4.1\\u7b80\\u4f53\\u4e2d\\u6587\\u8bed\\u8a00\\u5305\\u7b2c\\u4e00\\u7248<\\/h3>\\n    <h3>Joomla! 3.4.1 Full Simplified Chinese (zh-CN) Language Package version 1<\\/h3>\\n\\t<div>\\n\\t<a href=\\\"http:\\/\\/www.joomla.cn\\\" target=\\\"_blank\\\"><img src=\\\"http:\\/\\/www.joomla.cn\\/images\\/joomla.cn_logo.png\\\" alt=\\\"\\u56e7\\u5566!\\u4e2d\\u56fd\\uff08Joomla.cn\\uff09\\\" title=\\\"\\u7ffb\\u8bd1\\u57fa\\u5730\\uff1a\\u56e7\\u5566!\\u4e2d\\u56fd\\uff08Joomla.cn\\uff09\\\" \\/><\\/a>\\u3002<br><br>\\u6b22\\u8fce\\u52a0\\u5165\\u201cJoomla\\u4f7f\\u7528\\u4ea4\\u6d41\\u201dQ\\u7fa4\\uff1a154673214\\u300172746093\\u3002<br><br>\\n\\tJoomla\\u5b98\\u65b9\\u7ffb\\u8bd1\\u7ec4\\u5468\\u671d\\u6656\\uff08Derek Zhou\\uff09\\u7ec4\\u7ec7\\u7ffb\\u8bd1\\u3002<br><br>\\u611f\\u8c22Joomla\\u7b80\\u4f53\\u4e2d\\u6587\\u7ffb\\u8bd1\\u7ec4\\u7684\\u6240\\u6709\\u5fd7\\u613f\\u8005\\uff1a<br>\\u6b66\\u7389\\u6770\\u3001Key Diagram\\u3001Yusuf  Wang\\u3001\\u90ed\\u5fd7\\u6500\\u3001Eric Wong\\uff08http:\\/\\/berocks2.com\\/\\uff09\\u3001wayne82\\uff01<br>\\u6b22\\u8fce\\u559c\\u6b22\\u7ffb\\u8bd1\\u7684\\u670b\\u53cb\\u52a0\\u5165\\u6211\\u4eec\\u3002<br><br>\\n\\t <br>\\n\\t<\\/div>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"pkg_zh-CN\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'Akeeba','component','com_akeeba','',1,1,0,0,'{\"name\":\"Akeeba\",\"type\":\"component\",\"creationDate\":\"2015-04-01\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"4.2.0\",\"description\":\"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.\",\"group\":\"\",\"filename\":\"akeeba\"}','{\"siteurl\":\"http:\\/\\/localhost\\/work\\/\",\"jlibrariesdir\":\"C:\\/wamp\\/www\\/work\\/libraries\",\"jversion\":\"1.6\"}','','',0,'0000-00-00 00:00:00',0,0),(10004,'F0F (NEW) DO NOT REMOVE','library','lib_f0f','',0,1,1,0,'{\"name\":\"F0F (NEW) DO NOT REMOVE\",\"type\":\"library\",\"creationDate\":\"2015-03-23 15:16:33\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"rev12154F7-1427116593\",\"description\":\"Framework-on-Framework (FOF) newer version - DO NOT REMOVE - The rapid component development framework for Joomla!. This package is the newer version of FOF, not the one shipped with Joomla! as the official Joomla! RAD Layer. The Joomla! RAD Layer has ceased development in March 2014. DO NOT UNINSTALL THIS PACKAGE, IT IS *** N O T *** A DUPLICATE OF THE \'FOF\' PACKAGE. REMOVING EITHER FOF PACKAGE WILL BREAK YOUR SITE.\",\"group\":\"\",\"filename\":\"lib_f0f\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10005,'AkeebaStrapper','file','AkeebaStrapper','',0,1,0,0,'{\"name\":\"AkeebaStrapper\",\"type\":\"file\",\"creationDate\":\"2015-03-23 15:16:33\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"(C) 2012-2013 Akeeba Ltd.\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"rev12154F7-1427116593\",\"description\":\"Namespaced jQuery, jQuery UI and Bootstrap for Akeeba products.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10006,'JCE','component','com_jce','',1,1,0,0,'{\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"16 March 2015\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2015 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.5.0 beta5\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"16 March 2015\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.5.0 beta5\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"jce\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"16 March 2015\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2015 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.5.0 beta5\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcefilebrowser\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10009,'Slideshow CK','module','mod_slideshowck','',0,1,0,0,'{\"name\":\"Slideshow CK\",\"type\":\"module\",\"creationDate\":\"Avril 2012\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"C\\u00e9dric KEIFLIN\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.4.12\",\"description\":\"MOD_SLIDESHOWCK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_slideshowck\"}','{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_slideshowck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"62%\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":\"random\",\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"random\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"container\":\"\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"loadjquerymobile\":\"1\",\"autocreatethumbs\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"12px\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"10px\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `srccn_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_filters`
--

DROP TABLE IF EXISTS `srccn_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_filters`
--

LOCK TABLES `srccn_finder_filters` WRITE;
/*!40000 ALTER TABLE `srccn_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links`
--

DROP TABLE IF EXISTS `srccn_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links`
--

LOCK TABLES `srccn_finder_links` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms0`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms0`
--

LOCK TABLES `srccn_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms1`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms1`
--

LOCK TABLES `srccn_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms2`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms2`
--

LOCK TABLES `srccn_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms3`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms3`
--

LOCK TABLES `srccn_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms4`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms4`
--

LOCK TABLES `srccn_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms5`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms5`
--

LOCK TABLES `srccn_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms6`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms6`
--

LOCK TABLES `srccn_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms7`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms7`
--

LOCK TABLES `srccn_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms8`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms8`
--

LOCK TABLES `srccn_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_terms9`
--

DROP TABLE IF EXISTS `srccn_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_terms9`
--

LOCK TABLES `srccn_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termsa`
--

DROP TABLE IF EXISTS `srccn_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termsa`
--

LOCK TABLES `srccn_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termsb`
--

DROP TABLE IF EXISTS `srccn_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termsb`
--

LOCK TABLES `srccn_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termsc`
--

DROP TABLE IF EXISTS `srccn_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termsc`
--

LOCK TABLES `srccn_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termsd`
--

DROP TABLE IF EXISTS `srccn_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termsd`
--

LOCK TABLES `srccn_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termse`
--

DROP TABLE IF EXISTS `srccn_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termse`
--

LOCK TABLES `srccn_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_links_termsf`
--

DROP TABLE IF EXISTS `srccn_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_links_termsf`
--

LOCK TABLES `srccn_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `srccn_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_taxonomy`
--

DROP TABLE IF EXISTS `srccn_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_taxonomy`
--

LOCK TABLES `srccn_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `srccn_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `srccn_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `srccn_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `srccn_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_taxonomy_map`
--

LOCK TABLES `srccn_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `srccn_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_terms`
--

DROP TABLE IF EXISTS `srccn_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_terms`
--

LOCK TABLES `srccn_finder_terms` WRITE;
/*!40000 ALTER TABLE `srccn_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_terms_common`
--

DROP TABLE IF EXISTS `srccn_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_terms_common`
--

LOCK TABLES `srccn_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `srccn_finder_terms_common` DISABLE KEYS */;
INSERT INTO `srccn_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `srccn_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_tokens`
--

DROP TABLE IF EXISTS `srccn_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_tokens`
--

LOCK TABLES `srccn_finder_tokens` WRITE;
/*!40000 ALTER TABLE `srccn_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `srccn_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_tokens_aggregate`
--

LOCK TABLES `srccn_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `srccn_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_finder_types`
--

DROP TABLE IF EXISTS `srccn_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_finder_types`
--

LOCK TABLES `srccn_finder_types` WRITE;
/*!40000 ALTER TABLE `srccn_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_languages`
--

DROP TABLE IF EXISTS `srccn_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_languages`
--

LOCK TABLES `srccn_languages` WRITE;
/*!40000 ALTER TABLE `srccn_languages` DISABLE KEYS */;
INSERT INTO `srccn_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1),(2,'zh-CN','Chinese Symplified','中文','zh','zh_cn','','Chinese SRC EB5 ','美国投资移民 中文服务','投资移民中文网',1,1,0);
/*!40000 ALTER TABLE `srccn_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_menu`
--

DROP TABLE IF EXISTS `srccn_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_menu`
--

LOCK TABLES `srccn_menu` WRITE;
/*!40000 ALTER TABLE `srccn_menu` DISABLE KEYS */;
INSERT INTO `srccn_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,73,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',33,34,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',35,36,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',37,38,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',39,40,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',41,42,0,'*',0),(103,'main','COM_AKEEBA','com-akeeba','','com-akeeba','index.php?option=com_akeeba','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'../media/com_akeeba/icons/akeeba-16.png',0,'',43,44,0,'',1),(104,'menucn','首页','2015-04-20-20-52-03','','2015-04-20-20-52-03','index.php?option=com_content&view=category&layout=blog&id=15','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"0\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"0\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"0\",\"show_subcat_desc\":\"0\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"0\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"3\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"order\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"use_article\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',45,46,1,'*',0),(105,'menucn','地区介绍','2015-04-20-21-11-17','','2015-04-20-21-11-17','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,0,'zh-CN',0),(106,'menucn','成功案例','2015-04-20-21-12-27','','2015-04-20-21-12-27','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'zh-CN',0),(107,'menucn','专业团队','2015-04-20-21-13-12','','2015-04-20-21-13-12','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',51,52,0,'zh-CN',0),(108,'menucn','投资者','2015-04-20-21-16-57','','2015-04-20-21-16-57','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,0,'zh-CN',0),(109,'menucn',' 联系我们','2015-04-20-21-17-53','','2015-04-20-21-17-53','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,0,'zh-CN',0),(110,'menucn','最新动态','2015-04-20-21-21-54','','2015-04-20-21-21-54','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,58,0,'*',0),(111,'menucn','登录客户专区','2015-04-20-21-22-22','','2015-04-20-21-22-22','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,62,0,'*',0),(112,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10006,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',63,72,0,'',1),(113,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,112,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',64,65,0,'',1),(114,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,112,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',66,67,0,'',1),(115,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,112,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',68,69,0,'',1),(116,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,112,2,10006,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',70,71,0,'',1),(117,'menucn','Create New Blog','create-new-blog','','2015-04-20-21-22-22/create-new-blog','index.php?option=com_content&view=form&layout=edit','component',1,111,2,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"enable_category\":\"0\",\"catid\":\"13\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',60,61,0,'zh-CN',0);
/*!40000 ALTER TABLE `srccn_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_menu_types`
--

DROP TABLE IF EXISTS `srccn_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_menu_types`
--

LOCK TABLES `srccn_menu_types` WRITE;
/*!40000 ALTER TABLE `srccn_menu_types` DISABLE KEYS */;
INSERT INTO `srccn_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'menucn','中文菜单','Chinese Main Menu');
/*!40000 ALTER TABLE `srccn_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_messages`
--

DROP TABLE IF EXISTS `srccn_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_messages`
--

LOCK TABLES `srccn_messages` WRITE;
/*!40000 ALTER TABLE `srccn_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_messages_cfg`
--

DROP TABLE IF EXISTS `srccn_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_messages_cfg`
--

LOCK TABLES `srccn_messages_cfg` WRITE;
/*!40000 ALTER TABLE `srccn_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_modules`
--

DROP TABLE IF EXISTS `srccn_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_modules`
--

LOCK TABLES `srccn_modules` WRITE;
/*!40000 ALTER TABLE `srccn_modules` DISABLE KEYS */;
INSERT INTO `srccn_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'用户登入','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,55,'Chinese Menu','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"menucn\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'zh-CN'),(89,75,'left position','','<p><em><span style=\"font-size: 8pt;\">移民美国具有非常多的优势，因此成为中国人移民的福地。想要移民美国可以通过投资移民申请办理移民手续，下文为大家详细介绍美国重点投资移民项目EB-5的申请要求</span>。</em><a href=\"index.php?option=com_content&amp;view=article&amp;id=10&amp;catid=12&amp;Itemid=110\">链接</a></p>\r\n<p>&nbsp;</p>',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,76,'News Category','','',1,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":\"1\",\"count\":\"0\",\"show_front\":\"show\",\"category_filtering_type\":\"1\",\"catid\":[\"12\"],\"show_child_category_articles\":\"0\",\"levels\":\"1\",\"author_filtering_type\":\"1\",\"created_by\":[\"\"],\"author_alias_filtering_type\":\"1\",\"created_by_alias\":[\"\"],\"excluded_articles\":\"\",\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"start_date_range\":\"\",\"end_date_range\":\"\",\"relative_date\":\"30\",\"article_ordering\":\"a.title\",\"article_ordering_direction\":\"ASC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"ksort\",\"month_year_format\":\"F Y\",\"link_titles\":\"1\",\"show_date\":\"0\",\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i:s\",\"show_category\":\"0\",\"show_hits\":\"0\",\"show_author\":\"0\",\"show_introtext\":\"0\",\"introtext_limit\":\"100\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"15\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,78,'Slideshow CK','','',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_slideshowck',1,0,'{\"slidesssource\":\"slidesmanager\",\"slides\":\"[{|qq|imgname|qq|:|qq|images\\/srccn\\/slide_photo\\/slide1.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/work\\/images\\/srccn\\/slide_photo\\/slide1.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq|1|qq|,|qq|slidearticlename|qq|:|qq|美国东南地区投资项目|qq|,|qq|imgtime|qq|:|qq|１０００|qq|},{|qq|imgname|qq|:|qq|images\\/srccn\\/slide_photo\\/slide2.jpg|qq|,|qq|imgcaption|qq|:|qq|This slideshow uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/work\\/images\\/srccn\\/slide_photo\\/slide2.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq|1000|qq|},{|qq|imgname|qq|:|qq|images\\/srccn\\/slide_photo\\/slide3.jpg|qq|,|qq|imgcaption|qq|:|qq||qq|,|qq|imgtitle|qq|:|qq||qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/work\\/images\\/srccn\\/slide_photo\\/slide3.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq|１０００|qq|},{|qq|imgname|qq|:|qq|images\\/srccn\\/slide_photo\\/slide5.jpg|qq|,|qq|imgcaption|qq|:|qq|100%成功率，移民及投资专业团队办理|qq|,|qq|imgtitle|qq|:|qq|美国移民局批准区域中心|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/work\\/images\\/srccn\\/slide_photo\\/slide5.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|images\\/srccn\\/slide_photo\\/America-Flag.jpg|qq|,|qq|imgcaption|qq|:|qq|SRC为您提供成功之路|qq|,|qq|imgtitle|qq|:|qq|投资获利 成功移民|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/work\\/images\\/srccn\\/slide_photo\\/America-Flag.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]\",\"theme\":\"default\",\"skin\":\"camera_amber_skin\",\"alignment\":\"center\",\"loader\":\"pie\",\"width\":\"auto\",\"height\":\"32%\",\"navigation\":\"2\",\"thumbnails\":\"1\",\"thumbnailwidth\":\"100\",\"thumbnailheight\":\"75\",\"pagination\":\"1\",\"effect\":[\"random\"],\"time\":\"7000\",\"transperiod\":\"1500\",\"captioneffect\":\"moveFromLeft\",\"portrait\":\"0\",\"autoAdvance\":\"1\",\"hover\":\"1\",\"displayorder\":\"normal\",\"limitslides\":\"\",\"fullpage\":\"0\",\"imagetarget\":\"_parent\",\"container\":\"\",\"usemobileimage\":\"0\",\"mobileimageresolution\":\"640\",\"loadjquery\":\"1\",\"loadjqueryeasing\":\"1\",\"loadjquerymobile\":\"1\",\"autocreatethumbs\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"articlelength\":\"150\",\"articlelink\":\"readmore\",\"articletitle\":\"h3\",\"showarticletitle\":\"1\",\"captionstylesusefont\":\"1\",\"captionstylestextgfont\":\"Droid Sans\",\"captionstylesfontsize\":\"12px\",\"captionstylesfontcolor\":\"\",\"captionstylesfontweight\":\"normal\",\"captionstylesdescfontsize\":\"10px\",\"captionstylesdescfontcolor\":\"\",\"captionstylesusemargin\":\"1\",\"captionstylesmargintop\":\"0\",\"captionstylesmarginright\":\"0\",\"captionstylesmarginbottom\":\"0\",\"captionstylesmarginleft\":\"0\",\"captionstylespaddingtop\":\"0\",\"captionstylespaddingright\":\"0\",\"captionstylespaddingbottom\":\"0\",\"captionstylespaddingleft\":\"0\",\"captionstylesusebackground\":\"1\",\"captionstylesbgcolor1\":\"\",\"captionstylesbgopacity\":\"0.6\",\"captionstylesbgimage\":\"\",\"captionstylesbgpositionx\":\"left\",\"captionstylesbgpositiony\":\"top\",\"captionstylesbgimagerepeat\":\"repeat\",\"captionstylesusegradient\":\"1\",\"captionstylesbgcolor2\":\"\",\"captionstylesuseroundedcorners\":\"1\",\"captionstylesroundedcornerstl\":\"5\",\"captionstylesroundedcornerstr\":\"5\",\"captionstylesroundedcornersbr\":\"5\",\"captionstylesroundedcornersbl\":\"5\",\"captionstylesuseshadow\":\"1\",\"captionstylesshadowcolor\":\"\",\"captionstylesshadowblur\":\"3\",\"captionstylesshadowspread\":\"0\",\"captionstylesshadowoffsetx\":\"0\",\"captionstylesshadowoffsety\":\"0\",\"captionstylesshadowinset\":\"0\",\"captionstylesuseborders\":\"1\",\"captionstylesbordercolor\":\"\",\"captionstylesborderwidth\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'zh-CN'),(92,81,'Header Contact Info','','<p style=\"text-align: right;\"><span style=\"font-size: 8pt;\"><em><br />地址 ： 4197 Pleasant Hill Road Suite 100， Duluth, GA 30096,</em> USA</span><br /><span style=\"font-size: 8pt;\"><em>电话 ： (678) 882-7756</em>&nbsp; <em>传真 ： (678) 889-9498</em></span> <span style=\"font-size: 8pt;\"><em>电子邮件 ： <a href=\"mailto:info@srceb-5.com\">info@srceb-5.com</a></em></span></p>',1,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'zh-CN'),(93,82,'阿拉巴马州官员表述','','<p><em><span style=\"font-size: 10pt;\">\"世界知名汽车厂商及其供应商在阿拉巴马州落户和成功是对本州良好商业生态环境的最有利证明，同时也代表着我们对工业界的支持。\"<br />一阿拉巴马州经济发展执行副主席 Steve Sewell</span></em></p>\r\n<hr />\r\n<p><span style=\"font-size: 10pt;\"><em>\"全球的著名企业都在做出它们的审慎决定，到阿拉巴马来投资。\"</em></span><br /><span style=\"font-size: 10pt;\"><em>一阿拉巴马州商务秘书长 Greg Canfield</em></span></p>\r\n<p>&nbsp;</p>',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'zh-CN');
/*!40000 ALTER TABLE `srccn_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_modules_menu`
--

DROP TABLE IF EXISTS `srccn_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_modules_menu`
--

LOCK TABLES `srccn_modules_menu` WRITE;
/*!40000 ALTER TABLE `srccn_modules_menu` DISABLE KEYS */;
INSERT INTO `srccn_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,108),(16,109),(16,110),(16,111),(17,0),(79,0),(86,0),(87,0),(89,108),(89,109),(90,104),(91,104),(92,0),(93,105);
/*!40000 ALTER TABLE `srccn_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_newsfeeds`
--

DROP TABLE IF EXISTS `srccn_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_newsfeeds`
--

LOCK TABLES `srccn_newsfeeds` WRITE;
/*!40000 ALTER TABLE `srccn_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_overrider`
--

DROP TABLE IF EXISTS `srccn_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_overrider`
--

LOCK TABLES `srccn_overrider` WRITE;
/*!40000 ALTER TABLE `srccn_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_postinstall_messages`
--

DROP TABLE IF EXISTS `srccn_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_postinstall_messages`
--

LOCK TABLES `srccn_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `srccn_postinstall_messages` DISABLE KEYS */;
INSERT INTO `srccn_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,10003,'AKEEBA_POSTSETUP_LBL_CONFWIZ','AKEEBA_POSTSETUP_DESC_CONFWIZ','AKEEBA_POSTSETUP_BTN_RUN_CONFWIZ','com_akeeba',1,'action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_confwiz_action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_confwiz_condition','4.0.0',1),(4,10003,'AKEEBA_POSTSETUP_LBL_ACCEPTLICENSE','AKEEBA_POSTSETUP_DESC_ACCEPTLICENSE','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1),(5,10003,'AKEEBA_POSTSETUP_LBL_ACCEPTSUPPORT','AKEEBA_POSTSETUP_DESC_ACCEPTSUPPORT','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1),(6,10003,'AKEEBA_POSTSETUP_LBL_ACCEPTBACKUPTEST','AKEEBA_POSTSETUP_DESC_ACCEPTBACKUPTEST','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1);
/*!40000 ALTER TABLE `srccn_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_redirect_links`
--

DROP TABLE IF EXISTS `srccn_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_redirect_links`
--

LOCK TABLES `srccn_redirect_links` WRITE;
/*!40000 ALTER TABLE `srccn_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_schemas`
--

DROP TABLE IF EXISTS `srccn_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_schemas`
--

LOCK TABLES `srccn_schemas` WRITE;
/*!40000 ALTER TABLE `srccn_schemas` DISABLE KEYS */;
INSERT INTO `srccn_schemas` VALUES (700,'3.4.0-2015-02-26');
/*!40000 ALTER TABLE `srccn_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_session`
--

DROP TABLE IF EXISTS `srccn_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_session`
--

LOCK TABLES `srccn_session` WRITE;
/*!40000 ALTER TABLE `srccn_session` DISABLE KEYS */;
INSERT INTO `srccn_session` VALUES ('ev0lfitoloo3sd4cc1cr4g0oi2',1,0,'1429824220','__default|a:9:{s:15:\"session.counter\";i:224;s:19:\"session.timer.start\";i:1429817075;s:18:\"session.timer.last\";i:1429824219;s:17:\"session.timer.now\";i:1429824219;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":7:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}s:11:\"com_content\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:7:\"article\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}s:11:\"com_modules\";O:8:\"stdClass\":3:{s:7:\"modules\";O:8:\"stdClass\":1:{s:6:\"filter\";O:8:\"stdClass\":1:{s:18:\"client_id_previous\";i:0;}}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";N;s:6:\"params\";N;}}}s:9:\"com_menus\";O:8:\"stdClass\":2:{s:5:\"items\";O:8:\"stdClass\":3:{s:8:\"menutype\";s:6:\"menucn\";s:10:\"limitstart\";i:0;s:4:\"list\";a:4:{s:9:\"direction\";s:3:\"asc\";s:5:\"limit\";s:2:\"20\";s:8:\"ordering\";s:5:\"a.lft\";s:5:\"start\";d:0;}}s:4:\"edit\";O:8:\"stdClass\":1:{s:4:\"item\";O:8:\"stdClass\":4:{s:2:\"id\";a:0:{}s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;}}}s:10:\"com_config\";O:8:\"stdClass\":1:{s:6:\"config\";O:8:\"stdClass\":1:{s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"data\";N;}}}s:13:\"com_templates\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":1:{s:5:\"style\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}}}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":28:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:3:\"365\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:17:\"bfang99@yahoo.com\";s:8:\"password\";s:60:\"$2y$10$YwlZpTyo.h7WUj.CLeLYZ./xFyD6OT0P.Zj0/gAd7.a7utIJ.HUFW\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2015-04-20 19:22:38\";s:13:\"lastvisitDate\";s:19:\"2015-04-22 19:51:09\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:0:\"\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"5d64c362a259ce95c37f77e2c3607f2b\";s:20:\"com_media.return_url\";s:26:\"index.php?option=com_media\";}__wf|a:1:{s:13:\"session.token\";s:32:\"d650fa4e9c7d4d07db0e49306edad9cd\";}',365,'admin'),('kuasg4bd68u1i8b1fvq3ldkk22',0,1,'1429824391','__default|a:9:{s:15:\"session.counter\";i:99;s:19:\"session.timer.start\";i:1429818602;s:18:\"session.timer.last\";i:1429824380;s:17:\"session.timer.now\";i:1429824391;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:4:\"user\";O:5:\"JUser\":26:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":2:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}s:9:\"separator\";s:1:\".\";}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:13:\"\\0\\0\\0userHelper\";O:18:\"JUserWrapperHelper\":0:{}s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:7:{s:40:\"af2e4f15b7fde2740260cbaf787488be45221887\";O:8:\"stdClass\":2:{s:4:\"link\";s:51:\"http://localhost/work/index.php/2015-04-20-21-13-12\";s:6:\"expiry\";i:1429824331;}s:40:\"f67c5cf956c833d2619fd0b1ada5c06a4af0c8ec\";O:8:\"stdClass\":2:{s:4:\"link\";s:51:\"http://localhost/work/index.php/2015-04-20-21-12-27\";s:6:\"expiry\";i:1429824391;}s:40:\"675237b7a3bc1b5033a2f0cef2718e85bab5c7a1\";O:8:\"stdClass\":2:{s:4:\"link\";s:51:\"http://localhost/work/index.php/2015-04-20-21-16-57\";s:6:\"expiry\";i:1429823592;}s:40:\"3fee8570305a6f830d5658ab8448bc2840d30bd3\";O:8:\"stdClass\":2:{s:4:\"link\";s:51:\"http://localhost/work/index.php/2015-04-20-21-17-53\";s:6:\"expiry\";i:1429823593;}s:40:\"b2ce94f1d24e0a202461dbaefa4b22942caabd46\";O:8:\"stdClass\":2:{s:4:\"link\";s:58:\"http://localhost/work/index.php/2015-04-20-21-21-54/12-2-2\";s:6:\"expiry\";i:1429823595;}s:40:\"cc091c10d544db7346f5c1024dd5bcf5fa4462db\";O:8:\"stdClass\":2:{s:4:\"link\";s:55:\"http://localhost/work/index.php/2015-04-20-21-21-54/8-2\";s:6:\"expiry\";i:1429823596;}s:40:\"537f1ff7fd2a913e1729e67489f35bb806c953a2\";O:8:\"stdClass\":2:{s:4:\"link\";s:55:\"http://localhost/work/index.php/2015-04-20-21-21-54/7-1\";s:6:\"expiry\";i:1429823596;}}s:13:\"session.token\";s:32:\"dc9c7087664964e1830370bedbf040da\";}',0,'');
/*!40000 ALTER TABLE `srccn_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_tags`
--

DROP TABLE IF EXISTS `srccn_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_tags`
--

LOCK TABLES `srccn_tags` WRITE;
/*!40000 ALTER TABLE `srccn_tags` DISABLE KEYS */;
INSERT INTO `srccn_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `srccn_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_template_styles`
--

DROP TABLE IF EXISTS `srccn_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_template_styles`
--

LOCK TABLES `srccn_template_styles` WRITE;
/*!40000 ALTER TABLE `srccn_template_styles` DISABLE KEYS */;
INSERT INTO `srccn_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"images\\/srccn\\/src_logo.png\",\"sitetitle\":\"美国西南投资移民中心\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `srccn_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_ucm_base`
--

DROP TABLE IF EXISTS `srccn_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ucm_base`
--

LOCK TABLES `srccn_ucm_base` WRITE;
/*!40000 ALTER TABLE `srccn_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_ucm_content`
--

DROP TABLE IF EXISTS `srccn_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ucm_content`
--

LOCK TABLES `srccn_ucm_content` WRITE;
/*!40000 ALTER TABLE `srccn_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_ucm_history`
--

DROP TABLE IF EXISTS `srccn_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_ucm_history`
--

LOCK TABLES `srccn_ucm_history` WRITE;
/*!40000 ALTER TABLE `srccn_ucm_history` DISABLE KEYS */;
INSERT INTO `srccn_ucm_history` VALUES (1,8,5,'','2015-04-20 21:03:06',365,545,'e7dd13c91e9aa662f61358ae509a1ed87f1cacfa','{\"id\":8,\"asset_id\":56,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:06\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:03:06\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(2,9,5,'','2015-04-20 21:03:18',365,553,'1c81577fd5e3c5dd55b69aeb974d1d1552e762bf','{\"id\":9,\"asset_id\":57,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Projects\",\"alias\":\"projects\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:18\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:03:18\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(3,10,5,'','2015-04-20 21:03:35',365,556,'a64367b64f1b7f6cbfa62822faf23bf3a5eeaecd','{\"id\":10,\"asset_id\":58,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Our Teams\",\"alias\":\"our-teams\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:35\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:03:35\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(4,11,5,'','2015-04-20 21:03:45',365,544,'25ec792fb51f4e72d89dfa18fef6d6d6904fa379','{\"id\":11,\"asset_id\":59,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"FAQ\",\"alias\":\"faq\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:45\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:03:45\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(5,12,5,'','2015-04-20 21:03:53',365,546,'6e5bd9ef716039bc54ff5d6fe308e33685d56e41','{\"id\":12,\"asset_id\":60,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:53\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:03:53\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(6,13,5,'','2015-04-20 21:04:19',365,568,'cb685e0a3368d613f0cbfb3ba2689cfa904d299a','{\"id\":13,\"asset_id\":61,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Registered User\",\"alias\":\"registered-user\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:04:19\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:04:19\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(7,14,5,'','2015-04-20 21:04:28',365,552,'d6065e0e22ad1db0c0b157c46d8181df8c4035d7','{\"id\":14,\"asset_id\":62,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Chinese\",\"alias\":\"chinese\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:04:28\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:04:28\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(9,2,1,'','2015-04-20 21:06:23',365,1671,'8e202ddac96e653a343ffda38840d684a2520d72','{\"id\":2,\"asset_id\":64,\"title\":\"\\u6848\\u4f8b\",\"alias\":\"2015-04-20-21-06-23\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:06:23\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:06:23\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:06:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,3,1,'','2015-04-20 21:07:26',365,1701,'2382d7013352b7fa4a811130627e87ecc950ec34','{\"id\":3,\"asset_id\":65,\"title\":\"\\u6295\\u8d44\\u548c\\u79fb\\u6c11\\u4e13\\u5bb6\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:07:26\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(11,4,1,'','2015-04-20 21:07:44',365,1677,'d490bbdc1d8f83dd56cf55ade65340124f0430b9','{\"id\":4,\"asset_id\":66,\"title\":\"\\u6295\\u8d44\\u8005\",\"alias\":\"2015-04-20-21-07-44\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:07:44\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:07:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:07:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(12,5,1,'','2015-04-20 21:08:00',365,1683,'004287d136cb2c775d2614b8fcfc90563b543e7e','{\"id\":5,\"asset_id\":67,\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\",\"alias\":\"2015-04-20-21-08-00\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:08:00\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:08:00\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:08:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,6,1,'','2015-04-20 21:08:42',365,1695,'e25c23c501988f2c0a550504c1b852e11ddcc957','{\"id\":6,\"asset_id\":68,\"title\":\"\\u767b\\u5f55\\u5ba2\\u6237\\u4e13\\u533a\",\"alias\":\"2015-04-20-21-08-42\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:08:42\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:08:42\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:08:42\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,12,5,'','2015-04-20 21:19:18',365,568,'7ed56c101c9082ffefe0ec59a0bc0d6487c48a4e','{\"id\":12,\"asset_id\":\"60\",\"parent_id\":\"8\",\"lft\":\"12\",\"rgt\":13,\"level\":2,\"path\":\"news\",\"extension\":\"com_content\",\"title\":\"News\",\"alias\":\"news\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-20 21:19:08\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:03:53\",\"modified_user_id\":\"365\",\"modified_time\":\"2015-04-20 21:19:18\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(15,7,1,'','2015-04-20 21:20:07',365,1660,'4d4b9c4abfcc4be25552357e3b625745d97a942d','{\"id\":7,\"asset_id\":69,\"title\":\"\\u535a\\u5ba2\\u65871\",\"alias\":\"1\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2015-04-20 21:20:07\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:20:07\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:20:07\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(16,8,1,'','2015-04-20 21:20:35',365,1660,'199c3032ade9c60a47817c8f5e189cca95760f8e','{\"id\":8,\"asset_id\":70,\"title\":\"\\u535a\\u5ba2\\u65872\",\"alias\":\"2\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2015-04-20 21:20:35\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:20:35\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:20:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,9,1,'','2015-04-20 21:48:02',365,2951,'519a2b2a7d7c1468b6bd6d11bca0d1a4592fe757','{\"id\":9,\"asset_id\":71,\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u7684\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:48:02\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,15,5,'','2015-04-20 21:48:42',365,564,'f38388e2a9390d56585ef16221d43fdaa61a9605','{\"id\":15,\"asset_id\":72,\"parent_id\":\"1\",\"lft\":\"25\",\"rgt\":26,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Home Articles\",\"alias\":\"home-articles\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"365\",\"created_time\":\"2015-04-20 21:48:42\",\"modified_user_id\":null,\"modified_time\":\"2015-04-20 21:48:42\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0),(19,9,1,'','2015-04-20 21:49:11',365,2971,'a40b94cc8e7d73561defc711311384ede0bf8985','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u7684\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:49:11\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-20 21:48:52\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(20,9,1,'','2015-04-20 21:55:05',365,2977,'71feb389ccf2319db6ca161ead8b727274f3f608','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-20 21:55:05\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-20 21:54:35\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,9,1,'','2015-04-21 12:47:59',365,2997,'469883395a379e9f51841ad904eaf5743bcb82b6','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 12:47:59\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 12:46:31\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,10,1,'','2015-04-21 13:22:49',365,2868,'410919c34695a789cdd6c07251e96b6c536d348e','{\"id\":10,\"asset_id\":73,\"title\":\"News\",\"alias\":\"news\",\"introtext\":\"<p>\\u7f8e\\u56fdEB-5 \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\u7684\\u5b9e\\u884c\\uff0c\\u76ee\\u7684\\u662f\\u5438\\u5f15\\u6d77\\u5916\\u6295\\u8d44\\u79fb\\u6c11\\u8005\\u6765\\u7f8e\\u56fd\\u6295\\u8d44\\u53ca\\u521b\\u9020\\u5c31\\u4e1a\\u673a\\u4f1a\\u3002\\u6b64\\u7c7b\\u7b7e\\u8bc1\\u6bcf\\u5e74\\u670910000\\u4e2a\\u540d\\u989d\\u3002\\u6839\\u636e\\u6b64\\u65b9\\u6848\\uff0c\\u5916\\u56fd\\u79fb\\u6c11\\u7533\\u8bf7\\u4eba\\u5728\\u7f8e\\u6295\\u8d44\\u521b\\u8bbe\\u6709\\u5229 \\u4e8e\\u7f8e\\u56fd\\u7ecf\\u6d4e\\u7684\\u5546\\u4e1a\\u6027\\u4f01\\u4e1a\\uff0c<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u5e76\\u521b\\u902010\\u4e2a\\u5168\\u804c\\u7684\\u7f8e\\u56fd\\u5de5\\u4eba\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u5373\\u53ef\\u83b7\\u53d1\\u4e8c\\u5e74\\u671f\\u7684\\u6761\\u4ef6\\u5f0f\\u79fb\\u6c11\\u7b7e\\u8bc1\\u3002\\u4e8c\\u5e74\\u5c4a\\u6ee1\\u524d90\\u5929\\uff0c\\u82e5\\u79fb\\u6c11\\u6295\\u8d44\\u8005\\u7684\\u6295\\u8d44\\u884c\\u4e3a\\u4ecd\\u5b58\\u5728\\uff0c\\u53ef\\u7533 \\u8bf7\\\"\\u6761\\u4ef6\\u79fb\\u9664\\\"\\uff0c\\u800c\\u6210\\u4e3a\\u6c38\\u4e45\\u5c45\\u6c11\\u3002\\u6b64\\u65b9\\u6848\\u7684\\u6295\\u8d44\\u989d\\u4e3a\\u7f8e\\u91d1100\\u4e07\\u5143\\u3002\\u5982\\u679c\\u6295\\u8d44\\u6807\\u7684\\u662f\\u4f4d\\u4e8e\\u76ee\\u6807\\u5c31\\u4e1a\\u533a\\uff08Targeted Employment Area\\uff09\\uff0c\\u5219\\u6295\\u8d44\\u989d\\u53ef\\u964d\\u4e3a50\\u4e07\\u7f8e\\u91d1<\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-21 13:22:49\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 13:22:49\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-21 13:22:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,10,1,'','2015-04-21 13:26:24',365,2888,'70dcce878ec3e4adc721376af3bb11bf1508355f','{\"id\":10,\"asset_id\":\"73\",\"title\":\"News\",\"alias\":\"news\",\"introtext\":\"<p>\\u7f8e\\u56fdEB-5 \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\u7684\\u5b9e\\u884c\\uff0c\\u76ee\\u7684\\u662f\\u5438\\u5f15\\u6d77\\u5916\\u6295\\u8d44\\u79fb\\u6c11\\u8005\\u6765\\u7f8e\\u56fd\\u6295\\u8d44\\u53ca\\u521b\\u9020\\u5c31\\u4e1a\\u673a\\u4f1a\\u3002\\u6b64\\u7c7b\\u7b7e\\u8bc1\\u6bcf\\u5e74\\u670910000\\u4e2a\\u540d\\u989d\\u3002\\u6839\\u636e\\u6b64\\u65b9\\u6848\\uff0c\\u5916\\u56fd\\u79fb\\u6c11\\u7533\\u8bf7\\u4eba\\u5728\\u7f8e\\u6295\\u8d44\\u521b\\u8bbe\\u6709\\u5229 \\u4e8e\\u7f8e\\u56fd\\u7ecf\\u6d4e\\u7684\\u5546\\u4e1a\\u6027\\u4f01\\u4e1a\\uff0c<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u5e76\\u521b\\u902010\\u4e2a\\u5168\\u804c\\u7684\\u7f8e\\u56fd\\u5de5\\u4eba\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u5373\\u53ef\\u83b7\\u53d1\\u4e8c\\u5e74\\u671f\\u7684\\u6761\\u4ef6\\u5f0f\\u79fb\\u6c11\\u7b7e\\u8bc1\\u3002\\u4e8c\\u5e74\\u5c4a\\u6ee1\\u524d90\\u5929\\uff0c\\u82e5\\u79fb\\u6c11\\u6295\\u8d44\\u8005\\u7684\\u6295\\u8d44\\u884c\\u4e3a\\u4ecd\\u5b58\\u5728\\uff0c\\u53ef\\u7533 \\u8bf7\\\"\\u6761\\u4ef6\\u79fb\\u9664\\\"\\uff0c\\u800c\\u6210\\u4e3a\\u6c38\\u4e45\\u5c45\\u6c11\\u3002\\u6b64\\u65b9\\u6848\\u7684\\u6295\\u8d44\\u989d\\u4e3a\\u7f8e\\u91d1100\\u4e07\\u5143\\u3002\\u5982\\u679c\\u6295\\u8d44\\u6807\\u7684\\u662f\\u4f4d\\u4e8e\\u76ee\\u6807\\u5c31\\u4e1a\\u533a\\uff08Targeted Employment Area\\uff09\\uff0c\\u5219\\u6295\\u8d44\\u989d\\u53ef\\u964d\\u4e3a50\\u4e07\\u7f8e\\u91d1<\\/p>\",\"state\":1,\"catid\":\"12\",\"created\":\"2015-04-21 13:22:49\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 13:26:24\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 13:26:15\",\"publish_up\":\"2015-04-21 13:22:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,3,1,'','2015-04-21 15:39:51',365,2419,'8f8cf48f572c471204e27cdd583f11646a4ef428','{\"id\":3,\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 15:39:51\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 15:29:01\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(25,3,1,'','2015-04-21 15:54:53',365,2456,'17fd3b4bd9c24c6ef59fee2cf7f3fc3c454d28ad','{\"id\":3,\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 15:54:53\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 15:54:15\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/src_logo.png\\\",\\\"float_intro\\\":\\\"right\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(26,3,1,'','2015-04-21 15:55:14',365,2451,'394af96430e144815202bcd5535c661b6ffba2ac','{\"id\":3,\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 15:55:14\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 15:54:53\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/src_logo.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(27,3,1,'','2015-04-21 16:03:35',365,2472,'092bc34c641204b0c0501f35bd0a2c24cbde028e','{\"id\":3,\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:03:35\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 15:55:14\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(28,2,1,'','2015-04-21 16:14:58',365,2156,'b420e89c8158549468b0847c6d87a345ee37369d','{\"id\":2,\"asset_id\":\"64\",\"title\":\"\\u6295\\u8d44\\u4e8e\\u54c1\\u724c\",\"alias\":\"2015-04-20-21-06-23\",\"introtext\":\"<p>\\u6211\\u4eec\\u9009\\u62e9\\u5168\\u7403\\u77e5\\u540d\\u6c7d\\u8f66\\u5236\\u9020\\u4f01\\u4e1a\\u4f5c\\u4e3a\\u5f00\\u53d1\\u9879\\u76ee\\uff0c\\u521b\\u9020\\u5927\\u91cf\\u7684\\u771f\\u6b63\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u4f7f\\u6295\\u8d44\\u4eba\\u987a\\u5229\\u901a\\u8fc7\\u79fb\\u6c11\\u6240\\u9700\\u95e8\\u69db\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>AjinUSA<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>WooshinUSA<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:06:23\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:14:58\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:06:35\",\"publish_up\":\"2015-04-20 21:06:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(29,3,1,'','2015-04-21 16:16:07',365,2466,'1f519fcc952547f852bec07d77088e7aa1b50e5c','{\"id\":3,\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:16:07\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:15:40\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(30,2,1,'','2015-04-21 16:18:50',365,2057,'884310fd9e8e745525cd271266a10f77f48b19dd','{\"id\":2,\"asset_id\":\"64\",\"title\":\"\\u6295\\u8d44\\u4e8e\\u54c1\\u724c\",\"alias\":\"2015-04-20-21-06-23\",\"introtext\":\"<p>\\u6211\\u4eec\\u9009\\u62e9\\u5168\\u7403\\u77e5\\u540d\\u6c7d\\u8f66\\u5236\\u9020\\u4f01\\u4e1a\\u4f5c\\u4e3a\\u5f00\\u53d1\\u9879\\u76ee\\uff0c\\u521b\\u9020\\u5927\\u91cf\\u7684\\u771f\\u6b63\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u4f7f\\u6295\\u8d44\\u4eba\\u987a\\u5229\\u901a\\u8fc7\\u79fb\\u6c11\\u6240\\u9700\\u95e8\\u69db\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:06:23\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:18:50\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:18:37\",\"publish_up\":\"2015-04-20 21:06:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(31,9,1,'','2015-04-21 16:20:34',365,3026,'c5742a42c097e3b91d7b888775465399ed34e832','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\\r\\n<hr \\/>\\r\\n<p>&nbsp;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:20:34\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:19:56\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(32,9,1,'','2015-04-21 16:28:31',365,3026,'7cf7a022aaec012a09564d5170b223c1df7ea239','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\\r\\n<hr \\/>\\r\\n<p>&nbsp;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:28:31\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:20:58\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(33,11,1,'','2015-04-21 16:39:44',365,2093,'1b7e5b4b880c2e2466b9dbf20a62ba7f145338d7','{\"id\":11,\"asset_id\":79,\"title\":\"\\u5b89\\u5168\\u878d\\u8d44\\u6a21\\u5f0f\",\"alias\":\"2015-04-21-16-39-44\",\"introtext\":\"<p>\\u6211\\u4eec\\u81f4\\u529b\\u4e8e\\u4fdd\\u6301100%EB-5\\u83b7\\u6279\\uff0c\\u8fdb\\u800c\\u6295\\u8d44\\u4eba\\u6210\\u529f\\u83b7\\u5f97\\u7eff\\u5361\\u7684\\u540c\\u65f6\\uff0c\\u8fd8\\u63d0\\u4f9b\\u6295\\u8d44\\u7406\\u8d22\\u7684\\u91d1\\u878d\\u652f\\u6301\\uff0c\\u6700\\u5927\\u9650\\u5ea6\\u5730\\u4fdd\\u62a4EB-5\\u6295\\u8d44\\u4eba\\u7684\\u8d44\\u91d1\\u5b89\\u5168\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-21 16:39:44\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:39:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-21 16:39:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(34,11,1,'','2015-04-21 16:45:16',365,2114,'66dbac9c7ddaf75400d7e7fa68b0baeed0b0dfdc','{\"id\":\"11\",\"asset_id\":\"79\",\"title\":\"\\u5b89\\u5168\\u878d\\u8d44\\u6a21\\u5f0f\",\"alias\":\"2015-04-21-16-39-44\",\"introtext\":\"<p>\\u6211\\u4eec\\u81f4\\u529b\\u4e8e\\u4fdd\\u6301100%EB-5\\u83b7\\u6279\\uff0c\\u8fdb\\u800c\\u6295\\u8d44\\u4eba\\u6210\\u529f\\u83b7\\u5f97\\u7eff\\u5361\\u7684\\u540c\\u65f6\\uff0c\\u8fd8\\u63d0\\u4f9b\\u6295\\u8d44\\u7406\\u8d22\\u7684\\u91d1\\u878d\\u652f\\u6301\\uff0c\\u6700\\u5927\\u9650\\u5ea6\\u5730\\u4fdd\\u62a4EB-5\\u6295\\u8d44\\u4eba\\u7684\\u8d44\\u91d1\\u5b89\\u5168\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"15\",\"created\":\"2015-04-21 16:39:44\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:45:16\",\"modified_by\":\"365\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2015-04-21 16:39:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"2\",\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(35,3,1,'','2015-04-21 16:45:24',365,2468,'2bc7bdc7557f75044326f4bacb79bd62dc6fc559','{\"id\":\"3\",\"asset_id\":\"65\",\"title\":\"\\u4e13\\u4e1a\\u56e2\\u961f\",\"alias\":\"2015-04-20-21-07-26\",\"introtext\":\"<p>\\u6211\\u4eec\\u7684\\u4e13\\u5bb6\\u56e2\\u961f\\u81f4\\u529b\\u4e8e\\u6295\\u8d44\\u5f00\\u53d1\\u9879\\u76ee\\u7684\\u987a\\u5229\\u8fdb\\u884c\\uff0c\\u8fd9\\u624d\\u662fEB-5\\u6295\\u8d44\\u4eba\\u7684\\u6839\\u672c\\u5229\\u76ca\\u6240\\u5728\\u3002\\u6211\\u4eec\\u7684\\u56e2\\u961f\\u5305\\u62ec<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u5bf9\\u6295\\u8d44\\u9879\\u76ee\\u8bc4\\u4f30\\uff0c\\u79fb\\u6c11\\u6cd5\\u5f8b\\uff0c\\u7ecf\\u6d4e\\u5b66\\u4e13\\u5bb6\\uff0c\\u4ee5\\u53ca\\u6210\\u529f\\u79fb\\u6c11\\u540e\\u7684\\u540e\\u671f\\u670d\\u52a1\\u3002<\\/p>\\r\\n<p>\\u9879\\u76ee\\u8bc4\\u4f30<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u79fb\\u6c11\\u6cd5\\u5f8b<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>EB-5\\u7ecf\\u6d4e\\u5b66<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>\\u540e\\u671f\\u670d\\u52a1<\\/p>\\r\\n<p>&nbsp;<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"state\":\"1\",\"catid\":\"15\",\"created\":\"2015-04-20 21:07:26\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:45:24\",\"modified_by\":\"365\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2015-04-20 21:07:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"6\",\"ordering\":1,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(36,2,1,'','2015-04-21 16:45:24',365,2059,'01a4d6eaf24e9abd7a26e98569c2f612802cf0f9','{\"id\":\"2\",\"asset_id\":\"64\",\"title\":\"\\u6295\\u8d44\\u4e8e\\u54c1\\u724c\",\"alias\":\"2015-04-20-21-06-23\",\"introtext\":\"<p>\\u6211\\u4eec\\u9009\\u62e9\\u5168\\u7403\\u77e5\\u540d\\u6c7d\\u8f66\\u5236\\u9020\\u4f01\\u4e1a\\u4f5c\\u4e3a\\u5f00\\u53d1\\u9879\\u76ee\\uff0c\\u521b\\u9020\\u5927\\u91cf\\u7684\\u771f\\u6b63\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u4f7f\\u6295\\u8d44\\u4eba\\u987a\\u5229\\u901a\\u8fc7\\u79fb\\u6c11\\u6240\\u9700\\u95e8\\u69db\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"15\",\"created\":\"2015-04-20 21:06:23\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:45:24\",\"modified_by\":\"365\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2015-04-20 21:06:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"3\",\"ordering\":2,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(37,11,1,'','2015-04-21 16:45:24',365,2114,'5045fc9e1fc71a56483b8ede83ac352f869bc859','{\"id\":\"11\",\"asset_id\":\"79\",\"title\":\"\\u5b89\\u5168\\u878d\\u8d44\\u6a21\\u5f0f\",\"alias\":\"2015-04-21-16-39-44\",\"introtext\":\"<p>\\u6211\\u4eec\\u81f4\\u529b\\u4e8e\\u4fdd\\u6301100%EB-5\\u83b7\\u6279\\uff0c\\u8fdb\\u800c\\u6295\\u8d44\\u4eba\\u6210\\u529f\\u83b7\\u5f97\\u7eff\\u5361\\u7684\\u540c\\u65f6\\uff0c\\u8fd8\\u63d0\\u4f9b\\u6295\\u8d44\\u7406\\u8d22\\u7684\\u91d1\\u878d\\u652f\\u6301\\uff0c\\u6700\\u5927\\u9650\\u5ea6\\u5730\\u4fdd\\u62a4EB-5\\u6295\\u8d44\\u4eba\\u7684\\u8d44\\u91d1\\u5b89\\u5168\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"15\",\"created\":\"2015-04-21 16:39:44\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:45:24\",\"modified_by\":\"365\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"2015-04-21 16:39:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/srccn\\\\\\/slide_photo\\\\\\/src_logo_small.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"2\",\"ordering\":3,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(38,9,1,'','2015-04-21 16:49:06',365,3038,'beff5ab2640bec22506aaa28eaeb51f508350212','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u9996\\u9875\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\\r\\n<hr \\/>\\r\\n<p>&nbsp;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-21 16:49:06\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-21 16:48:11\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(39,12,1,'','2015-04-22 16:37:30',365,617,'286c17fcad1f433cc845aad1108767182e0e49d4','{\"id\":12,\"asset_id\":80,\"title\":\"\\u4e2d\\u6587\\u535a\\u5ba2\\u6587\\u7ae02\",\"alias\":\"2-2\",\"introtext\":\"<p>this is a blog artical added from frot-end<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"8\",\"created\":\"2015-04-22 16:37:30\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-22 16:37:30\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-04-22 16:37:30\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{}\",\"featured\":\"0\",\"language\":\"zh-CN\",\"xreference\":null}',0),(40,9,1,'','2015-04-23 19:25:20',365,3039,'03746d4f98ed00bf323c63a7632ee323adfa017a','{\"id\":9,\"asset_id\":\"71\",\"title\":\"\\u516c\\u53f8\\u4ecb\\u7ecd\",\"alias\":\"2015-04-20-21-48-02\",\"introtext\":\"<p>\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\\u4e2d\\u5fc3\\u4e13\\u95e8\\u529e\\u7406\\u6c7d\\u8f66\\u548c\\u5236\\u9020\\u4e1a\\u76f8\\u5173\\u7684\\u6295\\u8d44\\u9879\\u76ee\\u3002\\u6211\\u4eec\\u4f4d\\u4e8e\\u7f8e\\u56fd\\u540c\\u5357\\u90e8\\u7684\\u6c7d\\u8f66\\u5236\\u9020\\u7684\\u5fc3\\u810f\\uff0c\\u968f\\u7740\\u6c7d\\u8f66\\u5236\\u9020\\u4e00\\u8d77\\u5174\\u65fa\\u53d1\\u5c55\\u3002<\\/p>\\r\\n<p>\\u4e16\\u754c\\u4e0a\\u5916\\u8d44\\u6c7d\\u8f66\\u5236\\u9020\\u5546\\uff0c\\u5982\\u97e9\\u56fd\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u5df2\\u7ecf\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\u7a33\\u6b65\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u6211\\u4eec\\u7ecf\\u624b\\u529e\\u7406\\u7684EB-5\\uff0c \\u6295\\u8d44\\u79fb\\u6c11\\u9879\\u76ee\\uff0c\\u6210\\u529f\\u5730\\u5e2e\\u52a9\\u7b2c\\u4e00\\uff0c\\u7b2c\\u4e8c\\u7ea7\\u7684\\u73b0\\u4ee3\\u548c\\u8d77\\u4e9a\\u4f9b\\u5e94\\u5546\\u5728\\u672c\\u5730\\u533a\\u6269\\u5c55\\u4e1a\\u52a1\\uff0c\\u540c\\u65f6\\u4fc3\\u8fdb\\u4e86\\u5f53\\u5730\\u7ecf\\u6d4e\\u7684\\u53d1\\u5c55\\uff0c \\u5728\\u5c31\\u4e1a\\u4e9f\\u5f85\\u53d1\\u5c55\\u5730\\u533a\\uff0c\\u9020\\u5c31\\u4e86\\u6210\\u5343\\u4e0a\\u4e07\\u7684\\u5c31\\u4e1a\\u673a\\u4f1a\\uff0c\\u8fd9\\u4e9b\\u5b9e\\u5b9e\\u5728\\u5728\\u7684\\u5c31\\u4e1a\\uff0c\\u65e0\\u65f6\\u65e0\\u523b\\u5730\\u5f71\\u54cd\\u7740\\u666e\\u901a\\u4eba\\u548c\\u4ed6\\u4eec\\u6240\\u5728\\u793e\\u533a\\u7684\\u65e5\\u5e38\\u751f\\u6d3b\\u3002<\\/p>\\r\\n<hr \\/>\\r\\n<p>&nbsp;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"15\",\"created\":\"2015-04-20 21:48:02\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 19:25:20\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 19:24:57\",\"publish_up\":\"2015-04-20 21:48:02\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(52,1,1,'','2015-04-23 20:32:09',365,3504,'c1e847400e010ac0634377d5cfa12747cd0b6362','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/422727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u6210\\u8f66\\u51fa\\u5382<p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:32:09\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:30:45\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"53\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(53,1,1,'','2015-04-23 20:32:51',365,3505,'9e8fc3afb479fc98fabe81e46507fed695040913','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u6210\\u8f66\\u51fa\\u5382<p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:32:51\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:32:09\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"55\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(54,1,1,'','2015-04-23 20:40:14',365,3579,'4df6206497371b871247e0ec4b27043a1bf28da1','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\u201c><strong>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<strong><p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:40:14\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:38:36\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"57\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(55,1,1,'','2015-04-23 20:40:44',365,3583,'820d93cd17e4ad69de092accd07b655514303dac','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\u201c><strong>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:40:44\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:40:14\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":18,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"58\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(56,1,1,'','2015-04-23 20:41:21',365,3549,'a84eb653edb1f9798e7464e0c7309dd9115a8cf7','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><strong>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:41:21\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:40:44\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":19,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"60\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(57,1,1,'','2015-04-23 20:41:47',365,3567,'b0d34f203b255e86a4b5957a694ef6244d6844f5','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>\\u963f\\u62c9\\u5df4\\u9a6c\\u73b0\\u4ee3\\u6c7d\\u8f66\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:41:47\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:41:21\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":20,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"61\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(58,1,1,'','2015-04-23 20:45:16',365,3579,'c8a8243e8d638447db8d6c2e2af59cd6a27dcf6c','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u963f\\u62c9\\u5df4\\u9a6c\\u751f\\u4ea7\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:45:16\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:44:46\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":21,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"64\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(59,1,1,'','2015-04-23 20:45:53',365,3591,'a954948cf933719e7b5976fdbb7a313d9acfdc96','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6295\\u8d44\\u9879\\u76ee\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684\\u5f71\\u54cd<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u963f\\u62c9\\u5df4\\u9a6c\\u751f\\u4ea7\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:45:53\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:45:33\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":22,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"64\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(60,1,1,'','2015-04-23 20:46:44',365,3603,'c2e4fb2c783841634063fbae8516311ef37d33dc','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6c7d\\u8f66\\u884c\\u4e1a\\u6295\\u8d44\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684\\u5f71\\u54cd<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\uff0c\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <\\/p>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u963f\\u62c9\\u5df4\\u9a6c\\u751f\\u4ea7\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 20:46:44\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 20:45:53\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":23,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"65\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(61,1,1,'','2015-04-23 21:20:18',365,3618,'3592da8b538eaf89c1da0bbbe92e0be8b1b6f4e5','{\"id\":1,\"asset_id\":\"63\",\"title\":\"\\u7f8e\\u56fd\\u4e1c\\u5357\\u5730\\u533a\\u6c7d\\u8f66\\u884c\\u4e1a\\u6295\\u8d44\",\"alias\":\"2015-04-20-21-05-55\",\"introtext\":\"<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/2065212_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div style=\\\"text-align: center; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2;\\\">\\r\\n<p><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u548c\\u8d77\\u4e9a\\u6c7d\\u8f66\\u5bf9\\u533a\\u57df\\u7684\\u5f71\\u54cd<\\/strong><\\/p>\\r\\n<p>\\u5728\\u7f8e\\u56fd\\u4e1c\\u5357\\u90e8\\uff0c \\u6c7d\\u8f66\\u5236\\u9020\\u4e1a\\u4e00\\u76f4\\u4fdd\\u6301\\u7740\\u5f3a\\u52b2\\u7684\\u53d1\\u5c55\\u52bf\\u5934\\u3002\\u7f8e\\u56fd\\u901a\\u7528\\uff0c\\u798f\\u7279\\u548c\\u514b\\u83b1\\u65af\\u52d2\\u516c\\u53f8\\u5df2\\u7ecf\\u5728\\u8be5\\u533a\\u57df\\u7ecf\\u8425\\u4e86\\u51e0\\u5341\\u5e74\\u3002\\u7136\\u800c\\u8fd1\\u5e74\\u6765\\uff0c\\u662f\\u5916\\u8d44\\u6c7d\\u8f66\\u516c\\u53f8\\u7ee7\\u7eed\\u7740\\u5bf9\\u8be5\\u533a\\u57ce\\u7684\\u6295\\u8d44\\u3002\\u4e16\\u754c\\u8457\\u540d\\u5382\\u5546\\uff0c\\u73b0\\u4ee3\\uff0c\\u8d77\\u4e9a\\uff0c\\u5927\\u4f17\\uff0c\\u5b9d\\u9a6c\\uff0c\\u5954\\u9a70\\uff0c\\u672c\\u7530\\uff0c\\u65e5\\u4ea7\\u548c\\u4e30\\u7530\\u6765\\u8be5\\u5730\\u533a\\u8bbe\\u5382\\uff0c\\u8fd9\\u4e9b\\u5de5\\u5382\\u7684\\u4f9b\\u5e94\\u5546\\u4eec\\u7684\\u4e1a\\u52a1\\u4e5f\\u90fd\\u6301\\u7eed\\u5730\\u6269\\u5c55\\u3002<\\/p>\\r\\n<p><strong>Automotive Manufacturers in the Southeastern Corridor<\\/strong><\\/p>\\r\\n<p>HMMA (Hyundai Motor Manufacturing Alabama), KMMG (Kia Motor Manufacturing Georgia), BMW, Mercedez Benz, Volkswagen, Toyota, Honda, Nissan, General Motors <br \\/> <br \\/> <br\\/> <\\/p>\\r\\n<\\/div>\\r\\n<p style=\\\"text-align: center;\\\"><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/srccn\\/article_photos\\/4224727_orig.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><strong>\\u73b0\\u4ee3\\u6c7d\\u8f66\\u963f\\u62c9\\u5df4\\u9a6c\\u751f\\u4ea7\\u5382\\uff0c \\u5e86\\u795d\\u7b2c\\u4e00\\u767e\\u4e07\\u8f86\\u8f66\\u51fa\\u5382<\\/strong><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2015-04-20 21:05:55\",\"created_by\":\"365\",\"created_by_alias\":\"\",\"modified\":\"2015-04-23 21:20:18\",\"modified_by\":\"365\",\"checked_out\":\"365\",\"checked_out_time\":\"2015-04-23 21:19:30\",\"publish_up\":\"2015-04-20 21:05:55\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":24,\"ordering\":\"6\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"79\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `srccn_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_update_sites`
--

DROP TABLE IF EXISTS `srccn_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_update_sites`
--

LOCK TABLES `srccn_update_sites` WRITE;
/*!40000 ALTER TABLE `srccn_update_sites` DISABLE KEYS */;
INSERT INTO `srccn_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1429822617,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1429822617,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1429822615,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1429822615,''),(5,'Akeeba Backup Core','extension','http://cdn.akeebabackup.com/updates/abcore.xml',1,1429822615,''),(6,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml',1,1429822615,''),(7,'Slideshow CK Update','extension','http://update.joomlack.fr/mod_slideshowck_update.xml',1,1429822615,'');
/*!40000 ALTER TABLE `srccn_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_update_sites_extensions`
--

DROP TABLE IF EXISTS `srccn_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_update_sites_extensions`
--

LOCK TABLES `srccn_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `srccn_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `srccn_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(3,10002),(4,28),(5,10003),(6,10006),(7,10009);
/*!40000 ALTER TABLE `srccn_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_updates`
--

DROP TABLE IF EXISTS `srccn_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_updates`
--

LOCK TABLES `srccn_updates` WRITE;
/*!40000 ALTER TABLE `srccn_updates` DISABLE KEYS */;
INSERT INTO `srccn_updates` VALUES (1,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','',''),(2,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','',''),(3,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(4,3,0,'Danish','','pkg_da-DK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/da-DK_details.xml','',''),(5,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','',''),(6,3,0,'Estonian','','pkg_et-EE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/et-EE_details.xml','',''),(7,3,0,'Italian','','pkg_it-IT','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/it-IT_details.xml','',''),(8,3,0,'Korean','','pkg_ko-KR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','',''),(9,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','',''),(10,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','',''),(11,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','',''),(12,3,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nn-NO_details.xml','',''),(13,3,0,'Persian','','pkg_fa-IR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/fa-IR_details.xml','',''),(14,3,0,'Polish','','pkg_pl-PL','package','',0,'3.4.0.1','','http://update.joomla.org/language/details3/pl-PL_details.xml','',''),(15,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/pt-PT_details.xml','',''),(16,3,0,'Russian','','pkg_ru-RU','package','',0,'3.3.6.2','','http://update.joomla.org/language/details3/ru-RU_details.xml','',''),(17,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','',''),(18,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.4.1.3','','http://update.joomla.org/language/details3/sv-SE_details.xml','',''),(19,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(20,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','',''),(21,3,0,'Thai','','pkg_th-TH','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/th-TH_details.xml','',''),(22,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/tr-TR_details.xml','',''),(23,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.3.3.15','','http://update.joomla.org/language/details3/uk-UA_details.xml','',''),(24,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','',''),(25,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','',''),(26,3,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/hi-IN_details.xml','',''),(27,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.4.1.2','','http://update.joomla.org/language/details3/pt-BR_details.xml','',''),(28,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','',''),(29,3,0,'Spanish','','pkg_es-ES','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/es-ES_details.xml','',''),(30,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.4.0.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','',''),(31,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','',''),(32,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','',''),(33,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','http://update.joomla.org/language/details3/id-ID_details.xml','',''),(34,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','',''),(35,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','',''),(36,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','',''),(37,3,0,'EnglishCA','','pkg_en-CA','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/en-CA_details.xml','',''),(38,3,0,'FrenchCA','','pkg_fr-CA','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/fr-CA_details.xml','',''),(39,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/cy-GB_details.xml','',''),(40,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/si-LK_details.xml','','');
/*!40000 ALTER TABLE `srccn_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_user_keys`
--

DROP TABLE IF EXISTS `srccn_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_user_keys`
--

LOCK TABLES `srccn_user_keys` WRITE;
/*!40000 ALTER TABLE `srccn_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_user_notes`
--

DROP TABLE IF EXISTS `srccn_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_user_notes`
--

LOCK TABLES `srccn_user_notes` WRITE;
/*!40000 ALTER TABLE `srccn_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_user_profiles`
--

DROP TABLE IF EXISTS `srccn_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_user_profiles`
--

LOCK TABLES `srccn_user_profiles` WRITE;
/*!40000 ALTER TABLE `srccn_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `srccn_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_user_usergroup_map`
--

DROP TABLE IF EXISTS `srccn_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_user_usergroup_map`
--

LOCK TABLES `srccn_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `srccn_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `srccn_user_usergroup_map` VALUES (365,8);
/*!40000 ALTER TABLE `srccn_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_usergroups`
--

DROP TABLE IF EXISTS `srccn_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_usergroups`
--

LOCK TABLES `srccn_usergroups` WRITE;
/*!40000 ALTER TABLE `srccn_usergroups` DISABLE KEYS */;
INSERT INTO `srccn_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `srccn_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_users`
--

DROP TABLE IF EXISTS `srccn_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_users`
--

LOCK TABLES `srccn_users` WRITE;
/*!40000 ALTER TABLE `srccn_users` DISABLE KEYS */;
INSERT INTO `srccn_users` VALUES (365,'Super User','admin','bfang99@yahoo.com','$2y$10$YwlZpTyo.h7WUj.CLeLYZ./xFyD6OT0P.Zj0/gAd7.a7utIJ.HUFW',0,1,'2015-04-20 19:22:38','2015-04-23 19:24:44','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `srccn_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_viewlevels`
--

DROP TABLE IF EXISTS `srccn_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_viewlevels`
--

LOCK TABLES `srccn_viewlevels` WRITE;
/*!40000 ALTER TABLE `srccn_viewlevels` DISABLE KEYS */;
INSERT INTO `srccn_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `srccn_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srccn_wf_profiles`
--

DROP TABLE IF EXISTS `srccn_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `srccn_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srccn_wf_profiles`
--

LOCK TABLES `srccn_wf_profiles` WRITE;
/*!40000 ALTER TABLE `srccn_wf_profiles` DISABLE KEYS */;
INSERT INTO `srccn_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `srccn_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-23 17:29:35
