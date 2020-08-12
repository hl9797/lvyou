/*
Navicat MySQL Data Transfer

Source Server         : test1
Source Server Version : 50018
Source Host           : 127.0.0.1:3306
Source Database       : lvyou

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2019-11-14 11:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL COMMENT '账号',
  `password` varchar(255) default NULL COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for dianzan
-- ----------------------------
DROP TABLE IF EXISTS `dianzan`;
CREATE TABLE `dianzan` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL COMMENT '用户Id',
  `jingdan_id` int(11) default NULL COMMENT '景点id',
  `creattime` varchar(255) default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dianzan
-- ----------------------------
INSERT INTO `dianzan` VALUES ('1', '1', '5', '2019-09-19 09:28:38');

-- ----------------------------
-- Table structure for fankejilu
-- ----------------------------
DROP TABLE IF EXISTS `fankejilu`;
CREATE TABLE `fankejilu` (
  `id` int(11) NOT NULL,
  `shuliang` int(50) default NULL COMMENT '保存访问刷量',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fankejilu
-- ----------------------------
INSERT INTO `fankejilu` VALUES ('1', '12');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL COMMENT '用户id',
  `chenghu` varchar(255) default NULL COMMENT '称呼',
  `phone` varchar(255) default NULL COMMENT '手机号',
  `sex` varchar(255) default NULL COMMENT '性别',
  `xinxi` varchar(255) default NULL COMMENT '留言信息',
  `creattime` varchar(255) default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('14', '1', '5345', '5345', '男', '435435435', '2019-09-19 13:13:04');
INSERT INTO `liuyan` VALUES ('16', '1', 'dsafds', 'dsafds', '男', '阿斯蒂芬1', '2019-09-19 13:13:14');
INSERT INTO `liuyan` VALUES ('17', '1', '四大范德萨', '四大范德萨', '男', '撒旦法', '2019-09-19 13:14:06');

-- ----------------------------
-- Table structure for pinglun
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL COMMENT '用户id',
  `jindian_id` int(11) default NULL COMMENT '景点id',
  `details` varchar(255) default NULL COMMENT '评论信息',
  `creattime` varchar(255) default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', '1', '5', 'dgfgdfg给对方是个', '2019-09-22 15:36:37');
INSERT INTO `pinglun` VALUES ('2', '1', '5', '大法师刚发的施工的说法', '2019-09-22 15:36:41');
INSERT INTO `pinglun` VALUES ('3', '1', '5', '发的就是光华科技打发', '2019-09-22 15:36:44');
INSERT INTO `pinglun` VALUES ('4', '1', '5', '梵蒂冈的开始放假', '2019-09-22 15:36:48');
INSERT INTO `pinglun` VALUES ('5', '1', '5', '发的规划的开始放假公开', '2019-09-22 15:36:51');
INSERT INTO `pinglun` VALUES ('6', '1', '5', '第三方灌砂法', '2019-09-22 16:23:57');
INSERT INTO `pinglun` VALUES ('7', '1', '5', '打算范德萨', '2019-09-22 16:24:01');
INSERT INTO `pinglun` VALUES ('8', '1', '5', '衧', '2019-09-22 16:24:53');
INSERT INTO `pinglun` VALUES ('9', '1', '5', '111', '2019-09-22 16:30:07');
INSERT INTO `pinglun` VALUES ('10', '1', '5', '222', '2019-09-22 16:30:11');
INSERT INTO `pinglun` VALUES ('11', '1', '5', '444', '2019-09-22 16:30:15');
INSERT INTO `pinglun` VALUES ('12', '1', '5', '666', '2019-09-22 16:30:19');
INSERT INTO `pinglun` VALUES ('13', '1', '7', '43543', '2019-09-22 16:30:26');

-- ----------------------------
-- Table structure for scenic_spot
-- ----------------------------
DROP TABLE IF EXISTS `scenic_spot`;
CREATE TABLE `scenic_spot` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL COMMENT '景点名字',
  `yiji` varchar(255) default NULL COMMENT '省',
  `erji` varchar(255) default NULL COMMENT '市',
  `sanji` varchar(255) default NULL COMMENT '县',
  `jianjie` varchar(255) default NULL COMMENT '简介',
  `wenhua` varchar(255) default NULL COMMENT '文化',
  `lishi` varchar(255) default NULL COMMENT '历史',
  `mainadress` varchar(255) default NULL,
  `techangtu` varchar(255) default NULL COMMENT '特产图',
  `techang` varchar(255) default NULL COMMENT '特产信息',
  `jianjietu` varchar(255) default NULL COMMENT '简介图',
  `lishitu` varchar(255) default NULL COMMENT '历史图',
  `wenhuatu` varchar(255) default NULL COMMENT '文化图',
  `isremeng` int(20) default '0' COMMENT '0不热1热门',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenic_spot
-- ----------------------------
INSERT INTO `scenic_spot` VALUES ('1', '天安门', '广东', '广州市', '东山区', '天安门广场，位于北京市中心，地处北京市东城区东长安街，北起天安门，南至正阳门，东起中国国家博物馆，西至人民大会堂，南北长880米，东西宽500米，面积达44万平方米，可容纳100万人举行盛大集会，是世界上最大的城市广场。', '天安门广场记载了中国人民不屈不挠的革命精神和大无畏的英雄气概，五四运动、一二·九运动、五·二〇运动都在这里为中国现代革命史留下了浓重的色彩， [1]  同时还是无数重大政治、历史事件的发生地，是中国从衰落到崛起的历史见证', '广场地面全部由经过特殊工艺技术处理的浅色花岗岩条石铺成，中央矗立着人民英雄纪念碑和庄严肃穆的毛主席纪念堂，天安门两边是劳动人民文化宫和中山公园，与天安门浑然一体，共同构成天安门广场。1986年，天安门广场被评为“北京十六景”之一，景观名“天安丽日”。', null, '/images/commodity/images/1568811380479142.jpg', '2018年1月1日7时36分，天安门广场升国旗仪式，首次由人民解放军仪仗队和军乐团执行。 ', '/images/commodity/images/1568811380437002.jpg', '/images/commodity/images/1568811380458489.jpg', '/images/commodity/images/1568811380471830.jpg', '0');
INSERT INTO `scenic_spot` VALUES ('2', '武当山', '广东', '广州市', '东山区', '武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。位于湖北西北部十堰市丹江口市境内。东接闻名古城襄阳市，西靠车城十堰市 ，南望原始森林神农架，北临高峡平湖 丹江口水库。', '994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国重点文物保护单位” [2]  。2007年，武当山和长城、丽江、周庄等景区一起入选 “欧洲人最喜爱的中国十大景区”', '明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以“四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。', null, '/images/commodity/images/1568813153140461.jpg', '截至2013年，武当山有古建筑53处，建筑面积2.7万平方米，建筑遗址9处，占地面积20多万平方米，全山保存各类文物5035件。', '/images/commodity/images/1568813153115028.jpg', '/images/commodity/images/1568813153123031.jpg', '/images/commodity/images/1568813153133851.jpg', '0');
INSERT INTO `scenic_spot` VALUES ('3', '终南山', '广东', '广州市', '东山区', '南山又名太乙山、地肺山、中南山、周南山，简称南山，是“道文化” [1-2]  、“佛文化” [3-6]  、“孝文化 [7]  ”、“寿文化” [8-9]  、“钟馗文化” [10]  、“财神文化” [11]  的发祥圣地', '横跨蓝田县、长安区、鄠邑区、周至县等县区，绵延200余公里，雄峙在古城长安（西安）之南，成为长安城高大坚实的依托、雄伟壮丽的屏障。素有“仙都”、“洞天之冠”和“天下第一福地”的美称。 [12] ', '南山东起盛产美玉的西安市蓝田县最东端的杨家堡，西至周至县最西界的秦岭主峰太白山南梁梁脊，介于东经107°37′—109°49′、北纬33°41′—34°22′之间，东西长约230千米，最宽处55千米，最窄处15千米，总面积约4851平方千米', null, '/images/commodity/images/1568813237779431.jpg', '横跨蓝田县、长安区、鄠邑区、周至县等县区，绵延200余公里，雄峙在古城长安（西安）之南，成为长安城高大坚实的依托、雄伟壮丽的屏障。素有“仙都”、“洞天之冠”和“天下第一福地”的美称。 [12] ', '/images/commodity/images/1568813237715453.jpg', '/images/commodity/images/1568813237729423.jpg', '/images/commodity/images/1568813237757546.jpg', '0');
INSERT INTO `scenic_spot` VALUES ('4', '峨眉山', '广东', '广州市', '东山区', '眉山（Mount Emei）位于北纬30°附近，四川省西南部，四川盆地的西南边缘 [1]  ，是中国“四大佛教名山”之一，地势陡峭，风景秀丽，素有“峨眉天下秀”之称，山上的万佛顶最高，海拔3099米，高出峨眉平原2700多米', '峨眉山是普贤菩萨的道场 [6]  ，宗教文化特别是佛教文化构成了峨眉山历史文化的主体，所有的建筑、造像、法器以及礼仪、音乐、绘画等都展示出宗教文化的浓郁气息。', '峨眉山处于多种自然要素的交汇地区，区系成分复杂，生物种类丰富，特有物种繁多，保存有完整的亚热带植被体系，有植物3200多种，约占中国植物物种总数的1/10。峨眉山还是多种稀有动物的栖居地，动物种类达2300多种。', null, '/images/commodity/images/1568813335987828.jpg', '峨眉山为蚀余山，介于北纬29°16′-29°43′，东经103°10′-103°37′之间，为邛崃山南段余脉，自峨眉平原拔地而起，山体南北延伸，绵延23公里，面积约154平方公里', '/images/commodity/images/1568813335972515.jpg', '/images/commodity/images/1568813335978890.jpg', '/images/commodity/images/1568813335982460.jpg', '0');
INSERT INTO `scenic_spot` VALUES ('5', '天安门', '湖南', '长沙市', '长沙县', '天安门广场，位于北京市中心，地处北京市东城区东长安街，北起天安门，南至正阳门，东起中国国家博物馆，西至人民大会堂，南北长880米，东西宽500米，面积达44万平方米，可容纳100万人举行盛大集会，是世界上最大的城市广场', '天安门广场记载了中国人民不屈不挠的革命精神和大无畏的英雄气概，五四运动、一二·九运动、五·二〇运动都在这里为中国现代革命史留下了浓重的色彩， [1]  同时还是无数重大政治、历史事件的发生地，是中国从衰落到崛起的历史见证', '天安门广场记载了中国人民不屈不挠的革命精神和大无畏的英雄气概，五四运动、一二·九运动、五·二〇运动都在这里为中国现代革命史留下了浓重的色彩， [1]  同时还是无数重大政治、历史事件的发生地，是中国从衰落到崛起的历史见证', null, '/images/commodity/images/1568816754900364.jpg', '天安门广场记载了中国人民不屈不挠的革命精神和大无畏的英雄气概，五四运动、一二·九运动、五·二〇运动都在这里为中国现代革命史留下了浓重的色彩， [1]  同时还是无数重大政治、历史事件的发生地，是中国从衰落到崛起的历史见证', '/images/commodity/images/1568816754884388.jpg', '/images/commodity/images/1568816754889748.jpg', '/images/commodity/images/1568816754893087.jpg', '1');
INSERT INTO `scenic_spot` VALUES ('6', '武当山', '湖南', '长沙市', '长沙县', '饱经500余年风雨沧桑的天安门广场是当今世界上最大的城市广场。它坐落在中华人民共和国首都北京的市中心，故宫的南侧，与天安门广场隔长安街相望，是明、清两代皇城的大门。', '饱经500余年风雨沧桑的天安门广场是当今世界上最大的城市广场。它坐落在中华人民共和国首都北京的市中心，故宫的南侧，与天安门广场隔长安街相望，是明、清两代皇城的大门。', '饱经500余年风雨沧桑的天安门广场是当今世界上最大的城市广场。它坐落在中华人民共和国首都北京的市中心，故宫的南侧，与天安门广场隔长安街相望，是明、清两代皇城的大门。', null, '/images/commodity/images/1568816798179090.jpg', '饱经500余年风雨沧桑的天安门广场是当今世界上最大的城市广场。它坐落在中华人民共和国首都北京的市中心，故宫的南侧，与天安门广场隔长安街相望，是明、清两代皇城的大门。', '/images/commodity/images/1568816798159538.jpg', '/images/commodity/images/1568816798165349.jpg', '/images/commodity/images/1568816798172586.jpg', '1');
INSERT INTO `scenic_spot` VALUES ('7', '龙泉寺', '湖南', '长沙市', '长沙县', '龙泉寺位于位于北京市海淀区西北边，凤凰岭自然风景区内，座落在北京西山凤凰岭山脚下，是一座汉传佛教寺院，始建于辽朝应历初年。山门前两株遒劲的翠柏有六百多年，寺内还有两棵粗壮挺拔的龙泉寺位', '龙泉寺位于位于北京市海淀区西北边，凤凰岭自然风景区内，座落在北京西山凤凰岭山脚下，是一座汉传佛教寺院，始建于辽朝应历初年。山门前两株遒劲的翠柏有六百多年，寺内还有两棵粗壮挺拔的银杏树和两株古柏，', '龙泉寺位于位于北京市海淀区西北边，凤凰岭自然风景区内，座落在北京西山凤凰岭山脚下，是一座汉传佛教寺院，始建于辽朝应历初年。山门前两株遒劲的翠柏有六百多年，寺内还有两棵粗壮挺拔的银杏树和两株古柏，', null, '/images/commodity/images/1568816849813133.jpg', '龙泉寺位于位于北京市海淀区西北边，凤凰岭自然风景区内，座落在北京西山凤凰岭山脚下，是一座汉传佛教寺院，始建于辽朝应历初年。山门前两株遒劲的翠柏有六百多年，寺内还有两棵粗壮挺拔的银杏树和两株古柏，', '/images/commodity/images/1568816849796863.jpg', '/images/commodity/images/1568816849803533.jpg', '/images/commodity/images/1568816849808207.jpg', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL auto_increment,
  `username` varchar(255) default NULL COMMENT '用户账户',
  `password` varchar(255) default NULL COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123456', '123456');
INSERT INTO `user` VALUES ('2', '222222', '222222');
INSERT INTO `user` VALUES ('3', '54645', '54654');
INSERT INTO `user` VALUES ('4', '45645d', '45645');
INSERT INTO `user` VALUES ('7', '444444444444', '44444444444');
INSERT INTO `user` VALUES ('8', 'tttttt', 'ttttttttttt');
INSERT INTO `user` VALUES ('9', '54645645', '456456');
INSERT INTO `user` VALUES ('10', '5465468645', '54654654');
INSERT INTO `user` VALUES ('11', '45654654', '456546');
INSERT INTO `user` VALUES ('12', 'gfh', 'fghgf');
INSERT INTO `user` VALUES ('13', 'dfgdfsg', 'fdsg');
INSERT INTO `user` VALUES ('15', 'sdfgsr', 'fdsgfd');
INSERT INTO `user` VALUES ('16', 'sfdgfdsg', 'dsfgfds');
INSERT INTO `user` VALUES ('17', 'dsfgfds', 'gfdsgfd');
INSERT INTO `user` VALUES ('18', 'fdgfdsg', 'fdsgdfs');
INSERT INTO `user` VALUES ('19', 'fdsgfdsg', 'sdffgfdsg');
INSERT INTO `user` VALUES ('20', 'sfdgfdsg', 'fdsgfdsg');
INSERT INTO `user` VALUES ('21', 'dsfgdfsgfds', 'gfdsgfds');
INSERT INTO `user` VALUES ('22', 'fdsgfdsg', 'fdsg');
