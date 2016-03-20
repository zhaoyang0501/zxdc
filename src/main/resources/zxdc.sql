/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : zxdc

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2016-03-20 21:03:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer` (
  `id` bigint(20) NOT NULL auto_increment,
  `answer` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `question` bigint(20) default NULL,
  `survey` bigint(20) default NULL,
  `user` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_78e7uar6m6hy1r088h0yqn2kw` (`question`),
  KEY `FK_244x90ke4bynfdnhxkba42e7e` (`survey`),
  KEY `FK_hy2bjdjyj1kx5ilnr7enhm6f1` (`user`),
  CONSTRAINT `FK_244x90ke4bynfdnhxkba42e7e` FOREIGN KEY (`survey`) REFERENCES `t_survey` (`id`),
  CONSTRAINT `FK_78e7uar6m6hy1r088h0yqn2kw` FOREIGN KEY (`question`) REFERENCES `t_question` (`id`),
  CONSTRAINT `FK_hy2bjdjyj1kx5ilnr7enhm6f1` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_answer
-- ----------------------------
INSERT INTO `t_answer` VALUES ('1', 'a', '2016-03-16 23:42:39', '7', '3', '2');
INSERT INTO `t_answer` VALUES ('2', 'a', '2016-03-16 23:42:39', '8', '3', '2');
INSERT INTO `t_answer` VALUES ('3', 'a', '2016-03-16 23:42:39', '12', '3', '2');
INSERT INTO `t_answer` VALUES ('4', 'a', '2016-03-16 23:42:39', '16', '3', '2');
INSERT INTO `t_answer` VALUES ('5', 'a', '2016-03-16 23:42:39', '18', '3', '2');
INSERT INTO `t_answer` VALUES ('6', 'a', '2016-03-16 23:42:39', '19', '3', '2');
INSERT INTO `t_answer` VALUES ('7', 'a', '2016-03-16 23:42:39', '20', '3', '2');
INSERT INTO `t_answer` VALUES ('8', 'b', '2016-03-16 23:49:44', '7', '3', '4');
INSERT INTO `t_answer` VALUES ('9', 'c', '2016-03-16 23:49:44', '8', '3', '4');
INSERT INTO `t_answer` VALUES ('10', 'c', '2016-03-16 23:49:44', '12', '3', '4');
INSERT INTO `t_answer` VALUES ('11', 'c', '2016-03-16 23:49:44', '16', '3', '4');
INSERT INTO `t_answer` VALUES ('12', 'c', '2016-03-16 23:49:44', '18', '3', '4');
INSERT INTO `t_answer` VALUES ('13', 'c', '2016-03-16 23:49:44', '19', '3', '4');
INSERT INTO `t_answer` VALUES ('14', 'b', '2016-03-16 23:49:44', '20', '3', '4');
INSERT INTO `t_answer` VALUES ('15', 'b', '2016-03-20 18:41:49', '3', '4', '2');
INSERT INTO `t_answer` VALUES ('16', 'b', '2016-03-20 18:41:49', '10', '4', '2');
INSERT INTO `t_answer` VALUES ('17', 'b', '2016-03-20 18:41:49', '13', '4', '2');
INSERT INTO `t_answer` VALUES ('18', 'b', '2016-03-20 18:41:49', '14', '4', '2');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` bigint(20) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `name` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` bigint(20) NOT NULL auto_increment,
  `comefrom` varchar(255) default NULL,
  `context` text,
  `create_date` datetime default NULL,
  `title` varchar(255) default NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '4', '<p>4</p>', '2016-03-15 21:49:18', '34', null);
