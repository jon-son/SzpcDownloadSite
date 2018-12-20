/*
MySQL Data Transfer
Source Host: 172.16.179.177 
Source Database: SzpcDownloadSite
Target Host: 172.16.179.177 
Target Database: SzpcDownloadSite
Date: 2018/11/15 16:21:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for activity
-- ----------------------------
CREATE TABLE `activity` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `local` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for download
-- ----------------------------
CREATE TABLE `download` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `path` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
CREATE TABLE `recruit` (
  `id` char(255) NOT NULL,
  `name` char(255) NOT NULL,
  `username` char(255) NOT NULL,
  `local` char(255) NOT NULL,
  `type` char(255) NOT NULL,
  `class` char(255) NOT NULL,
  `time` char(255) NOT NULL,
  `img` char(255) NOT NULL,
  `abstract` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `user_id` char(255) NOT NULL,
  `passwd` char(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `activity` VALUES ('admin1527651514', 'è®²åº§', 'admin', 'æ•™å­¦æ¥¼', '1', 'lecture', '2018-05-10 00:00:00', 'Ac1.jpg', 'è®²åº§');
INSERT INTO `download` VALUES ('admin1527647535', 'Windows7/64ä½ä¸‹è½½åœ°å€', 'admin', 'https://pan.baidu.com/s/1pMS5iKb', '0', 'gho', 'Ac1.jpg', 'å¯†ç ï¼šf3ja\r\nå®‰è£…æ­¤ç³»ç»Ÿå‰éœ€åˆ¶ä½œå¥½è£…æœºç‰ˆUç›˜å¯åŠ¨ç›˜ã€‚\r\n');
INSERT INTO `download` VALUES ('admin1527647583', 'Windows7/32ä½ä¸‹è½½åœ°å€', 'admin', 'https://pan.baidu.com/s/1sngEFyX', '0', 'gho', 'Ac2.jpg', 'å¯†ç ï¼šyfr6\r\nå®‰è£…æ­¤ç³»ç»Ÿå‰éœ€åˆ¶ä½œå¥½è£…æœºç‰ˆUç›˜å¯åŠ¨ç›˜ã€‚\r\n');
INSERT INTO `download` VALUES ('admin1527647603', 'ç³»ç»Ÿæ¿€æ´»å·¥å…·ï¼Œç½‘å¡é©±åŠ¨ï¼Œè§£åŽ‹è½¯ä»¶å®‰è£…åŒ…', 'admin', 'https://pan.baidu.com/s/1pMZqZe7', '0', 'gho', 'Ac3.jpg', 'å¯†ç ï¼šzzmp\r\nå®‰è£…æ­¤ç³»ç»Ÿå‰éœ€åˆ¶ä½œå¥½è£…æœºç‰ˆUç›˜å¯åŠ¨ç›˜ã€‚\r\n');
INSERT INTO `download` VALUES ('admin1527647624', 'è£…æœºç‰ˆUç›˜å¯åŠ¨ç›˜å·¥å…·ä¸‹è½½åœ°å€', 'admin', 'https://pan.baidu.com/s/1mjDIyPa', '0', 'gho', 'Ac4.jpg', 'å¯†ç : 635h\r\nå‡†å¤‡å·¥ä½œï¼š\r\nâ‘  ä¸‹è½½Uç›˜å¯åŠ¨åˆ¶ä½œå·¥å…·å®‰è£…åˆ°ç”µè„‘ä¸Šï¼›\r\nâ‘¡ å‡†å¤‡ä¸€ä¸ªå®¹é‡åœ¨4Gä»¥ä¸Šå¹¶èƒ½å¤Ÿæ­£å¸¸ä½¿ç”¨çš„Uç›˜ï¼›\r\nâ‘¢åˆ¶ä½œå¯åŠ¨ç›˜åŽåŽŸUç›˜æ•°æ®ä¼šæ ¼å¼åŒ–ï¼Œé‡è¦æ•°æ®è¯·è‡ªè¡Œå¤‡ä»½ã€‚ \r\n');
INSERT INTO `download` VALUES ('admin1527647641', 'Windows10 /64ä½ä¼ä¸šç‰ˆä¸‹è½½åœ°å€', 'admin', ' https://pan.baidu.com/s/1i7nagF7', '0', 'gho', 'Ac5.jpg', 'å¯†ç : qkpi\r\nå®‰è£…æ­¤ç³»ç»Ÿå‰éœ€åˆ¶ä½œå¥½è£…æœºç‰ˆUç›˜å¯åŠ¨ç›˜\r\n');
INSERT INTO `download` VALUES ('admin1527647665', 'office2016ï¼ˆ32/64ä½ï¼‰è½¯ä»¶ä¸‹è½½åœ°å€', 'admin', 'https://pan.baidu.com/s/1pLWtipd', '1', 'software', 'Ad1.jpg', 'å¯†ç ï¼šzanb\r\nOffice 2016æ˜¯å¾®è½¯çš„ä¸€ä¸ªåºžå¤§çš„åŠžå…¬è½¯ä»¶é›†åˆï¼Œå…¶ä¸­åŒ…æ‹¬äº†Wordã€Excelã€PowerPointã€OneNoteã€Outlookã€Skypeã€Projectã€Visioä»¥åŠPublisherç­‰ç»„ä»¶å’ŒæœåŠ¡ã€‚\r\n');
INSERT INTO `download` VALUES ('admin1527647682', 'Photoshop CS6ï¼ˆ32/64ä½ï¼‰ä¸‹è½½åœ°å€', 'admin', 'http://pan.baidu.com/s/1c1LyU32', '1', 'software', 'Ad2.jpg', 'å¯†ç ï¼šrrg9\r\nPhotoshopä¸»è¦å¤„ç†ä»¥åƒç´ æ‰€æž„æˆçš„æ•°å­—å›¾åƒã€‚ä½¿ç”¨å…¶ä¼—å¤šçš„ç¼–ä¿®ä¸Žç»˜å›¾å·¥å…·ï¼Œå¯ä»¥æœ‰æ•ˆåœ°è¿›è¡Œå›¾ç‰‡ç¼–è¾‘å·¥ä½œã€‚PSæœ‰å¾ˆå¤šåŠŸèƒ½ï¼Œåœ¨å›¾åƒã€å›¾å½¢ã€æ–‡å­—ã€è§†é¢‘ã€å‡ºç‰ˆç­‰å„æ–¹é¢éƒ½æœ‰æ¶‰åŠã€‚ \r\n');
INSERT INTO `download` VALUES ('admin1527647808', 'Proe5.0  64ä½è½¯ä»¶ä¸‹è½½åœ°å€', 'admin', 'http://pan.baidu.com/s/1jIfSMI6', '1', 'software', 'Ad4.jpg', 'å¯†ç ï¼š4vur\r\nProEWildfire5.0ç ´è§£ç‰ˆæ˜¯ä¸€æ¬¾åšäº§å“è®¾è®¡éžå¸¸å¥½çš„è½¯ä»¶ï¼Œç”±è®¾è®¡è‡³ç”Ÿäº§çš„æœºæ¢°è‡ªåŠ¨åŒ–è½¯ä»¶ã€‚\r\n');
INSERT INTO `download` VALUES ('admin1527647896', 'Premiere Pro CC2018/64ä½ä¸‹è½½åœ°å€', 'admin', 'https://pan.baidu.com/s/1qXCn8i4', '1', 'software', 'Ad5.jpg', 'å¯†ç ï¼šewgg');
INSERT INTO `download` VALUES ('admin1527647956', 'ç§»åŠ¨webå¼€å‘ä¸Žé€‚é…', 'admin', 'https://www.imooc.com/video/16490', '1', 'vedio', 'Ae1.jpg', 'ç§»åŠ¨webå¼€å‘é€‚é…çš„æ–¹æ¡ˆæœ‰è®¸å¤šï¼Œç„¶è€Œæœ€å¥½çš„æ–¹æ¡ˆä¸€å®šè¦æŽŒæ¡ã€‚æœ¬è¯¾ç¨‹ä¸»è¦è®²è§£ç§»åŠ¨webå¼€å‘ä¸­å¸¸è§çš„é€‚é…æ–¹æ³•ï¼Œç€é‡è®²è§£ä½¿ç”¨remæ–¹æ¡ˆçš„åŽŸç†å’Œä½¿ç”¨æ–¹æ³•ï¼Œ');
INSERT INTO `download` VALUES ('admin1527647980', 'csså®šä½ position', 'admin', 'https://www.imooc.com/video/16322', '1', 'vedio', 'Ae2.jpg', 'æœ¬è¯¾ç¨‹ï¼Œå°†å¸¦é¢†å¤§å®¶äº†è§£ä¸€ä¸‹å®šä½çš„çŸ¥è¯†ï¼Œæ•™å¤§å®¶å¦‚ä½•é€šè¿‡å®šä½æ¥è¿›è¡Œå¸ƒå±€ã€‚');
INSERT INTO `download` VALUES ('admin1527648081', 'åŸºäºŽwebsocketçš„ç«æ‹¼ä¿„ç½—æ–¯ï¼ˆå‡çº§ç‰ˆï¼‰', 'admin', 'https://www.imooc.com/video/15621', '1', 'vedio', 'Ae3.jpg', 'æœ¬è¯¾ç¨‹æ˜¯åŸºäºŽwebsocketçš„ç«æ‹¼ä¿„ç½—æ–¯çš„å‡çº§ç‰ˆæœ¬ï¼Œè¯¾ç¨‹ä¸­åœ¨å‰ä¸¤ä¸ªè¯¾çš„åŸºç¡€ä¸Šå®žçŽ°äº†ç”¨ä¸¤ä¸ªæµè§ˆå™¨å¯¹æˆ˜æ¨¡å¼ï¼Œå®Œæ•´çš„å®žçŽ°äº†æ¸¸æˆçš„è¿‡ç¨‹ã€‚');
INSERT INTO `download` VALUES ('admin1527648730', 'Handlebarsæ¨¡æ¿å¼•æ“Ž', 'admin', 'https://www.imooc.com/video/15280', '0', 'vedio', 'Ae5.jpg', 'æœ¬è¯¾ç¨‹ä»‹ç»äº†Handlebars.jsæ¸²æŸ“é¡µé¢çš„å¸¸ç”¨æ–¹å¼ï¼Œå¦‚#eachã€#ifç­‰ï¼Œä»¥åŠåœ¨ä½¿ç”¨Handlebars.jsæ¸²æŸ“é¡µé¢æ—¶çš„å†™ä½œæŠ€å·§ï¼Œä¸ä»…æœ‰æ€æƒ³çš„å¼•å¯¼ï¼Œæ›´æœ‰ä»£ç çš„ä¼˜åŒ–ã€‚');
INSERT INTO `download` VALUES ('wwy1527654934', 'word', 'wwy', 'www.baidu.com', '0', 'ide', 'asdqwe.jpg', 'aaaaa');
INSERT INTO `download` VALUES ('xiaowenge1527639774', 'X-code', 'xiaowenge', 'é“¾æŽ¥ï¼šhttps://pan.baidu.com/s/1TWjQ-ivBuAbz_0Hvo9_8lQ å¯†ç ï¼ši16f', '0', 'devlop_environment', 'x-code.jpg', 'IOSå¼€å‘å…·å¤‡ç¥žå™¨');
INSERT INTO `download` VALUES ('xiaowenge1527639837', 'å®‰å“å¼€å‘çŽ¯å¢ƒ', 'xiaowenge', 'é“¾æŽ¥ï¼šhttps://pan.baidu.com/s/1TWjQ-ivBuAbz_0Hvo9_8lQ', '0', 'devlop_environment', 'Android.jpg', 'å®‰å“å¼€å‘å¿…å¤‡ç¥žå™¨ã€‚');
INSERT INTO `download` VALUES ('xiaowenge1527639923', 'Jave', 'xiaowenge', 'é“¾æŽ¥ï¼šhttps://pan.baidu.com/s/1TWjQ-ivBuAbz_0Hvo9_8lQ', '0', 'devlop_environment', 'Java.gif', 'Javaèœé¸Ÿåˆ°è€é¸Ÿå¿…ä¿®ç‚¼ä¹‹åœ°');
INSERT INTO `download` VALUES ('xiaowenge1527640125', 'WinXP', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '0', 'gho', 'win XP.jpg', 'å¾®è½¯æ—©æœŸç³»ç»Ÿï¼Œå·²ç»outäº†');
INSERT INTO `download` VALUES ('xiaowenge1527640182', 'Win8', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '1', 'gho', 'win8.jpg', 'Windows 8æ˜¯ç¾Žå›½å¾®è½¯å¼€å‘çš„æ–°ä¸€ä»£æ“ä½œç³»ç»Ÿï¼ŒWindows 8å…±æœ‰4ä¸ªå‘è¡Œç‰ˆæœ¬ï¼Œåˆ†åˆ«é¢å‘ä¸åŒç”¨æˆ·å’Œè®¾å¤‡ã€‚');
INSERT INTO `download` VALUES ('xiaowenge1527640296', 'Win10', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '0', 'gho', 'win10.jpg', 'indows 10æ˜¯ç¾Žå›½å¾®è½¯å…¬å¸ç ”å‘çš„è·¨å¹³å°åŠè®¾å¤‡åº”ç”¨çš„æ“ä½œç³»ç»Ÿã€‚æ˜¯å¾®è½¯å‘å¸ƒçš„æœ€åŽä¸€ä¸ªç‹¬ç«‹Windowsç‰ˆæœ¬ã€‚2014å¹´10æœˆ1æ—¥ï¼Œå¾®è½¯åœ¨æ–°å“å‘å¸ƒä¼šä¸Šï¼Œå¯¹å¤–å±•ç¤ºäº†è¯¥ç³»ç»Ÿã€‚');
INSERT INTO `download` VALUES ('xiaowenge1527643543', 'office365', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '1', 'software', 'office365.jpg', ' \r\nOffice 365æ˜¯å¾®è½¯å¸¦ç»™æ‰€æœ‰ä¼ä¸šæœ€ä½³ç”Ÿäº§åŠ›å’Œé«˜æ•ˆååŒçš„é«˜ç«¯äº‘æœåŠ¡ï¼Œæ˜¯å¾®è½¯å…¬å¸åŸºäºŽäº‘å¹³å°çš„åº”ç”¨å¥—ä»¶ï¼Œä¾‹å¦‚Exchangeé‚®ä»¶æœåŠ¡å™¨ã€SharePointé—¨æˆ·ã€Lyncå³æ—¶é€šè®¯å·¥å…·åŠYammerã€‚');
INSERT INTO `download` VALUES ('xiaowenge1527643910', 'Office2016', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '1', 'software', 'office2016.jpg', 'Office2016æ˜¯ç›®å‰å¾®è½¯æœ€æ–°çš„åŠžå…¬è½¯ä»¶ï¼Œæ¸…æ–°è„±ä¿—');
INSERT INTO `download` VALUES ('xiaowenge1527643971', 'Office2010', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '1', 'software', 'office2010.jpg', 'Office2010æ˜¯å¾®è½¯æ—©æœŸå¼€å‘çš„åŠžå…¬è½¯ä»¶');
INSERT INTO `download` VALUES ('xiaowenge1527644193', 'æŠ“å¨ƒå¼€å‘å·¥å…·', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '0', 'ide', 'Java.gif', 'Javaå¼€å‘å¿…å¤‡');
INSERT INTO `download` VALUES ('xiaowenge1527644343', 'å–œé©¬æ‹‰é›…', 'xiaowenge', 'https://pan.baidu.com/s/1P8EySJgBE6EGW9b422yBoA', '1', 'software', 'ximalaya.jpg', 'FMæ˜¯å›½å†…éŸ³é¢‘åˆ†äº«å¹³å°ï¼Œ2013å¹´3æœˆæ‰‹æœºå®¢æˆ·ç«¯ä¸Šçº¿ï¼Œä¸¤å¹´å¤šæ—¶é—´æ‰‹æœºç”¨æˆ·è§„æ¨¡å·²çªç ´2äº¿ï¼Œæˆä¸ºå›½å†…å‘å±•æœ€å¿«ã€è§„æ¨¡æœ€å¤§çš„åœ¨çº¿ç§»åŠ¨éŸ³é¢‘åˆ†äº«å¹³å°');
INSERT INTO `download` VALUES ('xiaowenge1527645948', 'ç§»åŠ¨webå¼€å‘ä¸Žé€‚é…', 'xiaowenge', 'https://www.imooc.com/video/16490', '0', 'ide', 'Ae1.jpg', 'åŠ¨webå¼€å‘é€‚é…çš„æ–¹æ¡ˆæœ‰è®¸å¤šï¼Œç„¶è€Œæœ€å¥½çš„æ–¹æ¡ˆä¸€å®šè¦æŽŒæ¡ã€‚æœ¬è¯¾ç¨‹ä¸»è¦è®²è§£ç§»åŠ¨webå¼€å‘ä¸­å¸¸è§çš„é€‚é…æ–¹æ³•ï¼Œç€é‡è®²è§£ä½¿ç”¨remæ–¹æ¡ˆçš„åŽŸç†å’Œä½¿ç”¨æ–¹æ³•');
INSERT INTO `download` VALUES ('xiaowenge1527645989', 'csså®šä½ position', 'xiaowenge', 'https://www.imooc.com/video/16322', '1', 'vedio', 'Ae2.jpg', 'æœ¬è¯¾ç¨‹ï¼Œå°†å¸¦é¢†å¤§å®¶äº†è§£ä¸€ä¸‹å®šä½çš„çŸ¥è¯†ï¼Œæ•™å¤§å®¶å¦‚ä½•é€šè¿‡å®šä½æ¥è¿›è¡Œå¸ƒå±€ã€‚');
INSERT INTO `download` VALUES ('xiaowenge1527646019', 'åŸºäºŽwebsocketçš„ç«æ‹¼ä¿„ç½—æ–¯ï¼ˆå‡çº§ç‰ˆï¼‰', 'xiaowenge', 'https://www.imooc.com/video/15621', '1', 'vedio', 'Ae3.jpg', 'æœ¬è¯¾ç¨‹æ˜¯åŸºäºŽwebsocketçš„ç«æ‹¼ä¿„ç½—æ–¯çš„å‡çº§ç‰ˆæœ¬ï¼Œè¯¾ç¨‹ä¸­åœ¨å‰ä¸¤ä¸ªè¯¾çš„åŸºç¡€ä¸Šå®žçŽ°äº†ç”¨ä¸¤ä¸ªæµè§ˆå™¨å¯¹æˆ˜æ¨¡å¼ï¼Œå®Œæ•´çš„å®žçŽ°äº†æ¸¸æˆçš„è¿‡ç¨‹ã€‚');
INSERT INTO `recruit` VALUES ('admin1527648799', 'å›¾ä¹¦é¦†ä¹¦åº“ç®¡ç†å‘˜', 'admin', 'å›¾ä¹¦é¦†', '1', 'work', '2018-05-30 10:54:14', 'Ca1.jpg', 'å†…å®¹ï¼šä¸»è¦æ˜¯æ•´ç†ä¹¦æž¶ï¼ŒæŠŠå½’è¿˜çš„å›¾ä¹¦æ”¾å›žä¹¦æž¶é‡Œï¼Œæ‘†æ”¾æ–°ä¹¦ã€‚');
INSERT INTO `recruit` VALUES ('admin1527648928', 'é£Ÿå ‚ç®¡ç†å‘˜', 'admin', 'é£Ÿå ‚', '1', 'work', '2019-05-02 00:00:00', 'Ca2.jpg', 'å†…å®¹ï¼šæ´—ç¢—ï¼Œæ‰“é¥­ï¼Œæ“¦æ¡Œå­ï¼Œæžé¢ï¼Œæ”¶é¤å…·ï¼Œæ´—ç¢—æˆ¿');
INSERT INTO `recruit` VALUES ('admin1527649167', 'å·¥ä¸šä¸­å¿ƒï¼ˆå®žè®­æ¥¼ï¼‰ç®¡ç†å‘˜', 'admin', 'å·¥ä¸šä¸­å¿ƒï¼ˆå®žè®­æ¥¼ï¼‰', '1', 'work', '2018-05-17 00:00:00', 'Ca3.jpg', 'å†…å®¹ï¼šä¸»è¦æ˜¯åœ¨å®žè®­æ¥¼æ‰“æ‰«å«ç”Ÿï¼Œè¦ä¿è¯å„ä¸ªåœ°æ–¹æ¸…æ´ï¼Œä»¥å…æ»‹ç”Ÿå°è™«å­æˆ–èšŠå­ç­‰ç­‰æ˜†è™«ã€‚åžƒåœ¾ç­å†…æ— æ‚ç‰©ï¼›åœ°é¢æ— æ²™å­ã€æ³¥åœŸï¼›å¢™è§’ã€æ¡Œåº•ç­‰æ­»è§’æ— ç°å°˜ã€‚');
INSERT INTO `recruit` VALUES ('admin1527649238', 'çŽ°åœºåŠžç®¡ç†å‘˜', 'admin', 'çŽ°åœºåŠž', '1', 'work', '2018-05-09 00:00:00', 'Ca4.jpg', 'å†…å®¹ï¼šæ‰“æ‰«ä¸‰é—´å¤§æ•™å®¤ï¼Œä¸‰é—´å°æ•™å®¤ã€‚æ³¨æ„å·¥ä½œè´Ÿè´£ï¼Œä¸å¯èµ°å‡ºäº†äº‹ã€‚');
INSERT INTO `recruit` VALUES ('admin1527649263', 'å­¦ç”ŸåŠ©ç†', 'admin', 'åŠžå…¬å®¤', '1', 'work', '2018-05-17 00:00:00', 'Ca5.jpg', 'ä¸»è¦å¸®è€å¸ˆæ•´ç†ä¸€äº›èµ„æ–™ã€‚å’Œå¸®è€å¸ˆæ‹¿æŠ¥çº¸ï¼Œå›žæ¥ä¹Ÿè¦ä¿è¯è€å¸ˆåŠžå…¬å®¤å«ç”Ÿæ¸…æ´ï¼Œåžƒåœ¾æ¡¶æ— åžƒåœ¾ï¼Œå¿…è¦æ—¶è¦æ“¦ä¸‹æ¡Œå­ã€‚');
INSERT INTO `recruit` VALUES ('admin1527649285', 'æ·±åœ³å¸‚åº·æ¯”ç‰¹ä¿¡æ¯æŠ€æœ¯æœ‰é™å…¬å¸', 'admin', 'æ·±åœ³', '1', 'internship', '2018-05-10 00:00:00', 'Cb1.jpg', 'è§†è§‰è®¾è®¡ è½¯ä»¶å¼€å‘ æŠ€æœ¯æ”¯æŒ é”€å”®ä»£è¡¨');
INSERT INTO `recruit` VALUES ('admin1527649339', 'æ·±åœ³å¸‚ä¹åˆ›äº«ç§‘æŠ€', 'admin', 'æ·±åœ³', '1', 'work', '2018-05-19 00:00:00', 'Cb2.jpg', 'å¤–è´¸ä¸šåŠ¡ã€å‡ºå£é”€å”®');
INSERT INTO `recruit` VALUES ('admin1527649368', 'æ·±åœ³åšç‰©é¦†', 'admin', 'æ·±åœ³', '1', 'internship', '2018-05-17 00:00:00', 'Cb3.jpg', 'äº’è”ç½‘è¿ç»´');
INSERT INTO `recruit` VALUES ('admin1527649388', 'æ­¦æ±‰å¤§å­¦æ·±åœ³ç ”ç©¶é™¢', 'admin', 'æ·±åœ³', '1', 'internship', '2018-05-18 00:00:00', 'Ca4.jpg', 'å®žä¹ ç”Ÿ');
INSERT INTO `recruit` VALUES ('admin1527649476', 'æ­¦æ±‰å¤§å­¦æ·±åœ³ç ”ç©¶é™¢', 'admin', 'æ·±åœ³', '1', 'internship', '2018-05-19 00:00:00', 'Cb5.jpg', 'æš‘æœŸå·¥');
INSERT INTO `recruit` VALUES ('admin1527651560', 'å‘é€åˆ°', 'admin', 'æ²™å‘', '1', 'work', '2018-05-11 00:00:00', 'Ad3.jpg', 'å¤šå°‘');
INSERT INTO `user` VALUES ('admin', 'admin');
INSERT INTO `user` VALUES ('wwy', 'wwy');
INSERT INTO `user` VALUES ('xiaowenge', 'xiaowengebang');
