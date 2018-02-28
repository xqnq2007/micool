-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: micool
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Current Database: `micool`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `micool` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `micool`;

--
-- Table structure for table `bbs_attach`
--

DROP TABLE IF EXISTS `bbs_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_attach` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `filesize` int(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(120) NOT NULL DEFAULT '',
  `orgfilename` char(120) NOT NULL DEFAULT '',
  `filetype` char(7) NOT NULL DEFAULT '',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` char(100) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `credits` int(11) NOT NULL DEFAULT '0',
  `golds` int(11) NOT NULL DEFAULT '0',
  `rmbs` int(11) NOT NULL DEFAULT '0',
  `isimage` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `pid` (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_attach`
--

LOCK TABLES `bbs_attach` WRITE;
/*!40000 ALTER TABLE `bbs_attach` DISABLE KEYS */;
INSERT INTO `bbs_attach` VALUES (1,7,9,5,14769,396,346,'201802/5_CSSSHAQ7EVH947U.png','capture.png','image',1518418353,'',0,0,0,0,1);
/*!40000 ALTER TABLE `bbs_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_cache`
--

DROP TABLE IF EXISTS `bbs_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_cache` (
  `k` char(32) NOT NULL DEFAULT '',
  `v` mediumtext NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_cache`
--

LOCK TABLES `bbs_cache` WRITE;
/*!40000 ALTER TABLE `bbs_cache` DISABLE KEYS */;
INSERT INTO `bbs_cache` VALUES ('bbs_runtime','{\n    \"users\": 5,\n    \"posts\": 4,\n    \"threads\": 7,\n    \"todayusers\": 0,\n    \"todayposts\": 0,\n    \"todaythreads\": 0,\n    \"onlines\": 1,\n    \"cron_1_last_date\": 1519699570,\n    \"cron_2_last_date\": 1519660800\n}',0),('bbs_grouplist','{\"0\":{\"gid\":\"0\",\"name\":\"游客组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"0\",\"allowpost\":\"1\",\"allowattach\":\"0\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"1\":{\"gid\":\"1\",\"name\":\"管理员组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"1\",\"allowupdate\":\"1\",\"allowdelete\":\"1\",\"allowmove\":\"1\",\"allowbanuser\":\"1\",\"allowdeleteuser\":\"1\",\"allowviewip\":\"1\"},\"2\":{\"gid\":\"2\",\"name\":\"超级版主组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"1\",\"allowupdate\":\"1\",\"allowdelete\":\"1\",\"allowmove\":\"1\",\"allowbanuser\":\"1\",\"allowdeleteuser\":\"1\",\"allowviewip\":\"1\"},\"4\":{\"gid\":\"4\",\"name\":\"版主组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"1\",\"allowupdate\":\"1\",\"allowdelete\":\"1\",\"allowmove\":\"1\",\"allowbanuser\":\"1\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"1\"},\"5\":{\"gid\":\"5\",\"name\":\"实习版主组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"1\",\"allowupdate\":\"1\",\"allowdelete\":\"0\",\"allowmove\":\"1\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"6\":{\"gid\":\"6\",\"name\":\"待验证用户组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"1\",\"allowthread\":\"0\",\"allowpost\":\"1\",\"allowattach\":\"0\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"7\":{\"gid\":\"7\",\"name\":\"禁止用户组\",\"creditsfrom\":\"0\",\"creditsto\":\"0\",\"allowread\":\"0\",\"allowthread\":\"0\",\"allowpost\":\"0\",\"allowattach\":\"0\",\"allowdown\":\"0\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"101\":{\"gid\":\"101\",\"name\":\"一级用户组\",\"creditsfrom\":\"0\",\"creditsto\":\"50\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"102\":{\"gid\":\"102\",\"name\":\"二级用户组\",\"creditsfrom\":\"50\",\"creditsto\":\"200\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"103\":{\"gid\":\"103\",\"name\":\"三级用户组\",\"creditsfrom\":\"200\",\"creditsto\":\"1000\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"104\":{\"gid\":\"104\",\"name\":\"四级用户组\",\"creditsfrom\":\"1000\",\"creditsto\":\"10000\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"},\"105\":{\"gid\":\"105\",\"name\":\"五级用户组\",\"creditsfrom\":\"10000\",\"creditsto\":\"10000000\",\"allowread\":\"1\",\"allowthread\":\"1\",\"allowpost\":\"1\",\"allowattach\":\"1\",\"allowdown\":\"1\",\"allowtop\":\"0\",\"allowupdate\":\"0\",\"allowdelete\":\"0\",\"allowmove\":\"0\",\"allowbanuser\":\"0\",\"allowdeleteuser\":\"0\",\"allowviewip\":\"0\"}}',0),('bbs_plugin_official_list','{\n    \"sg_invite_vip\": {\n        \"pluginid\": \"160\",\n        \"name\": \"邀请码增强版\",\n        \"brief\": \"开启后只有邀请码才能注册账号，功能有开启前台用户购买，限制能购买的用户组，设置购买消耗资源有 credits 积分、golds 金币、rmbs 人民币，设置价格，设置用户库存未使用邀请码数量，超过不能在购买。<br>插件为<a target=\'_blank\' href=\'http://cha.sgahz.net/\'>查鸽信息网</a>制作。<br>联系QQ：5886425\",\n        \"version\": \"1.8\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"0\",\n        \"styleid\": \"0\",\n        \"dir\": \"sg_invite_vip\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"10\",\n        \"uid\": \"753\",\n        \"username\": \"nianjin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"12\",\n        \"sells\": \"8\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1517117891\",\n        \"last_date\": \"1517135802\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/160/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--sg_invite_vip-1517135802.htm\"\n    },\n    \"huux_postlist\": {\n        \"pluginid\": \"159\",\n        \"name\": \"回帖排序\",\n        \"brief\": \"增加回帖查看方式，倒序和正序<br />(FOR 4.0正式版)\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"huux_postlist\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"10409\",\n        \"username\": \"大白\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"393\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516970433\",\n        \"last_date\": \"1517143166\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/159/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--huux_postlist-1517143166.htm\"\n    },\n    \"msdn_theme_wechat\": {\n        \"pluginid\": \"157\",\n        \"name\": \"私方主题：微信绿风格\",\n        \"brief\": \"这个主题风格基于Xiuno官方主题修改版，应Xiuno bbs网友反馈需求微信绿风格主题，而特别制作。。【 1.1更新说明：增加20%的灰度。】\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"msdn_theme_wechat\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"15089\",\n        \"username\": \"等你吃夜宵\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"265\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516889805\",\n        \"last_date\": \"1516958388\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/157/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--msdn_theme_wechat-1516958388.htm\"\n    },\n    \"huux_hlight\": {\n        \"pluginid\": \"154\",\n        \"name\": \"主题高亮\",\n        \"brief\": \"让主题变色的插件<br />(FOR 4.0正式版)\",\n        \"version\": \"1.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"huux_hlight\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"10409\",\n        \"username\": \"大白\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"401\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516782216\",\n        \"last_date\": \"0\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/154/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--huux_hlight-0.htm\"\n    },\n    \"haya_favorite\": {\n        \"pluginid\": \"152\",\n        \"name\": \"帖子收藏\",\n        \"brief\": \"收藏自己喜欢的帖子，展示热门收藏的帖子。\",\n        \"version\": \"1.7.9\",\n        \"bbs_version\": \"4.0.1\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"haya_favorite\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"8956\",\n        \"username\": \"迷路的猫\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"305\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516772575\",\n        \"last_date\": \"1517671347\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/152/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--haya_favorite-1517671347.htm\"\n    },\n    \"xb_theme_colorful\": {\n        \"pluginid\": \"147\",\n        \"name\": \"小白主题：五彩斑斓的黑\",\n        \"brief\": \"这是我的第一个主题，做的不好还望见谅。五彩斑斓的黑，基于官方暗调主题修改而来，向xiuno作者致敬，将部分色调修改为透明或半透明，并使用一张webp格式渐变图，缩短加载时间，并在多数常用css后注释标签作用，方便后续修改完善。\",\n        \"version\": \"1.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"xb_theme_colorful\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"15007\",\n        \"username\": \"khorchin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"229\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516716981\",\n        \"last_date\": \"1516879026\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/147/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xb_theme_colorful-1516879026.htm\"\n    },\n    \"msdn_theme_green\": {\n        \"pluginid\": \"144\",\n        \"name\": \"私方主题：绿色风格\",\n        \"brief\": \"这个主题风格基于Xiuno官方主题修改版，感谢Xiuno、感谢CCTV、感谢NTV。\",\n        \"version\": \"1.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"msdn_theme_green\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"15089\",\n        \"username\": \"等你吃夜宵\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"164\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516680009\",\n        \"last_date\": \"0\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/144/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--msdn_theme_green-0.htm\"\n    },\n    \"msdn_theme_blue\": {\n        \"pluginid\": \"143\",\n        \"name\": \"私方主题：蓝色风格\",\n        \"brief\": \"这个主题风格基于Xiuno官方主题修改版，感谢Xiuno、感谢CCTV、感谢NTV。\",\n        \"version\": \"1.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"0\",\n        \"styleid\": \"0\",\n        \"dir\": \"msdn_theme_blue\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"15089\",\n        \"username\": \"等你吃夜宵\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"224\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516670889\",\n        \"last_date\": \"1516671093\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/143/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--msdn_theme_blue-1516671093.htm\"\n    },\n    \"huux_set\": {\n        \"pluginid\": \"142\",\n        \"name\": \"拓展设置\",\n        \"brief\": \"在后台设置选项中增加扩展设置<br />(FOR 4.0正式版)\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"huux_set\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"10409\",\n        \"username\": \"大白\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"547\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516633619\",\n        \"last_date\": \"1516648406\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/142/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--huux_set-1516648406.htm\"\n    },\n    \"sg_highlight\": {\n        \"pluginid\": \"138\",\n        \"name\": \"主题高亮\",\n        \"brief\": \"支持五种颜色高亮设置，标题加颜色，后台自定颜色。<br>插件为<a target=\'_blank\' href=\'http://cha.sgahz.net/\'>查鸽信息网</a>制作。<br>联系QQ：5886425\",\n        \"version\": \"1.7\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"0\",\n        \"styleid\": \"0\",\n        \"dir\": \"sg_highlight\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"753\",\n        \"username\": \"nianjin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"236\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516585696\",\n        \"last_date\": \"0\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/138/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--sg_highlight-0.htm\"\n    },\n    \"xn_theme_paopao\": {\n        \"pluginid\": \"136\",\n        \"name\": \"官方主题：蓝色背景\",\n        \"brief\": \"用 css overwrite 的方式，重新定义了背景，最简单的主题风格制作方式。新手可以基于此主题风格直接修改。\",\n        \"version\": \"1.6\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_theme_paopao\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"362\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516531338\",\n        \"last_date\": \"1516532847\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/136/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_theme_paopao-1516532847.htm\"\n    },\n    \"xn_theme_dark\": {\n        \"pluginid\": \"135\",\n        \"name\": \"官方主题：暗调背景\",\n        \"brief\": \"暗调背景，半透明效果，这个主题风格花了大半天的时间，因为是暗调，黑白颠倒，scss 的变量定义和样式调教比较麻烦，不建议新手基于该风格修改。\",\n        \"version\": \"1.3\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_theme_dark\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"284\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516530495\",\n        \"last_date\": \"1516531630\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/135/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_theme_dark-1516531630.htm\"\n    },\n    \"xn_theme_red\": {\n        \"pluginid\": \"134\",\n        \"name\": \"官方主题：红色风格\",\n        \"brief\": \"本来想向某位科技公司致敬的（我本人很敬重其创始人），但考虑到该公司的创始人版权意识很强烈，但为了避免不要的麻烦，还是自己学习某人生导师教导的搞微创新吧。这个主题风格之花了大概十分钟，配置下 scss 几个文件，重新使用 auto.cmd 编译下就出来了，建议有开发能力的基于此风格二次修改。\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"1\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_theme_red\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"360\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516530032\",\n        \"last_date\": \"1516531669\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/134/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_theme_red-1516531669.htm\"\n    },\n    \"xn_insert_code\": {\n        \"pluginid\": \"130\",\n        \"name\": \"插入代码\",\n        \"brief\": \"插入统计代码，页脚代码，广告代码。\",\n        \"version\": \"1.2\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"0\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_insert_code\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"490\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1516191533\",\n        \"last_date\": \"1517480356\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/130/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_insert_code-1517480356.htm\"\n    },\n    \"xn_top\": {\n        \"pluginid\": \"128\",\n        \"name\": \"回到顶部\",\n        \"brief\": \"方便的小功能，回到页面最顶部.\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_top\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"640\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1515989390\",\n        \"last_date\": \"1516011167\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/128/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_top-1516011167.htm\"\n    },\n    \"xn_forum_merge\": {\n        \"pluginid\": \"69\",\n        \"name\": \"版块合并 / Forum Merge\",\n        \"brief\": \"合并版块下的主题，帖子。\",\n        \"version\": \"2.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_forum_merge\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"746\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1492591018\",\n        \"last_date\": \"1515149240\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/69/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_forum_merge-1515149240.htm\"\n    },\n    \"xn_read_unread\": {\n        \"pluginid\": \"42\",\n        \"name\": \"已读未读\",\n        \"brief\": \"未读主题采用加粗表示。\",\n        \"version\": \"3.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_read_unread\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"2233\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1476420842\",\n        \"last_date\": \"1516978565\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/42/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_read_unread-1516978565.htm\"\n    },\n    \"GG_vcode\": {\n        \"pluginid\": \"40\",\n        \"name\": \"【Gingerbbs】 - 验证码\",\n        \"brief\": \"可在注册,登陆,发帖,回帖处添加验证码认证。 [V1.1更新]优化验证码刷新\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"0\",\n        \"styleid\": \"0\",\n        \"dir\": \"GG_vcode\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"7775\",\n        \"username\": \"1041865683@qq.co\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"3437\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1476328535\",\n        \"last_date\": \"1476678545\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/40/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--GG_vcode-1476678545.htm\"\n    },\n    \"xn_ipaccess\": {\n        \"pluginid\": \"36\",\n        \"name\": \"每日 IP 限制 / Daily limit of IP\",\n        \"brief\": \"限制每日 IP 发帖量、注册量、文件上传个数、大小、连续发帖数、防止灌水。<br> Restrictions on the daily amount of IP posting, registration, upload a number of documents, the size of the number of consecutive posts to prevent irrigation.\",\n        \"version\": \"1.2\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_ipaccess\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"1480\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1475243025\",\n        \"last_date\": \"1504166812\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/36/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_ipaccess-1504166812.htm\"\n    },\n    \"xn_syntax_hightlighter\": {\n        \"pluginid\": \"27\",\n        \"name\": \"代码高亮\",\n        \"brief\": \"支持 HTML JS CSS PHP C JS C++ 等常用语法的高亮。\",\n        \"version\": \"1.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_syntax_hightlighter\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"2288\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1473081326\",\n        \"last_date\": \"1474103949\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/27/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_syntax_hightlighter-1474103949.htm\"\n    },\n    \"xn_search\": {\n        \"pluginid\": \"23\",\n        \"name\": \"Xiuno BBS 搜索插件 for 4.0 正式版\",\n        \"brief\": \"采用 MySQL FULLTEXT 实现全文搜索，Xiuno BBS 4 采用独特的处理方式，支持中文高效搜索（请设置 my.cnf 中的 ft_min_word_len=2）。\",\n        \"version\": \"3.4\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"3\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_search\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"6207\",\n        \"sells\": \"39\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1472569687\",\n        \"last_date\": \"1516244981\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/23/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_search-1516244981.htm\"\n    },\n    \"xn_digest\": {\n        \"pluginid\": \"22\",\n        \"name\": \"精华主题\",\n        \"brief\": \"支持三级精华设置，用尾部图标标示精华主题。\",\n        \"version\": \"3.4\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"3\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_digest\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"3981\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1472309129\",\n        \"last_date\": \"1515993992\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/22/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_digest-1515993992.htm\"\n    },\n    \"xn_tag\": {\n        \"pluginid\": \"14\",\n        \"name\": \"标签(TAG) - 增强版\",\n        \"brief\": \"强大通用的 TAG 系统，可以用来替代多维主题分类，可以对 TAG 进行分类，一个主题可以对应最多 4 个 TAG。 / Powerful universal TAG system, can be used to replace the multi-dimensional theme classification, TAG can be classified, a thread can correspond to up to 4 TAG.\",\n        \"version\": \"2.3\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"3\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_tag\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"3917\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"1471828308\",\n        \"last_date\": \"1516629672\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/14/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_tag-1516629672.htm\"\n    },\n    \"xn_umeditor\": {\n        \"pluginid\": \"9\",\n        \"name\": \"UMEditor 百度编辑器\",\n        \"brief\": \"UMEditor 是一款轻量级的百度编辑器，代码相对精简，axiuno 在此基础上修复了一些 Bootstrap 4 下的问题，移植了代码高亮插件，自行编写了截图、图片上传部分代码，并且 IE11+ 支持直接粘贴 WORD 文字和图片。\",\n        \"version\": \"2.3\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"3\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_umeditor\",\n        \"icon\": \"0\",\n        \"img1\": \"127\",\n        \"img2\": \"127\",\n        \"img3\": \"127\",\n        \"img4\": \"127\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"axiuno\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"8537\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"0\",\n        \"last_date\": \"1516533912\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/9/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_umeditor-1516533912.htm\"\n    },\n    \"xn_qq_login\": {\n        \"pluginid\": \"7\",\n        \"name\": \"QQ 登陆\",\n        \"brief\": \"QQ 一键登陆，自动生成用户名，获取头像，完成登陆。\",\n        \"version\": \"2.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"4\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_qq_login\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"admin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"3547\",\n        \"sells\": \"1\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"0\",\n        \"last_date\": \"1517237711\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/7/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_qq_login-1517237711.htm\"\n    },\n    \"xn_friendlink\": {\n        \"pluginid\": \"6\",\n        \"name\": \"友情链接\",\n        \"brief\": \"友情链接管理，在首页右侧显示友情链接列表。\",\n        \"version\": \"2.1\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_friendlink\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"admin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"3355\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"0\",\n        \"last_date\": \"1516611494\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/6/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_friendlink-1516611494.htm\"\n    },\n    \"xn_user_recent_thread\": {\n        \"pluginid\": \"5\",\n        \"name\": \"详情页右后侧：用户最新主题\",\n        \"brief\": \"在详情页右侧，加入用户最新发表的主题列表。\",\n        \"version\": \"1.4\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_user_recent_thread\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"4\",\n        \"username\": \"ccc\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"2700\",\n        \"sells\": \"0\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"0\",\n        \"last_date\": \"1516025083\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/5/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_user_recent_thread-1516025083.htm\"\n    },\n    \"xn_nav_more\": {\n        \"pluginid\": \"4\",\n        \"name\": \"导航栏更多版块\",\n        \"brief\": \"导航比较多的时候，显示省略号，点击下拉菜单显示更多的版块。\",\n        \"version\": \"1.0\",\n        \"bbs_version\": \"4.0\",\n        \"cateid\": \"2\",\n        \"styleid\": \"0\",\n        \"dir\": \"xn_nav_more\",\n        \"icon\": \"0\",\n        \"img1\": \"0\",\n        \"img2\": \"0\",\n        \"img3\": \"0\",\n        \"img4\": \"0\",\n        \"price\": \"0\",\n        \"uid\": \"1\",\n        \"username\": \"admin\",\n        \"email\": \"\",\n        \"stars\": \"0\",\n        \"user_stars\": \"0\",\n        \"installs\": \"2082\",\n        \"sells\": \"2\",\n        \"file_md5\": \"\",\n        \"is_cert\": \"1\",\n        \"create_date\": \"0\",\n        \"last_date\": \"1474161983\",\n        \"qq\": \"\",\n        \"brief_url\": \"\",\n        \"icon_url\": \"upload/plugin/4/icon.png\",\n        \"stars_fmt\": \"\",\n        \"user_stars_fmt\": \"\",\n        \"zip_url\": \"plugin-download--xn_nav_more-1474161983.htm\"\n    }\n}',1517840432),('bbs_forumlist','{\n    \"9\": {\n        \"fid\": \"9\",\n        \"name\": \"love\",\n        \"rank\": \"7\",\n        \"threads\": \"2\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"你会爱上.LOVE的！爱象征着浪漫、家庭、情感、热情和赞颂。爱总是和温暖、喜悦及幸福联系在一起。.LOVE极具吸引力的域名；爱意味着唤醒您的感官，触发您的记忆，刺激您的思想。它是婚礼、家庭网站、约会网站或任何展示爱的网站的完美域名，您可以展示一个人、您最热爱的运动或运动队、一部电影或一本百翻不厌的书，抑或是一个每场演唱会您都不会错过的乐队。今天就在.LOVE上展示您的爱吧！\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517835738\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/9.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"7\": {\n        \"fid\": \"7\",\n        \"name\": \"red\",\n        \"rank\": \"6\",\n        \"threads\": \"0\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"快来看看.RED吧！一个能将热力带到您所热衷的一切事物里的全新顶级域！比如红色唇膏、红色长裙或者红色跑车；红颜色总能给事物带来热力。现在，.RED域名也将为网站带来热力！如果您想为网站内容带来尽可能多的激情，那.RED是您的完美选择。.RED代表您的热情，是您分享兴趣爱好、事业及观点的理想场所。\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/7.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"6\": {\n        \"fid\": \"6\",\n        \"name\": \"run\",\n        \"rank\": \"5\",\n        \"threads\": \"0\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"您一定会想要注册.RUN域名并将奔走相告，让大家知道有这样一个神奇的域名的！.RUN为您提供了一个创建个性化网站的独特机会，让您展示对跑步的热爱、减肥历程、征战马拉松之路等等。如此众多、独特的域名后缀中，您现在有机会找到那个最适合您的域名，并可以发挥创意，创建拼接次域名了，例如您可以注册像HurryUp.RUN、LetsGo.RUN或SwimBike.RUN这样的域名。参加马拉松赛的团体也可以发挥.RUN的优势，健身行业的公司也可以用.RUN推广自己的跑步服装或跑步装备！\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/6.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"5\": {\n        \"fid\": \"5\",\n        \"name\": \"cool\",\n        \"rank\": \"4\",\n        \"threads\": \"1\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"快来秀出您在.COOL上的炫酷网站吧！.COOL域名简直可以直接为自己代言！如果您在为自己的网站或博客寻找独特域名，.COOL就是您最理想的选择了。您可以注册YourName.COOL(\\\"我的名字.COOL\\\")或YourNameIs.COOL(\\\"我的名字是.COOL\\\")，或发挥创意，注册 拼接词域名，如Iam.COOL或者AreYou.COOL。.COOL域名让您分享在线热情，而且您还能直接在URL中推广您认为最酷的东西。使用.COOL，线上线下都很酷！\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/5.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"4\": {\n        \"fid\": \"4\",\n        \"name\": \"top\",\n        \"rank\": \"3\",\n        \"threads\": \"0\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"在.TOP上建站，方能让网站会当凌绝顶！.TOP域名是那些行业顶尖人士或企业准备的。不论您打算建立个人网站展示自己的技能，或是企业网站提供顶级产品及服务，.TOP都是您的理想选择。这个域名让来访者知道，您的企业及网站是最出类拔萃的。所有人都喜欢最棒的，很多人搜索的时候都会输入“top（顶级）”这个词，这就让.TOP获得了极大的机会。\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/4.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"3\": {\n        \"fid\": \"3\",\n        \"name\": \"wang\",\n        \"rank\": \"2\",\n        \"threads\": \"0\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"注册.WANG并捕捉中文在线市场吧。\\\"Wang\\\"大致是中文里“网”的发音，所以.WANG是在中文市场中构建网站的完美域名。.WANG域名是通用的，所以非常适合企业网站、个人网站或其他任何您想要的网站！此外，因为Wang也是百家姓中最常见的之一，.WANG页很适合用作个人网站或家族网站。有了.WANG域名，您的网站会个性十足，因为您的姓氏就在URL中！无论您姓Wang还是名字中有Wang，.WANG域名都是在线代表您或家人的完美域名。\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/3.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"1\": {\n        \"fid\": \"1\",\n        \"name\": \"ai\",\n        \"rank\": \"1\",\n        \"threads\": \"3\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"人工智能域名，AI,同时也有爱的含义。极品后缀也。\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/1.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"2\": {\n        \"fid\": \"2\",\n        \"name\": \"xyz\",\n        \"rank\": \"0\",\n        \"threads\": \"0\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"如此随性，如此自然，如此好用。.XYZ和.COM、.NET、和.ORG这样广受欢迎的域名后缀一样，由三个字母组成，让人感到同样的放心品质，而同时也是极具创新特点的域名后缀。字母表以XYZ结束，而现在域名也可以以这三个字母结束。.XYZ可供任何人用作任何目的。.XYZ域名便宜实惠，简单好记，使用灵活。任何规模、任何行业的博主、经销商或企业都可使用，它尤其适合想拥有较为堆笑的URL的公司，它可以用来发布促销信息、建立微型网站或推广公司形象。\\r\\n\\r\\n.XYZ还融合了X世代、Y世代和Z世代，以创建有互联网及其无限潜能带来的全球性社群。它带给全体互联网用户一个创新性平台，不论男女老少、远朋近友，并将世界以一种全新的方式连接在了一起。它是XYZ世代的下一代互联网。为您的个人网站选择大胆、前卫的.XYZ域名吧，让它将您与世界连接起来。\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"1517836024\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"upload/forum/2.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    },\n    \"8\": {\n        \"fid\": \"8\",\n        \"name\": \"其他\",\n        \"rank\": \"0\",\n        \"threads\": \"1\",\n        \"todayposts\": \"0\",\n        \"todaythreads\": \"0\",\n        \"brief\": \"\",\n        \"announcement\": \"\",\n        \"accesson\": \"0\",\n        \"orderby\": \"0\",\n        \"create_date\": \"0\",\n        \"icon\": \"0\",\n        \"moduids\": \"\",\n        \"seo_title\": \"\",\n        \"seo_keywords\": \"\",\n        \"create_date_fmt\": \"1970-1-1\",\n        \"icon_url\": \"view/img/forum.png\",\n        \"accesslist\": [],\n        \"modlist\": [],\n        \"tagcatelist\": false,\n        \"tagcatemap\": [],\n        \"tagmap\": []\n    }\n}',1519699630);
/*!40000 ALTER TABLE `bbs_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_forum`
--

DROP TABLE IF EXISTS `bbs_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_forum` (
  `fid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(16) NOT NULL DEFAULT '',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `threads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todayposts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `todaythreads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `brief` text NOT NULL,
  `announcement` text NOT NULL,
  `accesson` int(11) unsigned NOT NULL DEFAULT '0',
  `orderby` tinyint(11) NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `icon` int(11) unsigned NOT NULL DEFAULT '0',
  `moduids` char(120) NOT NULL DEFAULT '',
  `seo_title` char(64) NOT NULL DEFAULT '',
  `seo_keywords` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_forum`
--

LOCK TABLES `bbs_forum` WRITE;
/*!40000 ALTER TABLE `bbs_forum` DISABLE KEYS */;
INSERT INTO `bbs_forum` VALUES (1,'ai',1,3,0,0,'人工智能域名，AI,同时也有爱的含义。极品后缀也。','',0,0,0,1517836024,'','',''),(2,'xyz',0,0,0,0,'如此随性，如此自然，如此好用。.XYZ和.COM、.NET、和.ORG这样广受欢迎的域名后缀一样，由三个字母组成，让人感到同样的放心品质，而同时也是极具创新特点的域名后缀。字母表以XYZ结束，而现在域名也可以以这三个字母结束。.XYZ可供任何人用作任何目的。.XYZ域名便宜实惠，简单好记，使用灵活。任何规模、任何行业的博主、经销商或企业都可使用，它尤其适合想拥有较为堆笑的URL的公司，它可以用来发布促销信息、建立微型网站或推广公司形象。\r\n\r\n.XYZ还融合了X世代、Y世代和Z世代，以创建有互联网及其无限潜能带来的全球性社群。它带给全体互联网用户一个创新性平台，不论男女老少、远朋近友，并将世界以一种全新的方式连接在了一起。它是XYZ世代的下一代互联网。为您的个人网站选择大胆、前卫的.XYZ域名吧，让它将您与世界连接起来。','',0,0,0,1517836024,'','',''),(3,'wang',2,0,0,0,'注册.WANG并捕捉中文在线市场吧。\"Wang\"大致是中文里“网”的发音，所以.WANG是在中文市场中构建网站的完美域名。.WANG域名是通用的，所以非常适合企业网站、个人网站或其他任何您想要的网站！此外，因为Wang也是百家姓中最常见的之一，.WANG页很适合用作个人网站或家族网站。有了.WANG域名，您的网站会个性十足，因为您的姓氏就在URL中！无论您姓Wang还是名字中有Wang，.WANG域名都是在线代表您或家人的完美域名。','',0,0,0,1517836024,'','',''),(4,'top',3,0,0,0,'在.TOP上建站，方能让网站会当凌绝顶！.TOP域名是那些行业顶尖人士或企业准备的。不论您打算建立个人网站展示自己的技能，或是企业网站提供顶级产品及服务，.TOP都是您的理想选择。这个域名让来访者知道，您的企业及网站是最出类拔萃的。所有人都喜欢最棒的，很多人搜索的时候都会输入“top（顶级）”这个词，这就让.TOP获得了极大的机会。','',0,0,0,1517836024,'','',''),(5,'cool',4,1,0,0,'快来秀出您在.COOL上的炫酷网站吧！.COOL域名简直可以直接为自己代言！如果您在为自己的网站或博客寻找独特域名，.COOL就是您最理想的选择了。您可以注册YourName.COOL(\"我的名字.COOL\")或YourNameIs.COOL(\"我的名字是.COOL\")，或发挥创意，注册 拼接词域名，如Iam.COOL或者AreYou.COOL。.COOL域名让您分享在线热情，而且您还能直接在URL中推广您认为最酷的东西。使用.COOL，线上线下都很酷！','',0,0,0,1517836024,'','',''),(6,'run',5,0,0,0,'您一定会想要注册.RUN域名并将奔走相告，让大家知道有这样一个神奇的域名的！.RUN为您提供了一个创建个性化网站的独特机会，让您展示对跑步的热爱、减肥历程、征战马拉松之路等等。如此众多、独特的域名后缀中，您现在有机会找到那个最适合您的域名，并可以发挥创意，创建拼接次域名了，例如您可以注册像HurryUp.RUN、LetsGo.RUN或SwimBike.RUN这样的域名。参加马拉松赛的团体也可以发挥.RUN的优势，健身行业的公司也可以用.RUN推广自己的跑步服装或跑步装备！','',0,0,0,1517836024,'','',''),(7,'red',6,0,0,0,'快来看看.RED吧！一个能将热力带到您所热衷的一切事物里的全新顶级域！比如红色唇膏、红色长裙或者红色跑车；红颜色总能给事物带来热力。现在，.RED域名也将为网站带来热力！如果您想为网站内容带来尽可能多的激情，那.RED是您的完美选择。.RED代表您的热情，是您分享兴趣爱好、事业及观点的理想场所。','',0,0,0,1517836024,'','',''),(8,'其他',0,1,0,0,'','',0,0,0,0,'','',''),(9,'love',7,2,0,0,'你会爱上.LOVE的！爱象征着浪漫、家庭、情感、热情和赞颂。爱总是和温暖、喜悦及幸福联系在一起。.LOVE极具吸引力的域名；爱意味着唤醒您的感官，触发您的记忆，刺激您的思想。它是婚礼、家庭网站、约会网站或任何展示爱的网站的完美域名，您可以展示一个人、您最热爱的运动或运动队、一部电影或一本百翻不厌的书，抑或是一个每场演唱会您都不会错过的乐队。今天就在.LOVE上展示您的爱吧！','',0,0,0,1517835738,'','','');
/*!40000 ALTER TABLE `bbs_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_forum_access`
--

DROP TABLE IF EXISTS `bbs_forum_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_forum_access` (
  `fid` int(11) unsigned NOT NULL DEFAULT '0',
  `gid` int(11) unsigned NOT NULL DEFAULT '0',
  `allowread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowthread` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowattach` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`,`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_forum_access`
--

LOCK TABLES `bbs_forum_access` WRITE;
/*!40000 ALTER TABLE `bbs_forum_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_forum_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_group`
--

DROP TABLE IF EXISTS `bbs_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_group` (
  `gid` smallint(6) unsigned NOT NULL,
  `name` char(20) NOT NULL DEFAULT '',
  `creditsfrom` int(11) NOT NULL DEFAULT '0',
  `creditsto` int(11) NOT NULL DEFAULT '0',
  `allowread` int(11) NOT NULL DEFAULT '0',
  `allowthread` int(11) NOT NULL DEFAULT '0',
  `allowpost` int(11) NOT NULL DEFAULT '0',
  `allowattach` int(11) NOT NULL DEFAULT '0',
  `allowdown` int(11) NOT NULL DEFAULT '0',
  `allowtop` int(11) NOT NULL DEFAULT '0',
  `allowupdate` int(11) NOT NULL DEFAULT '0',
  `allowdelete` int(11) NOT NULL DEFAULT '0',
  `allowmove` int(11) NOT NULL DEFAULT '0',
  `allowbanuser` int(11) NOT NULL DEFAULT '0',
  `allowdeleteuser` int(11) NOT NULL DEFAULT '0',
  `allowviewip` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_group`
--

LOCK TABLES `bbs_group` WRITE;
/*!40000 ALTER TABLE `bbs_group` DISABLE KEYS */;
INSERT INTO `bbs_group` VALUES (0,'游客组',0,0,1,0,1,0,1,0,0,0,0,0,0,0),(1,'管理员组',0,0,1,1,1,1,1,1,1,1,1,1,1,1),(2,'超级版主组',0,0,1,1,1,1,1,1,1,1,1,1,1,1),(4,'版主组',0,0,1,1,1,1,1,1,1,1,1,1,0,1),(5,'实习版主组',0,0,1,1,1,1,1,1,1,0,1,0,0,0),(6,'待验证用户组',0,0,1,0,1,0,1,0,0,0,0,0,0,0),(7,'禁止用户组',0,0,0,0,0,0,0,0,0,0,0,0,0,0),(101,'一级用户组',0,50,1,1,1,1,1,0,0,0,0,0,0,0),(102,'二级用户组',50,200,1,1,1,1,1,0,0,0,0,0,0,0),(103,'三级用户组',200,1000,1,1,1,1,1,0,0,0,0,0,0,0),(104,'四级用户组',1000,10000,1,1,1,1,1,0,0,0,0,0,0,0),(105,'五级用户组',10000,10000000,1,1,1,1,1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `bbs_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_kv`
--

DROP TABLE IF EXISTS `bbs_kv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_kv` (
  `k` char(32) NOT NULL DEFAULT '',
  `v` mediumtext NOT NULL,
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_kv`
--

LOCK TABLES `bbs_kv` WRITE;
/*!40000 ALTER TABLE `bbs_kv` DISABLE KEYS */;
INSERT INTO `bbs_kv` VALUES ('last_version','1517835664',0),('qq_login','{\"meta\":\"\",\"appid\":\"\",\"appkey\":\"\"}',0);
/*!40000 ALTER TABLE `bbs_kv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_modlog`
--

DROP TABLE IF EXISTS `bbs_modlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_modlog` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` char(32) NOT NULL DEFAULT '',
  `comment` char(64) NOT NULL DEFAULT '',
  `rmbs` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `action` char(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`logid`),
  KEY `uid` (`uid`,`logid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_modlog`
--

LOCK TABLES `bbs_modlog` WRITE;
/*!40000 ALTER TABLE `bbs_modlog` DISABLE KEYS */;
INSERT INTO `bbs_modlog` VALUES (1,1,2,2,'AI每日注册量播报','',0,1517118428,'top');
/*!40000 ALTER TABLE `bbs_modlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_mypost`
--

DROP TABLE IF EXISTS `bbs_mypost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_mypost` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`pid`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_mypost`
--

LOCK TABLES `bbs_mypost` WRITE;
/*!40000 ALTER TABLE `bbs_mypost` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_mypost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_mythread`
--

DROP TABLE IF EXISTS `bbs_mythread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_mythread` (
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_mythread`
--

LOCK TABLES `bbs_mythread` WRITE;
/*!40000 ALTER TABLE `bbs_mythread` DISABLE KEYS */;
INSERT INTO `bbs_mythread` VALUES (1,1),(1,3),(1,4),(1,5),(1,6),(2,2),(5,7);
/*!40000 ALTER TABLE `bbs_mythread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_post`
--

DROP TABLE IF EXISTS `bbs_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_post` (
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `pid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `isfirst` int(11) unsigned NOT NULL DEFAULT '0',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` int(11) unsigned NOT NULL DEFAULT '0',
  `images` smallint(6) NOT NULL DEFAULT '0',
  `files` smallint(6) NOT NULL DEFAULT '0',
  `doctype` tinyint(3) NOT NULL DEFAULT '0',
  `quotepid` int(11) NOT NULL DEFAULT '0',
  `message` longtext NOT NULL,
  `message_fmt` longtext NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `tid` (`tid`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_post`
--

LOCK TABLES `bbs_post` WRITE;
/*!40000 ALTER TABLE `bbs_post` DISABLE KEYS */;
INSERT INTO `bbs_post` VALUES (1,1,1,1,1517080113,1075840330,0,0,0,0,'<p>喜欢点爱，哈哈，个人感觉还不错 哦</p>','<p>喜欢点爱，哈哈，个人感觉还不错 哦</p>'),(2,2,2,1,1517118402,1075840330,0,0,0,0,'<p></p><p>2018.2.2&nbsp; &nbsp; 61</p><p>2018.2.1&nbsp; &nbsp; -3</p><p>2018.1.30&nbsp; &nbsp;27</p><p>2018.1.29&nbsp; &nbsp;192</p><p>2018.1.28&nbsp; &nbsp;568</p><p>2018.1.27&nbsp; &nbsp;41</p>','<p></p><p>2018.2.2&nbsp; &nbsp; 61</p><p>2018.2.1&nbsp; &nbsp; -3</p><p>2018.1.30&nbsp; &nbsp;27</p><p>2018.1.29&nbsp; &nbsp;192</p><p>2018.1.28&nbsp; &nbsp;568</p><p>2018.1.27&nbsp; &nbsp;41</p>'),(3,3,1,1,1517158142,3746061025,0,0,0,0,'<p>就在昨日，2018.1.29日，ai单日注册量达到568，在均价接近1000的情况下，能达到如此的注册量，实在不易</p>','<p>就在昨日，2018.1.29日，ai单日注册量达到568，在均价接近1000的情况下，能达到如此的注册量，实在不易</p>'),(4,4,1,1,1517203692,1032264778,0,0,0,0,'<div>&nbsp;低价出v.cool！微酷，威酷，微生活，微平台，最酷微信公号，有N多终端！cool已备案，最牛单字符！最低价续费！&nbsp;</div><p>想要联系南方米农</p>','<div>&nbsp;低价出v.cool！微酷，威酷，微生活，微平台，最酷微信公号，有N多终端！cool已备案，最牛单字符！最低价续费！&nbsp;</div><p>想要联系南方米农</p>'),(5,5,1,1,1517204077,1032264778,0,0,0,0,'<p>8，就是那个8，米农们梦想中的8，现在只要1.5万，你就能拥有一个8，可以搭建助手或客服平台，非常合适，有意联系南方米农，QQ：&nbsp;65367139</p>','<p>8，就是那个8，米农们梦想中的8，现在只要1.5万，你就能拥有一个8，可以搭建助手或客服平台，非常合适，有意联系南方米农，QQ：&nbsp;65367139</p>'),(2,6,2,0,1517406550,3746061025,0,0,1,0,'g ','g&nbsp; '),(2,7,2,0,1517406554,3746061025,0,0,1,0,'y','y'),(6,8,1,1,1517838522,1929248707,0,0,0,0,'<p>阿里妈妈.爱。</p><p>喜欢 阿里妈妈的来。</p><p>2000出。</p>','<p>阿里妈妈.爱。</p><p>喜欢 阿里妈妈的来。</p><p>2000出。</p>'),(7,9,5,1,1518418353,1901172430,1,0,0,0,'<div><p><strong><span style=\"color:#c00000\">情人节，约会，约吗？！</span></strong></p><p><br/></p><p><strong>约会</strong>yuehui.love&nbsp;&nbsp;</p><p><strong>约吗</strong>yuema.love</p><p><strong>教授、叫兽、交手、叫瘦、交收</strong> &nbsp;jiaoshou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>人间</strong>renjian.love</p><p><strong>点爱</strong>dianai.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>粮食、良师</strong>liangshi.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>开放、开房</strong>kaifang.love &nbsp;</p><p>8013.love <strong>伴你一生</strong></p><p>8687.love<strong>不离不弃</strong></p><p>1798.love <strong>一起走吧，为了爱 </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2222222.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>44444.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>拉萨</strong>（省会城市）lasa.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>拉萨</strong>（省会城市）0891.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>惠州</strong>huizhou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>惠州</strong>0752.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>河源</strong>heyuan.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>河源</strong>0762.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>昆明</strong>0871.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>潮州</strong>chaozhou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>潮州</strong>0768.love &nbsp;</p><p><strong>日日</strong>，日日爱riri.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>天天</strong>， 天天爱tiantian.love</p><p>插插chacha.love</p><strong>哈密瓜</strong>melon.love<br/><p><strong>龙眼</strong>longan.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>荔枝</strong>litchi.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>性交</strong>xingjiao.love</p><p><strong>网恋</strong>wanglian.love</p><p><strong>探讨</strong>tantao.love</p><p><strong>拉手</strong>lashou.love</p><p><strong>寻找</strong>xunzhao.love&nbsp;</p><p>看上的加微信13138385151询价</p><p>欢迎来【.love域名总群 ，qq群号<span style=\"color:#ff0000\">708338380</span>】交流.love</p></div><p><br/></p>','<div><p><strong><span style=\"color:#c00000;\">情人节，约会，约吗？！</span></strong></p><p><br /></p><p><strong>约会</strong>yuehui.love&nbsp;&nbsp;</p><p><strong>约吗</strong>yuema.love</p><p><strong>教授、叫兽、交手、叫瘦、交收</strong> &nbsp;jiaoshou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>人间</strong>renjian.love</p><p><strong>点爱</strong>dianai.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>粮食、良师</strong>liangshi.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>开放、开房</strong>kaifang.love &nbsp;</p><p>8013.love <strong>伴你一生</strong></p><p>8687.love<strong>不离不弃</strong></p><p>1798.love <strong>一起走吧，为了爱 </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>2222222.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>44444.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>拉萨</strong>（省会城市）lasa.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>拉萨</strong>（省会城市）0891.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>惠州</strong>huizhou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>惠州</strong>0752.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>河源</strong>heyuan.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>河源</strong>0762.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>昆明</strong>0871.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><strong>潮州</strong>chaozhou.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>潮州</strong>0768.love &nbsp;</p><p><strong>日日</strong>，日日爱riri.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>天天</strong>， 天天爱tiantian.love</p><p>插插chacha.love</p><strong>哈密瓜</strong>melon.love<br /><p><strong>龙眼</strong>longan.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>荔枝</strong>litchi.love &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p><strong>性交</strong>xingjiao.love</p><p><strong>网恋</strong>wanglian.love</p><p><strong>探讨</strong>tantao.love</p><p><strong>拉手</strong>lashou.love</p><p><strong>寻找</strong>xunzhao.love&nbsp;</p><p>看上的加微信13138385151询价</p><p>欢迎来【.love域名总群 ，qq群号<span style=\"color:#ff0000;\">708338380</span>】交流.love</p></div><p><br /></p>'),(7,11,1,0,1518420798,1032264778,0,0,1,0,'very good','very&nbsp; good'),(7,10,1,0,1518420787,1032264778,0,0,1,0,'好ᕕ(ᐛ)ᕗ','好ᕕ(ᐛ)ᕗ');
/*!40000 ALTER TABLE `bbs_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_queue`
--

DROP TABLE IF EXISTS `bbs_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_queue` (
  `queueid` int(11) unsigned NOT NULL DEFAULT '0',
  `v` int(11) NOT NULL DEFAULT '0',
  `expiry` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `queueid` (`queueid`,`v`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_queue`
--

LOCK TABLES `bbs_queue` WRITE;
/*!40000 ALTER TABLE `bbs_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_session`
--

DROP TABLE IF EXISTS `bbs_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_session` (
  `sid` char(32) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `fid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` char(32) NOT NULL DEFAULT '',
  `ip` int(11) unsigned NOT NULL DEFAULT '0',
  `useragent` char(128) NOT NULL DEFAULT '',
  `data` char(255) NOT NULL DEFAULT '',
  `bigdata` tinyint(1) NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `ip` (`ip`),
  KEY `fid` (`fid`),
  KEY `uid_last_date` (`uid`,`last_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_session`
--

LOCK TABLES `bbs_session` WRITE;
/*!40000 ALTER TABLE `bbs_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_session_data`
--

DROP TABLE IF EXISTS `bbs_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_session_data` (
  `sid` char(32) NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_session_data`
--

LOCK TABLES `bbs_session_data` WRITE;
/*!40000 ALTER TABLE `bbs_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_table_day`
--

DROP TABLE IF EXISTS `bbs_table_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_table_day` (
  `year` smallint(11) unsigned NOT NULL DEFAULT '0' COMMENT '年',
  `month` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT '月',
  `day` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT '日',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '时间戳',
  `table` char(16) NOT NULL DEFAULT '' COMMENT '表名',
  `maxid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最大ID',
  `count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  PRIMARY KEY (`year`,`month`,`day`,`table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_table_day`
--

LOCK TABLES `bbs_table_day` WRITE;
/*!40000 ALTER TABLE `bbs_table_day` DISABLE KEYS */;
INSERT INTO `bbs_table_day` VALUES (2018,1,27,1517050884,'thread',0,0),(2018,1,27,1517050884,'post',0,0),(2018,1,27,1517050884,'user',0,0),(2018,1,28,1517128346,'thread',2,2),(2018,1,28,1517128346,'post',2,2),(2018,1,28,1517128346,'user',2,2),(2018,1,29,1517216299,'thread',5,5),(2018,1,29,1517216299,'post',5,5),(2018,1,29,1517216299,'user',2,2),(2018,1,30,1517299204,'thread',5,5),(2018,1,30,1517299204,'post',5,5),(2018,1,30,1517299204,'user',3,3),(2018,1,31,1517388429,'thread',5,5),(2018,1,31,1517388429,'post',5,5),(2018,1,31,1517388429,'user',3,3),(2018,2,1,1517474031,'thread',5,5),(2018,2,1,1517474031,'post',7,7),(2018,2,1,1517474031,'user',3,3),(2018,2,2,1517559447,'thread',5,5),(2018,2,2,1517559447,'post',7,7),(2018,2,2,1517559447,'user',3,3),(2018,2,3,1517647394,'thread',5,5),(2018,2,3,1517647394,'post',7,7),(2018,2,3,1517647394,'user',3,3),(2018,2,4,1517732673,'thread',5,5),(2018,2,4,1517732673,'post',7,7),(2018,2,4,1517732673,'user',3,3),(2018,2,6,1517868230,'thread',6,6),(2018,2,6,1517868230,'post',8,8),(2018,2,6,1517868230,'user',4,4),(2018,2,10,1518251601,'thread',6,6),(2018,2,10,1518251601,'post',8,8),(2018,2,10,1518251601,'user',4,4),(2018,2,11,1518338821,'thread',6,6),(2018,2,11,1518338821,'post',8,8),(2018,2,11,1518338821,'user',4,4),(2018,2,12,1518423980,'thread',7,7),(2018,2,12,1518423980,'post',11,11),(2018,2,12,1518423980,'user',5,5),(2018,2,13,1518510398,'thread',7,7),(2018,2,13,1518510398,'post',11,11),(2018,2,13,1518510398,'user',5,5),(2018,2,14,1518596743,'thread',7,7),(2018,2,14,1518596743,'post',11,11),(2018,2,14,1518596743,'user',5,5),(2018,2,15,1518682278,'thread',7,7),(2018,2,15,1518682278,'post',11,11),(2018,2,15,1518682278,'user',5,5),(2018,2,16,1518771440,'thread',7,7),(2018,2,16,1518771440,'post',11,11),(2018,2,16,1518771440,'user',5,5),(2018,2,19,1519028357,'thread',7,7),(2018,2,19,1519028357,'post',11,11),(2018,2,19,1519028357,'user',5,5),(2018,2,20,1519115191,'thread',7,7),(2018,2,20,1519115191,'post',11,11),(2018,2,20,1519115191,'user',5,5),(2018,2,21,1519201662,'thread',7,7),(2018,2,21,1519201662,'post',11,11),(2018,2,21,1519201662,'user',5,5),(2018,2,22,1519287907,'thread',7,7),(2018,2,22,1519287907,'post',11,11),(2018,2,22,1519287907,'user',5,5),(2018,2,23,1519374370,'thread',7,7),(2018,2,23,1519374370,'post',11,11),(2018,2,23,1519374370,'user',5,5),(2018,2,24,1519460628,'thread',7,7),(2018,2,24,1519460628,'post',11,11),(2018,2,24,1519460628,'user',5,5),(2018,2,25,1519549219,'thread',7,7),(2018,2,25,1519549219,'post',11,11),(2018,2,25,1519549219,'user',5,5),(2018,2,26,1519633136,'thread',7,7),(2018,2,26,1519633136,'post',11,11),(2018,2,26,1519633136,'user',5,5);
/*!40000 ALTER TABLE `bbs_table_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_thread`
--

DROP TABLE IF EXISTS `bbs_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_thread` (
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `userip` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` char(128) NOT NULL DEFAULT '',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0',
  `last_date` int(11) unsigned NOT NULL DEFAULT '0',
  `views` int(11) unsigned NOT NULL DEFAULT '0',
  `posts` int(11) unsigned NOT NULL DEFAULT '0',
  `images` tinyint(6) NOT NULL DEFAULT '0',
  `files` tinyint(6) NOT NULL DEFAULT '0',
  `mods` tinyint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `firstpid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastuid` int(11) unsigned NOT NULL DEFAULT '0',
  `lastpid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `lastpid` (`lastpid`),
  KEY `fid` (`fid`,`tid`),
  KEY `fid_2` (`fid`,`lastpid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_thread`
--

LOCK TABLES `bbs_thread` WRITE;
/*!40000 ALTER TABLE `bbs_thread` DISABLE KEYS */;
INSERT INTO `bbs_thread` VALUES (1,1,0,1,1075840330,'xihuan.ai,大家觉得这个米如何',1517080113,1517080113,27,0,0,0,0,0,1,0,1),(1,2,1,2,1075840330,'AI每日注册量播报',1517118402,1517406554,57,2,0,0,0,0,2,2,7),(1,3,0,1,3746061025,'ai域名注册量破30000',1517158142,1517158142,34,0,0,0,0,0,3,0,3),(5,4,0,1,1032264778,'v.cool 1.5万',1517203692,1517203692,24,0,0,0,0,0,4,0,4),(8,5,0,1,1032264778,'8.help  1.5万',1517204077,1517204077,47,0,0,0,0,0,5,0,5),(9,6,0,1,1929248707,'出售 alimama.love',1517838522,1517838522,14,0,0,0,0,0,8,0,8),(9,7,0,5,1901172430,'.love后缀域名助力2018情人节，来一场爱的约会！约吗？  【.love域名总群 708338380】',1518418353,1518420798,101,2,1,0,0,0,9,1,11);
/*!40000 ALTER TABLE `bbs_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_thread_top`
--

DROP TABLE IF EXISTS `bbs_thread_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_thread_top` (
  `fid` smallint(6) NOT NULL DEFAULT '0',
  `tid` int(11) unsigned NOT NULL DEFAULT '0',
  `top` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`),
  KEY `top` (`top`,`tid`),
  KEY `fid` (`fid`,`top`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_thread_top`
--

LOCK TABLES `bbs_thread_top` WRITE;
/*!40000 ALTER TABLE `bbs_thread_top` DISABLE KEYS */;
INSERT INTO `bbs_thread_top` VALUES (1,2,1);
/*!40000 ALTER TABLE `bbs_thread_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_user`
--

DROP TABLE IF EXISTS `bbs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `gid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '用户组编号',
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱',
  `username` char(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` char(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `idnumber` char(19) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `password_sms` char(16) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(16) NOT NULL DEFAULT '' COMMENT '密码混杂',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `qq` char(15) NOT NULL DEFAULT '' COMMENT 'QQ',
  `threads` int(11) NOT NULL DEFAULT '0' COMMENT '发帖数',
  `posts` int(11) NOT NULL DEFAULT '0' COMMENT '回帖数',
  `credits` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `golds` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `rmbs` int(11) NOT NULL DEFAULT '0' COMMENT '人民币',
  `create_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时IP',
  `create_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `login_ip` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录时IP',
  `login_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `logins` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户最后更新图像时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_user`
--

LOCK TABLES `bbs_user` WRITE;
/*!40000 ALTER TABLE `bbs_user` DISABLE KEYS */;
INSERT INTO `bbs_user` VALUES (1,1,'wututa@163.com','admin','','','199e2aa5f4dc23f8ffaf463fe43ef271','','XBMC6KJXBSNRZ5HV','','',5,2,0,0,0,1075840330,1517078263,1032264778,1518420780,32,1517149699),(2,101,'xqnq2007@163.com','wang','','','602ca51f962cee75f32386c95a3c38d2','','YDAVPVQ98DWFMNSU','','',1,2,0,0,0,1075840330,1517118243,1929248707,1517835633,3,1517270363),(3,101,'xiwuta@163.com','xiwuta','','','18f834e16f1582e520fe30c88971c31b','','T739SUQFRWZVT6DB','','',0,0,0,0,0,3746061025,1517235264,3746061025,1517270131,2,1517235371),(4,101,'491325225@qq.com','491325225','','','dba4329792697e62543f3cb19573c36a','','ZX9JG2SGM3JX5VAF','','',0,0,0,0,0,1929248707,1517838824,1929248707,1517838824,1,1517838852),(5,101,'493385018@qq.com','yyy0752','','','4c435bab31d19b8992620656c10ba05f','','W2FGYEYCXC89B2PH','','',1,0,0,0,0,1901172430,1518417938,3074366661,1518485245,3,0);
/*!40000 ALTER TABLE `bbs_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bbs_user_open_plat`
--

DROP TABLE IF EXISTS `bbs_user_open_plat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bbs_user_open_plat` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `platid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '平台编号  0:本站 1:QQ 登录 2:微信登陆 3:支付宝登录 ',
  `openid` char(40) NOT NULL DEFAULT '' COMMENT '第三方唯一标识',
  PRIMARY KEY (`uid`),
  KEY `openid_platid` (`platid`,`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=8805 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs_user_open_plat`
--

LOCK TABLES `bbs_user_open_plat` WRITE;
/*!40000 ALTER TABLE `bbs_user_open_plat` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs_user_open_plat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-28 21:00:05