INSERT INTO `t_news` VALUES ('2', '12312', '<p>123123</p>', '2016-03-15 21:54:57', '123213', null);
INSERT INTO `t_news` VALUES ('3', '管理员', '<p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">如何在这个复杂的环境里自处？以怎样的行为习惯适应或者对抗这个时代的新科技、新消费方式、新社交模式？又以怎样的态度面对或背对这个环境？是摆在所有年轻人面前的问题。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">《城市画报》创刊 16 年来，持续记录着一代又一代青年人的经历、生活方式、态度选择。今年，我们联合腾讯问卷推出“2015 中国青年生活形态调查报告”，再次用数据勾勒出 2015 年这个时间刻度上的青年群像。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">“2015 中国青年生活形态调查”在 4186 个青年中展开，覆盖全国 273 座城市，其中 90 后受访者占到多半（66%）。所以这是一份偏年轻的青年调查报告，它或许无法囊括全年龄段的青年，但至少反映了以 90 后为主体的新一代年轻人的生活形态。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164019.PNG\" src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164019.PNG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 700px; height: 641px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">从问卷调查的数据里，我们梳理出了2015 年以下六个方面年轻人的生活趋势。</p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">一、移动互联网行为</h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">愈见严重的手机依赖症。</strong>他们习惯使用手机购物、阅读及订制服务，也乐于接受新媒体营销。比如已经有 9 成年轻人使用手机购物，一位受访者称，手机里的打车软件成了他最离不开的 App，“每天打开多次”。同时，已经有 3 成年轻人离开手机会感到孤独。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">深度参与虚拟社交。</strong>虚拟社交网络已经覆盖 96% 的年轻人，他们原创热情很高，比例过半。一位 90 后受访者说：“对社会事件发表转发、评论并不能改变什么，我喜欢看到或想到某个有意思的东西，（原创）发出来逗大家一乐。”但或许是因为社交生活向线上转移，越来越多的年轻人养了宠物。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164540.JPG\" src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164540.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 700px; height: 1349px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">二、社会参与</h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">极大的创业兴趣。</strong>中关村上半年平均每天诞生 130 家企业，在“大众创业、万众创新”热潮之下，有 7 成年轻人开始考虑创业的可能，当然，他们中的大多数还没有行动，但这是一股不容小觑的潜力。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">更懂得利用互联网。</strong>除了使用移动互联网更便利地安排生活，这一代年轻人更懂得用互联网开拓自己的事业、视野，以及通过互联网维护自己的权益。一位受访医生在今年发现，利用自己的业余时间提供线上医患咨询，可以帮到很多贫困山区患者。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164656.JPG\" src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226164656.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 700px; height: 1398px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">三、日常休闲</h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">文艺爱好成为生活日常。</strong>看书、看电影一直是年轻人最经常的休闲方式，尤其是看电影，远远高出打游戏 3 个百分点，一大波文艺青年正在攻占这个时代。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226165055.JPG\" src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226165055.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 700px; height: 1579px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">四、理财消费</h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">热爱电子、数字产品。</strong>数码产品是大多数年轻人消费谱系里比例最多的，这个朝气蓬勃的产业总是有新玩意儿出现，另一方面仍然是因为移动互联网的深入。<br style=\"background-repeat: no-repeat;\"/></p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226165143.JPG\" src=\"http://cdn.ur.qq.com/uploadImages/2016-02-26/20160226165143.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 700px; height: 1446px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">五、性爱家庭<br style=\"background-repeat: no-repeat;\"/></h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">与父母关系和谐。</strong>接近一半的访问者表示和父母的关系“越变越好”和“没怎么变”，&nbsp;不过，00 后中“越变越差”的比例偏高，&nbsp;可能与他们正处在叛逆期有关。<br style=\"background-repeat: no-repeat;\"/></p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"color: rgb(255, 97, 35); background-repeat: no-repeat;\">年龄越大越会玩。</strong>在有性伴侣的受访青年中，超过9成是 1~2 个性伴侣，仍是主流。接近八成的受访青年未使用过情趣用品，但随着年龄的增加，使用情趣用品的比例也在增加。<br style=\"background-repeat: no-repeat;\"/></p><p><br/></p>', '2016-03-15 22:07:44', '2015年中国青年生活形态调查报告', null);
INSERT INTO `t_news` VALUES ('4', '管理员', '<p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">微博上的10字辞职信“世界这么大，我想去看看”火了，顾老师是如此一针见血地说出了我们的心声——想要摆脱平时枯燥的生活，想去外面看看多彩多样的世界，开始一段寻找希望与发现自我的旅程。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">从前，“一场说走就走的旅行”也许很难实现，但如今，在这个移动互联网的时代，各种旅游类APP都让“一场说走就走的旅行”成为可能。随着智能手机的不断普及，移动互联网生活应用场景不断丰富，再加上旅游本身位置移动的特点和人们对新鲜人文地理的探索、记录和分享的愿望，都给旅游类的APP带来了巨大的市场。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">十一前夕，《互联网周刊》联合互联网大数据服务商GEO集奥聚合，针对2015上半年旅游用户数据进行采样、处理和解读，希望通过这篇文章，让外出旅游的大家能够利用移动互联网，让旅途更加轻松有趣。</p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\">要出行，首先攻略要查好，酒店机票要订好</strong></h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">说到互联网+旅游，你可能首先想到的是PC端一枝独秀的携程旅行网，但随着近年来智能手机的普及，人们互联网生活的重心逐渐从PC端转移到了移动端。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">在下图中可以看出，2015年上半年自1月开始，移动端旅游用户活跃量就已超过PC端，并有差距逐步拉大的趋势，用户移动端使用习惯已逐步成型，因此在线旅游企业也在加大力度向移动端转移，以争夺更多的客户资源。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103155937.JPG\" src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103155937.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin-top: 15px !important; margin-right: 40px; margin-bottom: 25px !important; margin-left: 40px; width: 630px; height: 417px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">数据显示，在移动端用户中，去哪儿旅行拥有更高的用户活跃度，与携程旅行共同牢牢占据在线旅游行业领先地位，同程旅游、阿里旅行、途牛旅游等也位居前列。这类旅游APP包含了酒店、机票、火车票、门票、租车、美食等多种服务，旅游所涉及的吃、住、行、游、购、娱一应俱全，让用户利用碎片化的时间，动动手指就可以在移动端定制自己的旅游出行计划。另有数据显示，晚间20点到22点是旅游类APP的使用高峰期。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103160043.JPG\" src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103160043.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 630px; height: 417px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">现在的年轻群体，多倾向于自助游，所以像穷游、旅游攻略（现蚂蜂窝自由行）等重点放在旅游攻略的APP也越来越受到年轻群体的喜爱，占据了一定的市场份额。而对于攻略、指南、游记类的APP来说，那些容易上手的、内容全、内容清晰明了、与实际场景匹配度高、内容新鲜度高、阅读体验好的APP更受到用户们的欢迎。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><img alt=\"\" data-cke-saved-src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103160057.JPG\" src=\"http://wj.qq.com/uploadImages/2015-11-03/20151103160057.JPG\" style=\"border: 0px; max-width: 100%; box-shadow: rgba(179, 179, 179, 0.701961) 0px 0px 3px 3px; margin: 15px 0px 25px !important; width: 630px; height: 519px; background-repeat: no-repeat;\"/><br style=\"background-repeat: no-repeat;\"/></p><h3 style=\"font-size: 20px; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\"><strong style=\"background-repeat: no-repeat;\">走到哪吃到哪，不认路有地图</strong></h3><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">出去旅游的目的，除了发现各地的人文风情，观赏自然风光，还要尝遍天下美食。因此，除了移动旅游平台APP，餐饮类APP也受到旅游人群的喜爱，其中团购类最受用户青睐。能为用户提供美食地图以及优惠价格的美团和大众点评，分别获得42.3%和37.5%的用户覆盖率。这类APP能够让大家在不熟悉的地方，循着由群众雪亮的双眼和挑剔的嘴巴所构成的美食地图，找到好吃的、有特色的小店，再以优惠的价格团购，根本不用怕吃不到正宗的当地美食。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">“我在哪儿？”、“去哪里？”、“怎么去？”，出门在外，最重要的当然就是地图了。新到一处，分不清东南西北是正常的，纸质地图查找又很麻烦。而地图APP则大大方便了旅游者们，精准的定位，让无论是路径规划还是餐厅酒店查找，都能够及时而准确地解决用户的需求。</p><p style=\"margin-top: 14px; margin-bottom: 14px; padding: 0px; font-size: 14px; line-height: 24px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: tahoma, arial, &#39;hiragino sans gb&#39;, &#39;microsoft yahei&#39;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); background-repeat: no-repeat;\">而现在的地图APP也越来越多样化，除了路径规划，餐厅推荐、打车、外卖等功能也逐渐被聚合在地图平台之上。报告显示，在地图导航类APP市场中，像百度地图这样的地图类APP因功能其多样化而占据大部分市场，覆盖率达到了40.4%，高德地图以22.0%的份额位居第二。</p><p><br/></p>', '2016-03-15 22:08:52', 'GEO：2015上半年移动旅游用户数据分析', null);

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `id` bigint(20) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `name` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES ('3', '2016-03-16 22:32:57', '您进入公司多长时间了?', '少于3个月', '3-6个月', '6个月以上，3年以下', '3年及以上', null);
INSERT INTO `t_question` VALUES ('7', '2016-03-16 22:33:38', '您目前的职位是？ ', '实习生', '助理工程师', '主任工程师', '专家', null);
INSERT INTO `t_question` VALUES ('8', '2016-03-16 22:35:02', '对于工作而言您认为哪些因素重要？', '企业文化', '工作环境', '同事关系', '薪酬与福利', null);
INSERT INTO `t_question` VALUES ('9', '2016-03-16 22:35:43', '您对“公司的文化氛围是轻松、融洽的”的同意程度是？', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('10', '2016-03-16 22:35:53', '您对“公司的各项管理制度能被良好的贯彻执行”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('11', '2016-03-16 22:36:01', '您对“公司奖惩制度是公正和公平的”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('12', '2016-03-16 22:36:09', '您对“公司鼓励员工提出改善建议并能得到及时反馈”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('13', '2016-03-16 22:36:19', '您对“工作中的违规事件和行为都能得到正确处理”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('14', '2016-03-16 22:36:30', '您对“公司的办公设备很齐全”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('15', '2016-03-16 22:36:37', '您对“公司的办公环境很干净”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('16', '2016-03-16 22:36:49', '您对“当我工作取得突出成绩时，能立即得到上级的表扬”的同意程度是？ ', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('17', '2016-03-16 22:37:00', '您对“直接上级会主动关心我的工作情绪和绩效”的同意程度是？', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('18', '2016-03-16 22:37:09', '您对“我的上级会提供给我必要的指导和协调”的同意程度是？', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('19', '2016-03-16 22:37:17', '您对“我们部门内部的职位设置、工作安排合理”的同意程度是？', '非常满意', '比较满意', '一般', '不满意', null);
INSERT INTO `t_question` VALUES ('20', '2016-03-16 22:37:31', '您对“我们部门内每个职位的分工和职责都很明确”的同意程度是？', '非常满意', '比较满意', '一般', '不满意', null);

-- ----------------------------
-- Table structure for t_survey
-- ----------------------------
DROP TABLE IF EXISTS `t_survey`;
CREATE TABLE `t_survey` (
  `id` bigint(20) NOT NULL auto_increment,
  `create_date` datetime default NULL,
  `foot` varchar(255) default NULL,
  `head` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_survey
-- ----------------------------
INSERT INTO `t_survey` VALUES ('3', '2016-03-16 22:37:58', '', '为了给您提供更好的服务，希望您能抽出几分钟时间，将您的感受和建议告诉我们，我们非常重视每位用户的宝贵意见，期待您的参与！现在我们就马上开始吧！', '员工满意度问卷');
INSERT INTO `t_survey` VALUES ('4', '2016-03-17 00:28:55', '', '欢迎大家参加', '就业情况调查');

-- ----------------------------
-- Table structure for t_survey_question
-- ----------------------------
DROP TABLE IF EXISTS `t_survey_question`;
CREATE TABLE `t_survey_question` (
  `s_id` bigint(20) NOT NULL,
  `q_id` bigint(20) NOT NULL,
  KEY `FK_1snpofbu6f82icxu75h8t1wnd` (`q_id`),
  KEY `FK_dxvxifwxshholftin9usp4nkr` (`s_id`),
  CONSTRAINT `FK_1snpofbu6f82icxu75h8t1wnd` FOREIGN KEY (`q_id`) REFERENCES `t_question` (`id`),
  CONSTRAINT `FK_dxvxifwxshholftin9usp4nkr` FOREIGN KEY (`s_id`) REFERENCES `t_survey` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_survey_question
-- ----------------------------
INSERT INTO `t_survey_question` VALUES ('3', '7');
INSERT INTO `t_survey_question` VALUES ('3', '8');
INSERT INTO `t_survey_question` VALUES ('3', '12');
INSERT INTO `t_survey_question` VALUES ('3', '16');
INSERT INTO `t_survey_question` VALUES ('3', '18');
INSERT INTO `t_survey_question` VALUES ('3', '19');
INSERT INTO `t_survey_question` VALUES ('3', '20');
INSERT INTO `t_survey_question` VALUES ('4', '10');
INSERT INTO `t_survey_question` VALUES ('4', '13');
INSERT INTO `t_survey_question` VALUES ('4', '14');
INSERT INTO `t_survey_question` VALUES ('4', '17');
INSERT INTO `t_survey_question` VALUES ('4', '15');
INSERT INTO `t_survey_question` VALUES ('4', '11');
INSERT INTO `t_survey_question` VALUES ('4', '15');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `age` int(11) default NULL,
  `create_date` datetime default NULL,
  `email` varchar(255) default NULL,
  `grade` varchar(255) default NULL,
  `level` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2', '', null, '2016-03-16 23:42:18', '', '', null, 'user1', '123456', '', 'user1');
INSERT INTO `t_user` VALUES ('3', '台湾XX街道1', null, '2016-03-17 00:27:11', 'zhaoyangjay@sina.com1', '中科院研究所1', null, 'user21', '123456', '137733192041', 'user2');
INSERT INTO `t_user` VALUES ('4', '台湾XX街道111', null, '2016-03-17 00:26:35', 'zhaoyangjay@sina.com', '中科院研究所', null, 'user4', '123456', '13773319204', 'user4');
INSERT INTO `t_user` VALUES ('5', '台湾XX街道111', '12312312', '2016-03-17 00:26:41', 'zhaoyangjay@sina.com', '中科院研究所', null, 'user4', '123456', '13773319204', 'user4');
