/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : db_music

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 26/04/2026 16:17:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员用户名',
  `admineamil` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员邮箱',
  `adminpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员密码',
  `adminphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员电话',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '添加时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态0为可用 1位不可用',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES (1, 'admin', 'admin@qq.com', '0adc3949ba59abbe56e057f20f883e', '666666', '2026-04-26 20:57:46', 0, '管理员');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `outline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大纲',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书主图',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书分类',
  `content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书内容',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书作者',
  `hits` int(11) NULL DEFAULT NULL COMMENT '点击数',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书状态',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2356 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (11, '凤凰台上（全2册）【作者亲签版】', 'https://img3m0.ddimg.cn/11/32/29874350-3_u_1744879681.jpg', 'https://img3m0.ddimg.cn/11/32/29874350-3_u_1744879681.jpg', '青春文学', '<p style=\"text-align: start;\"><img src=\"http://img59.ddimg.cn/99999990597515769.jpg\"></p><p></p><div class=\"_3hMwG _2kCxD  \"></div><p></p>  ', '1', 0, '正常', '凤凰台上（全2册）【作者亲签版】', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (17, '拉钩盖章一百年不许变', 'https://img3m0.ddimg.cn/11/32/29874350-1_w_1744879681.jpg', 'https://img3m0.ddimg.cn/11/32/29874350-1_w_1744879681.jpg', '青春文学', '<div class=\"_3tNyU\"><div id=\"header\" class=\"_2oTsX\"><p><img src=\"http://img59.ddimg.cn/99999990597515769.jpg\"></p></div></div><div></div>  ', '山东', 0, '正常', '拉钩盖章一百年不许变', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (39, '全世界都知道（全二册）【特签版+当当定制Q萌取景器透卡】网络原名：全世界都知道她爱我', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', '青春文学', '<p><img src=\"http://img51.ddimg.cn/99999990597504531.jpg\"></p>   ', '1', 0, '正常', '全世界都知道（全二册）【特签版+当当定制Q萌取景器透卡】网络原名：全世界都知道她爱我', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (57, '一剑星河渡（印特签版） （网络原名《我靠摆烂拯救了全宗门》', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', '财经,青春文学', '<div class=\"dpu8C _2kCxD  \"><p><img src=\"http://img56.ddimg.cn/99999990597476056.jpg\"></p></div>  ', '1', 0, '正常', '一剑星河渡（印特签版） （网络原名《我靠摆烂拯救了全宗门》', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2345, '会游泳的“机器鱼”！机器人大会人气旺', 'https://pics7.baidu.com/feed/810a19d8bc3eb135e7f0fec63c146cdcfd1f44b6.jpeg@f_auto?token=d7f7cd4cdbb86caf5549b70c829d84d1', 'https://pics7.baidu.com/feed/810a19d8bc3eb135e7f0fec63c146cdcfd1f44b6.jpeg@f_auto?token=d7f7cd4cdbb86caf5549b70c829d84d1', '青春文学', '<div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics7.baidu.com/feed/810a19d8bc3eb135e7f0fec63c146cdcfd1f44b6.jpeg@f_auto?token=d7f7cd4cdbb86caf5549b70c829d84d1\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“机器鱼，会游泳！”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">邹城国际会展中心，山东省机器人大会高校展区，观众被水池中游泳的鱼形仿生机器人（机器鱼）吸引。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics5.baidu.com/feed/d058ccbf6c81800a20b0af232a3ff7f5828b475b.jpeg@f_auto?token=849bbed07d7b63e219898a49d29c2b77\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“XiaoQi，Can you speak English?” (小柒，你会说英语吗？)</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">机器人大会现场，来自外国媒体的记者与人形机器人小柒互动。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics2.baidu.com/feed/6609c93d70cf3bc77952845b4b0a7eaecc112ad5.jpeg@f_auto?token=24c698b89b365b8c574690514af73ebc\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“机甲大熊猫，咱们合个影。”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">机器人大会正门大厅的巨型熊猫模型成为游客热衷的拍照“打卡点”。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics1.baidu.com/feed/2f738bd4b31c87010a838d10bd755a200708ff2d.jpeg@f_auto?token=1497ee21c68defb3af55e393569c1a59\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“找啊找啊找朋友，机器人朋友在哪里……”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">机器人大会现场游客如织，大家边走边看，找寻感兴趣的展区、展品。</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">4月26日—28日，山东省机器人大会暨2025智创未来机器人（无人机）梦幻展在邹城国际会展中心，本次活动以“‘机’聚齐鲁、智启未来”为主题，展览面积2万平方米，华为、特斯拉、大疆、宇树科技、珞石科技等217余家企业和高校院所参展，展品1028件品。展览吸引大量观众参观，仅4月26日开幕当天，入场观众超过1.5万人次。展会不但迎来大量游客参观，还吸引众多专家客商现场交流洽谈。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics5.baidu.com/feed/aa64034f78f0f736ca9a4db4905f7716ebc4133c.jpeg@f_auto?token=4bb9e7f23bd37cb2caafad1e1b9e496f\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“机器人的‘五脏六腑’都是什么零件……”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">小游客观察小型机器人复杂而精巧的零件构造。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics0.baidu.com/feed/d000baa1cd11728b4e9ce64f52f607c1c2fd2cc7.jpeg@f_auto?token=9673f6c2846b21e63e68c84722c22c84\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“挖掘机技术哪家强，有智能的挖掘机来捧场！”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">机器人大会展陈多种工业机器人、功能型机器人、智能型工程机械。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics6.baidu.com/feed/7dd98d1001e9390121eda657e1e690e837d19681.jpeg@f_auto?token=932f421fba5ab8e0f26f565c18f73cc4\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“一楼看完了，咱们再去二楼。”</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">机器人大会在邹城国际会展中心一楼及二楼设置多个展厅。</span></div><div class=\"_3hMwG _2kCxD  \"><div class=\"_1NCGf\"><img src=\"https://pics4.baidu.com/feed/0b55b319ebc4b745038ae2b356f6da188a821516.jpeg@f_auto?token=af9464bbae48a0e538f3862c2c4dda3c\" width=\"1080\" class=\"_1g4Ex _1i_Oe \"></div></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“看，机器人在写书法。”用毛笔写字的机器人吸引参观者驻足。</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">“握手机器人，握手未来。”参观者与仿生机械手握手。</span></div><div class=\"dpu8C _2kCxD  \"><span class=\"bjh-p\">（大众新闻记者 卢鹏 吕光社 石少汛 蓝天）</span></div>  ', '1', 0, '正常', '无', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2346, '一剑星河渡（印特签版） （网络原名《我靠摆烂拯救了全宗门》', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', 'https://img3m6.ddimg.cn/32/28/29866946-1_w_1742812850.jpg', '青春文学', '<div class=\"_3hMwG _2kCxD  \"><p><img src=\"http://img56.ddimg.cn/99999990597476056.jpg\"></p></div>  ', '1', 0, '正常', '一剑星河渡（印特签版） （网络原名《我靠摆烂拯救了全宗门》', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2348, '樱桃唇【特签版+当当定制樱桃拍立得】', 'https://img3m9.ddimg.cn/18/26/29874159-5_u_1745400208.jpg', 'https://img3m9.ddimg.cn/18/26/29874159-5_u_1745400208.jpg', '青春文学', '<div class=\"name_info\" ddt-area=\"001\"><h2><span class=\"head_title_name\" title=\"人气作者姜之鱼青春校园经典之作，全新修订版。少年的爱意无法轻易说出口，但目光所至，便是答案。新增出版番外《向他狂奔》。赠：韶华如昨海报+Q萌小剧场+气泡金句贴纸+心动藏书票*2+电子赠品*2—酷威文化&nbsp;&nbsp;\">人气作者姜之鱼青春校园经典之作，全新修订版。少年的爱意无法轻易说出口，但目光所至，便是答案。新增出版番外《向他狂奔》。赠：韶华如昨海报+Q萌小剧场+气泡金句贴纸+心动藏书票*2+电子赠品*2—酷威文化</span><span class=\"hot\" title=\"人气作者姜之鱼青春校园经典之作，全新修订版。少年的爱意无法轻易说出口，但目光所至，便是答案。新增出版番外《向他狂奔》。赠：韶华如昨海报+Q萌小剧场+气泡金句贴纸+心动藏书票*2+电子赠品*2—酷威文化&nbsp;&nbsp;\"></span></h2><div><span class=\"head_title_name\" title=\"人气作者姜之鱼青春校园经典之作，全新修订版。少年的爱意无法轻易说出口，但目光所至，便是答案。新增出版番外《向他狂奔》。赠：韶华如昨海报+Q萌小剧场+气泡金句贴纸+心动藏书票*2+电子赠品*2—酷威文化&nbsp;&nbsp;\"><br></span></div></div><p><span class=\"bjh-p\"><img src=\"http://img51.ddimg.cn/99999990597500111.jpg\"></span></p>  ', '1', 0, '正常', '樱桃唇【特签版+当当定制樱桃拍立得】', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2349, '私尝（全二册）【特签版+当当定制隽永票根】网络原名：撩欲', 'https://pics7.baidu.com/feed/b3fb43166d224f4a5329a21f2db42e5d9922d1d9.jpeg@f_auto?token=4733e0d04eed6a5a675d089346e4bffb', 'https://pics5.baidu.com/feed/80cb39dbb6fd5266a1de807f8f5b2924d50736b2.jpeg@f_auto?token=76eef2fae4ae17ce41d84c96ae411077', '青春文学', '<div class=\"dpu8C _2kCxD  \"><div class=\"name_info\" ddt-area=\"001\"><h2><span class=\"head_title_name\" title=\"番茄黑马作者妘子衿破镜重圆救赎之作。当一切重来，他甘愿献上余生，换以爱和救赎。新增出版番外《一瞬永恒》。随书附赠：纪念日折页+小狐蝶透卡+人设卡牌*2+电子赠品*4——酷威文化&nbsp;&nbsp;\">番茄黑马作者妘子衿破镜重圆救赎之作。当一切重来，他甘愿献上余生，换以爱和救赎。新增出版番外《一瞬永恒》。随书附赠：纪念日折页+小狐蝶透卡+人设卡牌*2+电子赠品*4——酷威文化</span><span class=\"hot\" title=\"番茄黑马作者妘子衿破镜重圆救赎之作。当一切重来，他甘愿献上余生，换以爱和救赎。新增出版番外《一瞬永恒》。随书附赠：纪念日折页+小狐蝶透卡+人设卡牌*2+电子赠品*4——酷威文化&nbsp;&nbsp;\"></span></h2><p><span class=\"head_title_name\" title=\"番茄黑马作者妘子衿破镜重圆救赎之作。当一切重来，他甘愿献上余生，换以爱和救赎。新增出版番外《一瞬永恒》。随书附赠：纪念日折页+小狐蝶透卡+人设卡牌*2+电子赠品*4——酷威文化&nbsp;&nbsp;\"><span>　Chapter 01</span><br><span>　　被迫闪婚</span><br><span>　　京城，金山酒吧门口。</span><br><span>　　霍折宇：舒漾，除了我，全京城没人敢娶你！</span><br><span>　　舒漾正倚在门边，看见信息后她嗤笑了一声。</span><br><span>　　这时一通电话打进来，舒漾接通后秀眉紧皱：“结婚？”</span><br><span>　　现在谁不知道，她舒漾背了一屁股债，还摊上霍家那位混世魔王。哪个冤大头敢顶着霍家的压力娶她？</span><br><span>　　听完消息后，舒漾冷声道：“没人敢嫁的老男人，凭什么让我去？”</span><br><span>　　管家解释道：“大小姐，对方指定要你。”</span><br><span>　　“我舒漾就是饿死，从家里滚出去，也不会结婚！”</span><br><span>　　“老夫人说了，只要你肯答应联姻，家产、珠宝、跑车任你挑选！形婚一年，这期间绝对自由。”</span><br><span>　　舒漾十分不屑地“呵”了一声，金钱而已，跑车而已……</span><br><span>　　舒漾嗔怒：“本小姐像那么肤浅的人吗？明早九点，让老男人在民政局门口等着！”</span><br><span>　　管家一愣，电话已然被挂断。</span><br><span>　　舒漾笑着弹了弹烟灰，一年而已，买不来吃亏，买不来上当！</span><br><span>　　正想着，她突然耳膜一震。</span><br><span>　　“舒漾姐姐！嫁给我吧！”只听扑通一声，捧着花匆匆跑来的人，直直地跪在她面前。</span><br><span>　　舒漾吓得手中的烟直接掉在了地上。</span><br><span>　　酒吧门口瞬间围过来不少人，看热闹的声音此起彼伏。</span></span></p></div></div>    ', '1', 0, '正常', '私尝（全二册）【特签版+当当定制隽永票根】网络原名：撩欲', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2350, '一剑星河渡（限量特签版）网络原名《我靠摆烂拯救了全宗门》', 'https://img3m5.ddimg.cn/36/18/29866455-1_w_1742795398.jpg', 'https://img3m5.ddimg.cn/36/18/29866455-1_w_1742795398.jpg', '青春文学', '<p><img src=\"http://img57.ddimg.cn/99999990597474517.jpg\"></p><div><span class=\"bjh-p\"><br></span></div>   ', '1', 0, '正常', '一剑星河渡（限量特签版）网络原名《我靠摆烂拯救了全宗门》', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2352, '我们的夏天像电影【当当专享印特签】', 'https://img3m1.ddimg.cn/29/29/29868131-1_w_1744878599.jpg', 'https://img3m1.ddimg.cn/29/29/29868131-1_w_1744878599.jpg', '青春文学', '<div class=\"_3hMwG _2kCxD  \"><p><img src=\"http://img54.ddimg.cn/99999990597515734.jpg\"></p></div>   ', '1', 0, '正常', '我们的夏天像电影【当当专享印特签】', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2353, '上升明月(畅销书作家文吉儿青春励志之作', 'https://img3m7.ddimg.cn/98/0/29879387-4_u_1746513238.jpg', 'https://img3m7.ddimg.cn/98/0/29879387-4_u_1746513238.jpg', '青春文学', '<div id=\"abstract\" class=\"section\"><div class=\"title\"><span>编辑推荐</span></div><div class=\"descrip\"><span id=\"abstract-all\"></span><table width=\"685\" class=\"layui-table\"><tbody><tr><td width=\"601\"><p>★人气畅销书作家文吉儿全新青春励志口碑代表作，青春校园剧《一起长大的约定》姊妹篇，中国作协副主席邱华栋、著名曲艺家郭德纲倾情推荐！</p><p>★海军青年军官李航x文艺少女作家夏明月，一见倾心的怦然，双向暗恋的拉扯，顶峰相见的约定，肩负国家使命的甜蜜军恋。当命运突生变故，爱，可否赢万难？</p><p>★一部描绘青春与梦想、爱情与使命的璀璨之作，在双向奔赴中诠释青春的力量与担当。既有海浪般澎湃的成长史诗，又有月光般轻盈的青春絮语。</p><p>★精美双封装帧设计，外封绘制【夕阳海边漫步】绝美画面，内封绘制粉蓝樱花海男女主CP特写。内文选用100g胶版印刷纸，品质感十足，纯白与蓝紫色系交织的双色内页，搭配清新隽永的【金句】和别具匠心的【月相更替】页码，营造视觉韵律，带来沉浸式阅读体验。</p><p>★8P精美彩插，绘制【怦然心动】【许愿迪士尼】等彩色插画，重现高甜名场面；8幅手绘Q萌人物与情节高光时刻，定格甜蜜心动瞬间。</p><p>★随书附赠4重6件赠品，名场面双面明信片×2，男女主人物小卡×2，Q萌藏书票×1，Q萌书签×1，赠品丰富精美，极具收藏价值。</p><p>★另有2种粉丝惊喜随机掉落，文吉儿亲签版新书限量2700本，姊妹篇《一起长大的约定》青春校园剧明星主演签名照限量200张。限量福利先到先得，开卷若有惊喜，天选之子就是你！</p></td></tr></tbody></table>&nbsp;</div></div><div id=\"content\" class=\"section\"><div class=\"title\"><span>内容简介</span></div><div class=\"descrip\"><span id=\"content-all\"></span><p>文学少女夏明月在鹿城邂逅海军军校生李航，短暂心动后被迫分隔两地。青涩暗恋与成长阵痛交织，她带着心事远赴台湾学习，一场地震让两颗心慢慢靠近。确立恋人关系后，他们约定以\"顶峰相见\"为誓言各自拼搏。当军恋长跑跨越山海，夏明月已从文艺少女蜕变为新锐作家，而李航毕业后选择去海军部队，在深海巡航中坚守家国担当。然而命运突生变故，一场车祸让两人失联。那封穿越海浪的信，最终能否再得到回音？</p></div></div><div id=\"authorIntroduction\" class=\"section\"><div class=\"title\"><span>作者简介</span></div><div class=\"descrip\"><span id=\"authorIntroduction-all\"></span><table class=\"layui-table\"><tbody><tr><td><p>文吉儿，中国作家协会会员，中国文学艺术基金会新时代文创基金主任，澳门大学文学博士。已出版作品有小说集《春风习习人间谣》，童话集《穿越毛病小王国》，散文集《异想记》《我很好那么你呢》《撕几页青春，换一个努力的自己》，短篇小说集《别让梦想只是梦想》等。原著小说《春风习习人间谣》改编为励志青春校园剧《一起长大的约定》在爱奇艺播出，担任总出品人、总编剧。</p><p>荣获2013年第五届报喜鸟新锐人物奖，荣获2015年人民文学诗歌奖，原创剧本《爷爷的守望者》荣获2019年第28届中国金鸡百花电影节民族电影优秀剧本奖，入围2021年澳门国际电影节创投奖。新华网2021年度最具影响力作者，2022年当当第八届影响力青年作家，2023年第九届当当网影响力作家。荣获2024年澳门国际电视节金莲花最佳编剧提名奖。</p></td></tr></tbody></table></div></div>  ', '1', 0, '正常', '上升明月(畅销书作家文吉儿青春励志之作', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2354, '女校（人气作家孩子帮·鹅随“北番高中”系列代表作！）', 'https://img3m5.ddimg.cn/3/2/29864145-1_w_1742278190.jpg', 'https://img3m5.ddimg.cn/3/2/29864145-1_w_1742278190.jpg', '青春文学', '<div class=\"name_info\" ddt-area=\"001\"><h2><span class=\"head_title_name\" title=\"彩虹，夕阳，她。新增出版万字番外《盛暑拾日》 ，附赠“北番高中”证件照两张、“封面”人物收藏卡两张、操场纪念海报、初见人物珠光票根两张和Q版贴纸。&nbsp;&nbsp;\">彩虹，夕阳，她。新增出版万字番外《盛暑拾日》 ，附赠“北番高中”证件照两张、“封面”人物收藏卡两张、操场纪念海报、初见人物珠光票根两张和Q版贴纸。</span><span class=\"hot\" title=\"彩虹，夕阳，她。新增出版万字番外《盛暑拾日》 ，附赠“北番高中”证件照两张、“封面”人物收藏卡两张、操场纪念海报、初见人物珠光票根两张和Q版贴纸。&nbsp;&nbsp;\"></span></h2><p><span class=\"head_title_name\" title=\"彩虹，夕阳，她。新增出版万字番外《盛暑拾日》 ，附赠“北番高中”证件照两张、“封面”人物收藏卡两张、操场纪念海报、初见人物珠光票根两张和Q版贴纸。&nbsp;&nbsp;\"><img src=\"http://img56.ddimg.cn/99999990597461746.jpg\"></span></p></div> ', '1', 0, '正常', '女校（人气作家孩子帮·鹅随“北番高中”系列代表作！）', '2026-04-26 17:48:20');
INSERT INTO `article` VALUES (2355, '爱可思光 一本让高敏感者与自我和解的勇气之书', 'https://img3m5.ddimg.cn/3/2/29864145-2_u_1742278190.jpg', 'https://img3m5.ddimg.cn/3/2/29864145-2_u_1742278190.jpg', '青春文学', '<p><img src=\"http://img56.ddimg.cn/99999990597461746.jpg\"></p> ', '1', 0, '正常', '爱可思光 一本让高敏感者与自我和解的勇气之书', '2026-04-26 17:48:20');

-- ----------------------------
-- Table structure for article_copy1
-- ----------------------------
DROP TABLE IF EXISTS `article_copy1`;
CREATE TABLE `article_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `outline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大纲',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '音乐主图',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '音乐分类',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '音乐内容',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '音乐作者',
  `hits` int(11) NULL DEFAULT NULL COMMENT '点击数',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '音乐状态',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_copy1
-- ----------------------------
INSERT INTO `article_copy1` VALUES (1, '不舍 (《斗罗大陆》动画片尾曲)1', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (2, '不舍 (《斗罗大陆》动画片尾曲)2', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (3, '不舍 (《斗罗大陆》动画片尾曲)3', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (4, '不舍 (《斗罗大陆》动画片尾曲)4', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (5, '不舍 (《斗罗大陆》动画片尾曲)5', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (6, '不舍 (《斗罗大陆》动画片尾曲)6', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (7, '不舍 (《斗罗大陆》动画片尾曲)7', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (8, '不舍 (《斗罗大陆》动画片尾曲)8', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>   ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');
INSERT INTO `article_copy1` VALUES (9, '不舍 (《斗罗大陆》动画片尾曲)9', 'https://www.javalm.cn/file/%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86.mp3', '/CommonWeb/uploads/1615282204770_8.jpg', '情歌,游戏', '<div class=\"para\" label-module=\"para\">还是要分离没勇气留住你诀别身影</div><div class=\"para\" label-module=\"para\">失落的森林谁在哭泣</div><div class=\"para\" label-module=\"para\">还是不放弃我不要去聆听所谓天意</div><div class=\"para\" label-module=\"para\">拼了命找寻有关于你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">还是很无力无数次梦见你温柔眼睛</div><div class=\"para\" label-module=\"para\">漫长的夜里谁在叹息</div><div class=\"para\" label-module=\"para\">还是很想你相伴过的四季依然憧憬</div><div class=\"para\" label-module=\"para\">所有的风景都不及你</div><div class=\"para\" label-module=\"para\">星斗苍凉月色照亮</div><div class=\"para\" label-module=\"para\">世界在你眼眸不舍形状</div><div class=\"para\" label-module=\"para\">思念蔓延滋长那段时光</div><div class=\"para\" label-module=\"para\">除了誓言有太多没对你讲</div><div class=\"para\" label-module=\"para\">难忘</div><div class=\"para\" label-module=\"para\">穿越山海的距离</div><div class=\"para\" label-module=\"para\">携手冲破命运的禁忌</div><div class=\"para\" label-module=\"para\">爱着你未来到过去</div><div class=\"para\" label-module=\"para\">你是我不愿遗忘的时光</div><div class=\"para\" label-module=\"para\">也是我奋不顾身的疯狂</div><div class=\"para\" label-module=\"para\">听见吗</div><div class=\"para\" label-module=\"para\">我的呼唤</div><div class=\"para\" label-module=\"para\">跨越悲伤</div><div class=\"para\" label-module=\"para\">奔向你的胸膛</div><div class=\"para\" label-module=\"para\">你是我长发梳起的梦想</div><div class=\"para\" label-module=\"para\">也是我低头许下的愿望</div><div class=\"para\" label-module=\"para\">有一天</div><div class=\"para\" label-module=\"para\">你会隆重登场</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那岁月绵长</div><div class=\"para\" label-module=\"para\">牵着我</div><div class=\"para\" label-module=\"para\">去看那相思断肠</div>    ', '佳莹', 0, '正常', '《不舍》是《斗罗大陆》动画片尾曲，由曹德智和付茂华作词，Koshin作曲，徐佳莹演唱的歌曲，发行于2020年12月12日。 [1]  收录于同名专辑《不舍》中。', '2022-03-13 20:57:46');

-- ----------------------------
-- Table structure for inform
-- ----------------------------
DROP TABLE IF EXISTS `inform`;
CREATE TABLE `inform`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '通知ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知标题',
  `content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知内容',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inform
-- ----------------------------
INSERT INTO `inform` VALUES (1, '近期黑客实施大规模DDoS攻击事件分析及启示 ', '不久前，美国域名服务器管理服务供应商（Dyn）宣布，该公司遭遇了DDoS（分布式拒绝服务）攻击，导致美国东海岸地区大量网站宕机，Twitter、Tumblr、Netflix、亚马逊、Shopify、Reddit、Airbnb、PayPal和Yelp等网站无一幸免。此次攻击，黑客采用的是典型的DDoS网络攻击方式（袭击者将多个计算机联合起来作为攻击平台，对一个或多个目标发动攻击，其主要目的是让目标无法提供正常服务），其攻击规模巨大，影响范围十分广泛，攻击波次达三次之多。由于Dyn提供重要的DNS服务，当其受到攻击时，用户无法通过域名访问这些站点，极大影响了关系美国社会民生的正常运行。就在近日，利比亚也遭遇了大型网络攻击，导致全国的网络连接故障。据悉，本次在利比亚发生的网络攻击事件一共连续了数波次，并且黑客使用了多种方法进行攻击，因此外界有很多人猜测这是他们在尝试使用不同的入侵方式，从中选择出破坏性最大的方法，而这次攻击使用的方法与此前美国遭受的攻击如出一辙，均为利用物联网设备漏洞进行攻击。我们主要以美遭受DDOS攻击事件为例，进行跟踪分析，以儆效尤，尽快加强我网络防范力度。', '2026-04-26 17:48:20', NULL, NULL);
INSERT INTO `inform` VALUES (2, '黑客眼中的智能家居啥样？全是漏洞，出入随心', '不得不说，智能家居真的能提升人们的幸福感。试想，轻轻点击手机屏幕，就能操作电视、洗碗机、扫地机器人，人站在远处就能对智能音箱发号施令，人在单位就能通过智能摄像头查看家里的情况，这感觉实在 让人美滋滋。\n\n不过，智能家居这种新鲜物件儿也并非十全十美。由于用户的很多重要信息都和这些设备绑定，一旦黑客利用智能家居的漏洞进行远程攻击，轻则会令用户隐私泄露，甚至这些设备失控，还可能对人身造成危害。\n\n比如，攻击者恶意控制了小孩的智能玩具，就有可能诱导孩子作出打开房门、爬出阳台这样的危险动作；攻击者一旦破解了用户的智能门锁、智能保险箱，就可以轻易窃取用户的贵重物品；攻击者随意提高智能烤箱的温度，就可能引发火灾。', '2026-04-26 17:48:20', NULL, NULL);
INSERT INTO `inform` VALUES (3, '黑客入侵攻击方式的 四种最新趋势', '从1988年开始，位于美国卡内基梅隆大学的CERT CC（计算机紧急响应小组协调中心）就开始调查入侵者的活动。CERT CC给出一些关于最新入侵者攻击方式的趋势。 \n\n　　趋势一：攻击过程的自动化与攻击工具的快速更新 \n\n　　攻击工具的自动化程度继续不断增强。自动化攻击涉及到的四个阶段都发生了变化。\n\n1． 扫描潜在的受害者。从1997年起开始出现大量的扫描活动。目前，新的扫描工具利用更先进的扫描技术，变得更加有威力，并且提高了速度。 \n\n　　2． 入侵具有漏洞的系统。以前，对具有漏洞的系统的攻击是发生在大范围的扫描之后的。现在，攻击工具已经将对漏洞的入侵设计成为扫描活动的一部分，这样大大加快了入侵的速度。 \n\n　　3． 攻击扩散。2000年之前，攻击工具需要一个人来发起其余的攻击过程。现在，攻击工具能够自动发起新的攻击过程。例如红色代码和Nimda病毒这些工具就在18个小时之内传遍了全球。 \n\n　　4． 攻击工具的协同管理。自从1999年起，随着分布式攻击工具的产生，攻击者能够对大量分布在Internet之上的攻击工具发起攻击。现在，攻击者能够更加有效地发起一个分布式拒绝服务攻击。协同功能利用了大量大众化的协议如IRC（Internet Relay Chat）、IR（Instant Message）等的功能。。。。。\n', '2026-04-26 17:48:20', NULL, NULL);

-- ----------------------------
-- Table structure for likeinfo
-- ----------------------------
DROP TABLE IF EXISTS `likeinfo`;
CREATE TABLE `likeinfo`  (
  `likeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `likeuid` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `liketitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关注名称',
  `likeuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `liketid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关注编号',
  PRIMARY KEY (`likeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关注信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of likeinfo
-- ----------------------------
INSERT INTO `likeinfo` VALUES (1, '1', '20', 'test', '41');
INSERT INTO `likeinfo` VALUES (2, '1', '21', 'test', '43');
INSERT INTO `likeinfo` VALUES (3, '1', '22', 'test', '41');
INSERT INTO `likeinfo` VALUES (4, '1', '28', 'test', '48');
INSERT INTO `likeinfo` VALUES (5, '1', '40', 'test', '48');
INSERT INTO `likeinfo` VALUES (6, '1', '51', 'test', '49');
INSERT INTO `likeinfo` VALUES (7, '1', '62', 'test', '47');
INSERT INTO `likeinfo` VALUES (8, '1', '64', 'test', '44');
INSERT INTO `likeinfo` VALUES (9, '1', '77', 'test', '40');
INSERT INTO `likeinfo` VALUES (10, '1', '78', 'test', '46');
INSERT INTO `likeinfo` VALUES (11, '1', '81', 'test', '47');
INSERT INTO `likeinfo` VALUES (12, '1', '94', 'test', '40');
INSERT INTO `likeinfo` VALUES (13, '1', '117', 'test', '45');
INSERT INTO `likeinfo` VALUES (14, '1', '129', 'test', '40');
INSERT INTO `likeinfo` VALUES (15, '1', '163', 'test', '47');
INSERT INTO `likeinfo` VALUES (16, '1', '186', 'test', '43');
INSERT INTO `likeinfo` VALUES (17, '1', '187', 'test', '41');
INSERT INTO `likeinfo` VALUES (18, '1', '203', 'test', '47');
INSERT INTO `likeinfo` VALUES (19, '1', '204', 'test', '46');
INSERT INTO `likeinfo` VALUES (20, '1', '212', 'test', '45');
INSERT INTO `likeinfo` VALUES (21, '2', '3', '张三', '41');
INSERT INTO `likeinfo` VALUES (22, '2', '25', '张三', '43');
INSERT INTO `likeinfo` VALUES (23, '2', '26', '张三', '41');
INSERT INTO `likeinfo` VALUES (24, '2', '34', '张三', '44');
INSERT INTO `likeinfo` VALUES (25, '2', '48', '张三', '42');
INSERT INTO `likeinfo` VALUES (26, '2', '62', '张三', '48');
INSERT INTO `likeinfo` VALUES (27, '2', '76', '张三', '45');
INSERT INTO `likeinfo` VALUES (28, '2', '114', '张三', '49');
INSERT INTO `likeinfo` VALUES (29, '2', '129', '张三', '46');
INSERT INTO `likeinfo` VALUES (30, '2', '131', '张三', '47');
INSERT INTO `likeinfo` VALUES (31, '2', '147', '张三', '41');
INSERT INTO `likeinfo` VALUES (32, '2', '172', '张三', '48');
INSERT INTO `likeinfo` VALUES (33, '2', '175', '张三', '48');
INSERT INTO `likeinfo` VALUES (34, '2', '185', '张三', '49');
INSERT INTO `likeinfo` VALUES (35, '2', '199', '张三', '47');
INSERT INTO `likeinfo` VALUES (36, '2', '248', '张三', '46');
INSERT INTO `likeinfo` VALUES (37, '2', '255', '张三', '44');
INSERT INTO `likeinfo` VALUES (38, '2', '256', '张三', '40');
INSERT INTO `likeinfo` VALUES (39, '2', '262', '张三', '40');
INSERT INTO `likeinfo` VALUES (40, '2', '267', '张三', '44');
INSERT INTO `likeinfo` VALUES (41, '3', '2', '纸飞机', '48');
INSERT INTO `likeinfo` VALUES (42, '3', '6', '纸飞机', '40');
INSERT INTO `likeinfo` VALUES (43, '3', '18', '纸飞机', '45');
INSERT INTO `likeinfo` VALUES (44, '3', '55', '纸飞机', '41');
INSERT INTO `likeinfo` VALUES (45, '3', '81', '纸飞机', '47');
INSERT INTO `likeinfo` VALUES (46, '3', '87', '纸飞机', '41');
INSERT INTO `likeinfo` VALUES (47, '3', '89', '纸飞机', '43');
INSERT INTO `likeinfo` VALUES (48, '3', '105', '纸飞机', '47');
INSERT INTO `likeinfo` VALUES (49, '3', '108', '纸飞机', '44');
INSERT INTO `likeinfo` VALUES (50, '3', '109', '纸飞机', '44');
INSERT INTO `likeinfo` VALUES (51, '3', '116', '纸飞机', '46');
INSERT INTO `likeinfo` VALUES (52, '3', '140', '纸飞机', '47');
INSERT INTO `likeinfo` VALUES (53, '3', '143', '纸飞机', '42');
INSERT INTO `likeinfo` VALUES (54, '3', '158', '纸飞机', '48');
INSERT INTO `likeinfo` VALUES (55, '3', '166', '纸飞机', '42');
INSERT INTO `likeinfo` VALUES (56, '3', '170', '纸飞机', '42');
INSERT INTO `likeinfo` VALUES (57, '3', '178', '纸飞机', '46');
INSERT INTO `likeinfo` VALUES (58, '3', '179', '纸飞机', '47');
INSERT INTO `likeinfo` VALUES (59, '3', '196', '纸飞机', '45');
INSERT INTO `likeinfo` VALUES (60, '3', '207', '纸飞机', '49');
INSERT INTO `likeinfo` VALUES (61, '4', '6', '小明', '40');
INSERT INTO `likeinfo` VALUES (62, '4', '12', '小明', '48');
INSERT INTO `likeinfo` VALUES (63, '4', '35', '小明', '43');
INSERT INTO `likeinfo` VALUES (64, '4', '43', '小明', '44');
INSERT INTO `likeinfo` VALUES (65, '4', '63', '小明', '47');
INSERT INTO `likeinfo` VALUES (66, '4', '65', '小明', '43');
INSERT INTO `likeinfo` VALUES (67, '4', '74', '小明', '43');
INSERT INTO `likeinfo` VALUES (68, '4', '81', '小明', '46');
INSERT INTO `likeinfo` VALUES (69, '4', '108', '小明', '47');
INSERT INTO `likeinfo` VALUES (70, '4', '109', '小明', '43');
INSERT INTO `likeinfo` VALUES (71, '4', '134', '小明', '49');
INSERT INTO `likeinfo` VALUES (72, '4', '151', '小明', '43');
INSERT INTO `likeinfo` VALUES (73, '4', '153', '小明', '48');
INSERT INTO `likeinfo` VALUES (74, '4', '155', '小明', '42');
INSERT INTO `likeinfo` VALUES (75, '4', '173', '小明', '46');
INSERT INTO `likeinfo` VALUES (76, '4', '178', '小明', '40');
INSERT INTO `likeinfo` VALUES (77, '4', '183', '小明', '46');
INSERT INTO `likeinfo` VALUES (78, '4', '184', '小明', '46');
INSERT INTO `likeinfo` VALUES (79, '4', '194', '小明', '42');
INSERT INTO `likeinfo` VALUES (80, '4', '197', '小明', '46');
INSERT INTO `likeinfo` VALUES (81, '7', '4', 'xiaoming01', '47');
INSERT INTO `likeinfo` VALUES (82, '7', '18', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (83, '7', '38', 'xiaoming01', '48');
INSERT INTO `likeinfo` VALUES (84, '7', '81', 'xiaoming01', '43');
INSERT INTO `likeinfo` VALUES (85, '7', '83', 'xiaoming01', '45');
INSERT INTO `likeinfo` VALUES (86, '7', '94', 'xiaoming01', '49');
INSERT INTO `likeinfo` VALUES (87, '7', '147', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (88, '7', '189', 'xiaoming01', '42');
INSERT INTO `likeinfo` VALUES (89, '7', '201', 'xiaoming01', '42');
INSERT INTO `likeinfo` VALUES (90, '7', '208', 'xiaoming01', '42');
INSERT INTO `likeinfo` VALUES (91, '7', '230', 'xiaoming01', '47');
INSERT INTO `likeinfo` VALUES (92, '7', '233', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (93, '7', '238', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (94, '7', '273', 'xiaoming01', '46');
INSERT INTO `likeinfo` VALUES (95, '7', '275', 'xiaoming01', '48');
INSERT INTO `likeinfo` VALUES (96, '7', '281', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (97, '7', '299', 'xiaoming01', '41');
INSERT INTO `likeinfo` VALUES (98, '7', '315', 'xiaoming01', '40');
INSERT INTO `likeinfo` VALUES (99, '7', '339', 'xiaoming01', '47');
INSERT INTO `likeinfo` VALUES (100, '7', '348', 'xiaoming01', '48');
INSERT INTO `likeinfo` VALUES (101, '1', '2333', 'test', '48');

-- ----------------------------
-- Table structure for linkurl
-- ----------------------------
DROP TABLE IF EXISTS `linkurl`;
CREATE TABLE `linkurl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `fid` int(11) NULL DEFAULT NULL COMMENT '父ID',
  `level` int(11) NULL DEFAULT NULL COMMENT '层级',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES (1, 0, 1, '爱的魔力转圈圈', '索尼官网预售： O网页链接 索尼旗舰店预售：索尼官网预售： O网页链接 索尼旗舰店预售：索尼官网预售： O网页链接 索尼旗舰店预售：索尼官网预售： O网页链接 索尼旗舰店预售：索尼官网预售： O网页链接 索尼旗舰店预售：索尼官网预售： O网页链接 索尼旗舰店预售：', '54', '/CommonWeb/static/img/headicon.jpg', 5, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (2, 0, 1, '我不告诉你', '一片浮云飘过大海，是我的生命， \r\n一片微风吹过花丛，是我的感情。', '54', '/CommonWeb/static/img/headicon.jpg', 1, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (3, 0, 1, '你猜猜看', '身处在前端社区的繁荣之下，我们都在有意或无意地追逐。', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (4, 0, 1, '张三', 'jstl以前在jsp页面截取字符串时都是用Java表达式，感觉在jsp页面用多了Java表达式不是很好（那时主要是不知道jstl标签怎么去截取字符串，所以就只能用Java表达式了）', '54', '/CommonWeb/static/img/headicon.jpg', 3, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (5, 0, 1, '李四', '把轻松注入你的空气，把快乐铺满你的脚底，把平安装进你的行礼，把睿智融进你的眼底，把笑容沾满甜蜜。我的朋友，给你送这份礼物，祝你天天开心。', '54', '/CommonWeb/static/img/headicon.jpg', 4, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (6, 0, 1, '纸飞机', '出生一张纸，忙碌一辈子。', '54', '/CommonWeb/static/img/headicon.jpg', 5, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (9, 1, 2, '天涯浪子', '天南地北，真挚的情感不降温；天涯海角，芬芳的友情不变味；时光飞逝，纯厚的情谊不走样；', '54', '/CommonWeb/static/img/headicon.jpg', 5, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (10, 2, 2, 'test', '人生春天，努力一点；人生酸甜，都尝一点；', '54', '/CommonWeb/static/img/headicon.jpg', 4, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (11, 10, 3, 'test', '索尼官网预售： O网页链接 索尼旗舰店预售：', '54', '/CommonWeb/static/img/headicon.jpg', 3, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (12, 1, 2, 'test', '相当一流的网站，比xxx还要好的网站。', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (13, 1, 2, 'test', '内容真实详尽 没有虚假 为百姓服务 一丝不苟 态度严谨', '54', '/CommonWeb/static/img/headicon.jpg', 5, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (14, 11, 4, 'test', '这上很多点评可靠，大家可以相互推荐', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (15, 3, 1, 'test', '测试2222222222222222222222', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (16, 3, 2, 'test', '大数据，让信誉的评分变得更容易，任何可收集可聚合的东西皆会被评分。', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (17, 16, 3, 'test', '测试回复33333333333333333333333333333333333', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (18, 17, 4, 'test', '测试四级评论 44444444444444444', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (19, 18, 5, 'test', '测试五级评论 5555555555', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (20, 19, 6, 'test', '测试无限极评论啊啊啊啊啊啊', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (21, 20, 7, 'test', '测试无限极评论啊啊啊啊啊啊', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (28, NULL, NULL, 'test', '开启Steam页面 支持简中', '55', '/CommonWeb/static/img/headicon.jpg', 3, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (29, NULL, NULL, 'test', '测试开启测试开启测试开启测试开启', '55', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (30, 28, 1, 'test', '二级评论二级评论二级评论二级评论二级评论二级评论二级评论', '55', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (31, 30, 2, 'test', '3级评论3级评论', '55', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (32, NULL, NULL, 'test', '在这样一场既需要实力在这样一场既需要实力', '54', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (33, 32, 1, 'test', '4444', '54', '/CommonWeb/static/img/headicon.jpg', 5, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (34, NULL, NULL, '44', '总是张望', '666', '0', NULL, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (35, NULL, NULL, 'test', 'vkhfyguk\r\n', '9', '/CommonWeb/static/img/headicon.jpg', 1, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (36, NULL, NULL, 'test', '455464', '89', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (37, 36, 1, 'test', '6666', '89', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');
INSERT INTO `liuyan` VALUES (38, NULL, NULL, 'test', '1', '2351', '/CommonWeb/static/img/headicon.jpg', 2, '2026-04-26 17:48:20');

-- ----------------------------
-- Table structure for scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `scoreinfo`;
CREATE TABLE `scoreinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据编号',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品编号',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品评分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品评分' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scoreinfo
-- ----------------------------
INSERT INTO `scoreinfo` VALUES (1, '1', '1', '1.9');
INSERT INTO `scoreinfo` VALUES (2, '1', '4', '2.9');
INSERT INTO `scoreinfo` VALUES (3, '1', '6', '2.0');
INSERT INTO `scoreinfo` VALUES (4, '1', '7', '2.3');
INSERT INTO `scoreinfo` VALUES (5, '1', '8', '2.7');
INSERT INTO `scoreinfo` VALUES (6, '1', '9', '4.4');
INSERT INTO `scoreinfo` VALUES (7, '1', '14', '1.3');
INSERT INTO `scoreinfo` VALUES (8, '1', '16', '0.0');
INSERT INTO `scoreinfo` VALUES (9, '1', '18', '3.7');
INSERT INTO `scoreinfo` VALUES (10, '1', '19', '4.6');
INSERT INTO `scoreinfo` VALUES (11, '1', '20', '5.0');
INSERT INTO `scoreinfo` VALUES (12, '1', '23', '4.2');
INSERT INTO `scoreinfo` VALUES (13, '1', '30', '1.9');
INSERT INTO `scoreinfo` VALUES (14, '1', '32', '2.8');
INSERT INTO `scoreinfo` VALUES (15, '1', '34', '0.6');
INSERT INTO `scoreinfo` VALUES (16, '1', '38', '1.6');
INSERT INTO `scoreinfo` VALUES (17, '1', '44', '0.7');
INSERT INTO `scoreinfo` VALUES (18, '1', '47', '3.6');
INSERT INTO `scoreinfo` VALUES (19, '1', '48', '2.6');
INSERT INTO `scoreinfo` VALUES (20, '1', '49', '0.5');
INSERT INTO `scoreinfo` VALUES (21, '1', '53', '3.8');
INSERT INTO `scoreinfo` VALUES (22, '1', '54', '1.2');
INSERT INTO `scoreinfo` VALUES (23, '1', '55', '1.3');
INSERT INTO `scoreinfo` VALUES (24, '1', '56', '0.4');
INSERT INTO `scoreinfo` VALUES (25, '1', '59', '0.5');
INSERT INTO `scoreinfo` VALUES (26, '2', '2', '3.0');
INSERT INTO `scoreinfo` VALUES (27, '2', '3', '3.4');
INSERT INTO `scoreinfo` VALUES (28, '2', '7', '3.7');
INSERT INTO `scoreinfo` VALUES (29, '2', '8', '5.0');
INSERT INTO `scoreinfo` VALUES (30, '2', '14', '2.9');
INSERT INTO `scoreinfo` VALUES (31, '2', '15', '2.8');
INSERT INTO `scoreinfo` VALUES (32, '2', '16', '0.6');
INSERT INTO `scoreinfo` VALUES (33, '2', '22', '3.1');
INSERT INTO `scoreinfo` VALUES (34, '2', '24', '3.8');
INSERT INTO `scoreinfo` VALUES (35, '2', '26', '0.4');
INSERT INTO `scoreinfo` VALUES (36, '2', '27', '3.6');
INSERT INTO `scoreinfo` VALUES (37, '2', '28', '3.9');
INSERT INTO `scoreinfo` VALUES (38, '2', '29', '0.7');
INSERT INTO `scoreinfo` VALUES (39, '2', '32', '3.3');
INSERT INTO `scoreinfo` VALUES (40, '2', '35', '2.6');
INSERT INTO `scoreinfo` VALUES (41, '2', '36', '0.2');
INSERT INTO `scoreinfo` VALUES (42, '2', '42', '3.5');
INSERT INTO `scoreinfo` VALUES (43, '2', '44', '1.8');
INSERT INTO `scoreinfo` VALUES (44, '2', '45', '3.4');
INSERT INTO `scoreinfo` VALUES (45, '2', '47', '2.0');
INSERT INTO `scoreinfo` VALUES (46, '2', '49', '3.0');
INSERT INTO `scoreinfo` VALUES (47, '2', '56', '2.9');
INSERT INTO `scoreinfo` VALUES (48, '3', '5', '1.9');
INSERT INTO `scoreinfo` VALUES (49, '3', '6', '4.0');
INSERT INTO `scoreinfo` VALUES (50, '3', '11', '0.8');
INSERT INTO `scoreinfo` VALUES (51, '3', '12', '1.1');
INSERT INTO `scoreinfo` VALUES (52, '3', '13', '0.5');
INSERT INTO `scoreinfo` VALUES (53, '3', '14', '4.2');
INSERT INTO `scoreinfo` VALUES (54, '3', '19', '4.7');
INSERT INTO `scoreinfo` VALUES (55, '3', '20', '0.8');
INSERT INTO `scoreinfo` VALUES (56, '3', '22', '0.2');
INSERT INTO `scoreinfo` VALUES (57, '3', '24', '3.8');
INSERT INTO `scoreinfo` VALUES (58, '3', '29', '4.6');
INSERT INTO `scoreinfo` VALUES (59, '3', '31', '3.8');
INSERT INTO `scoreinfo` VALUES (60, '3', '32', '3.3');
INSERT INTO `scoreinfo` VALUES (61, '3', '33', '1.5');
INSERT INTO `scoreinfo` VALUES (62, '3', '34', '0.8');
INSERT INTO `scoreinfo` VALUES (63, '3', '35', '3.7');
INSERT INTO `scoreinfo` VALUES (64, '3', '36', '1.0');
INSERT INTO `scoreinfo` VALUES (65, '3', '42', '2.1');
INSERT INTO `scoreinfo` VALUES (66, '3', '43', '5.0');
INSERT INTO `scoreinfo` VALUES (67, '3', '44', '4.3');
INSERT INTO `scoreinfo` VALUES (68, '3', '45', '1.7');
INSERT INTO `scoreinfo` VALUES (69, '3', '46', '0.3');
INSERT INTO `scoreinfo` VALUES (70, '3', '48', '4.0');
INSERT INTO `scoreinfo` VALUES (71, '3', '49', '2.0');
INSERT INTO `scoreinfo` VALUES (72, '3', '50', '3.8');
INSERT INTO `scoreinfo` VALUES (73, '4', '2', '2.8');
INSERT INTO `scoreinfo` VALUES (74, '4', '6', '2.2');
INSERT INTO `scoreinfo` VALUES (75, '4', '7', '2.4');
INSERT INTO `scoreinfo` VALUES (76, '4', '9', '3.1');
INSERT INTO `scoreinfo` VALUES (77, '4', '15', '2.8');
INSERT INTO `scoreinfo` VALUES (78, '4', '16', '3.8');
INSERT INTO `scoreinfo` VALUES (79, '4', '25', '0.4');
INSERT INTO `scoreinfo` VALUES (80, '4', '26', '2.6');
INSERT INTO `scoreinfo` VALUES (81, '4', '27', '4.5');
INSERT INTO `scoreinfo` VALUES (82, '4', '28', '4.0');
INSERT INTO `scoreinfo` VALUES (83, '4', '31', '0.9');
INSERT INTO `scoreinfo` VALUES (84, '4', '32', '0.4');
INSERT INTO `scoreinfo` VALUES (85, '4', '36', '3.5');
INSERT INTO `scoreinfo` VALUES (86, '4', '37', '2.9');
INSERT INTO `scoreinfo` VALUES (87, '4', '39', '0.9');
INSERT INTO `scoreinfo` VALUES (88, '4', '40', '4.4');
INSERT INTO `scoreinfo` VALUES (89, '4', '43', '1.9');
INSERT INTO `scoreinfo` VALUES (90, '4', '44', '3.9');
INSERT INTO `scoreinfo` VALUES (91, '4', '45', '0.7');
INSERT INTO `scoreinfo` VALUES (92, '4', '47', '1.0');
INSERT INTO `scoreinfo` VALUES (93, '4', '48', '1.0');
INSERT INTO `scoreinfo` VALUES (94, '4', '51', '2.8');
INSERT INTO `scoreinfo` VALUES (95, '4', '53', '1.1');
INSERT INTO `scoreinfo` VALUES (96, '4', '57', '0.8');
INSERT INTO `scoreinfo` VALUES (97, '5', '5', '0.2');
INSERT INTO `scoreinfo` VALUES (98, '5', '10', '4.4');
INSERT INTO `scoreinfo` VALUES (99, '5', '16', '3.2');
INSERT INTO `scoreinfo` VALUES (100, '5', '18', '0.8');
INSERT INTO `scoreinfo` VALUES (101, '5', '20', '3.1');
INSERT INTO `scoreinfo` VALUES (102, '5', '22', '2.8');
INSERT INTO `scoreinfo` VALUES (103, '5', '24', '0.1');
INSERT INTO `scoreinfo` VALUES (104, '5', '26', '2.0');
INSERT INTO `scoreinfo` VALUES (105, '5', '27', '0.4');
INSERT INTO `scoreinfo` VALUES (106, '5', '33', '4.3');
INSERT INTO `scoreinfo` VALUES (107, '5', '34', '3.3');
INSERT INTO `scoreinfo` VALUES (108, '5', '43', '4.0');
INSERT INTO `scoreinfo` VALUES (109, '5', '49', '3.1');
INSERT INTO `scoreinfo` VALUES (110, '5', '52', '3.2');
INSERT INTO `scoreinfo` VALUES (111, '5', '54', '1.9');
INSERT INTO `scoreinfo` VALUES (112, '5', '55', '2.8');
INSERT INTO `scoreinfo` VALUES (113, '5', '56', '0.7');
INSERT INTO `scoreinfo` VALUES (114, '6', '1', '2.3');
INSERT INTO `scoreinfo` VALUES (115, '6', '2', '0.4');
INSERT INTO `scoreinfo` VALUES (116, '6', '4', '1.9');
INSERT INTO `scoreinfo` VALUES (117, '6', '7', '2.1');
INSERT INTO `scoreinfo` VALUES (118, '6', '9', '3.0');
INSERT INTO `scoreinfo` VALUES (119, '6', '10', '0.2');
INSERT INTO `scoreinfo` VALUES (120, '6', '11', '2.1');
INSERT INTO `scoreinfo` VALUES (121, '6', '12', '4.7');
INSERT INTO `scoreinfo` VALUES (122, '6', '15', '3.2');
INSERT INTO `scoreinfo` VALUES (123, '6', '17', '3.0');
INSERT INTO `scoreinfo` VALUES (124, '6', '23', '2.1');
INSERT INTO `scoreinfo` VALUES (125, '6', '24', '1.7');
INSERT INTO `scoreinfo` VALUES (126, '6', '25', '0.1');
INSERT INTO `scoreinfo` VALUES (127, '6', '35', '3.0');
INSERT INTO `scoreinfo` VALUES (128, '6', '36', '4.2');
INSERT INTO `scoreinfo` VALUES (129, '6', '37', '0.7');
INSERT INTO `scoreinfo` VALUES (130, '6', '38', '1.3');
INSERT INTO `scoreinfo` VALUES (131, '6', '39', '2.6');
INSERT INTO `scoreinfo` VALUES (132, '6', '41', '4.7');
INSERT INTO `scoreinfo` VALUES (133, '6', '42', '0.8');
INSERT INTO `scoreinfo` VALUES (134, '6', '44', '3.6');
INSERT INTO `scoreinfo` VALUES (135, '6', '45', '3.6');
INSERT INTO `scoreinfo` VALUES (136, '6', '49', '0.5');
INSERT INTO `scoreinfo` VALUES (137, '6', '52', '3.4');
INSERT INTO `scoreinfo` VALUES (138, '6', '58', '4.9');
INSERT INTO `scoreinfo` VALUES (139, '6', '59', '3.8');
INSERT INTO `scoreinfo` VALUES (140, '1', '1', '4.9');
INSERT INTO `scoreinfo` VALUES (141, '1', '1', '4.3');
INSERT INTO `scoreinfo` VALUES (142, '1', '45', '4.5');
INSERT INTO `scoreinfo` VALUES (143, '1', '2333', '4.0');
INSERT INTO `scoreinfo` VALUES (144, '2', '2340', '4.5');
INSERT INTO `scoreinfo` VALUES (145, '2', '2339', '0.5');
INSERT INTO `scoreinfo` VALUES (146, '2', '2338', '5.0');
INSERT INTO `scoreinfo` VALUES (147, '2', '2337', '4.8');
INSERT INTO `scoreinfo` VALUES (148, '2', '2336', '4.5');
INSERT INTO `scoreinfo` VALUES (149, '2', '2335', '5.0');
INSERT INTO `scoreinfo` VALUES (151, '2', '2321', '4.6');
INSERT INTO `scoreinfo` VALUES (152, '2', '2319', '4.8');
INSERT INTO `scoreinfo` VALUES (154, '2', '2299', '4.3');
INSERT INTO `scoreinfo` VALUES (155, '1', '2335', '2');
INSERT INTO `scoreinfo` VALUES (156, '1', '2334', '2.5');
INSERT INTO `scoreinfo` VALUES (157, '10', '2340', '4.5');
INSERT INTO `scoreinfo` VALUES (158, '10', '2339', '5');
INSERT INTO `scoreinfo` VALUES (159, '10', '2339', '4.3');
INSERT INTO `scoreinfo` VALUES (160, '10', '2339', '4.3');
INSERT INTO `scoreinfo` VALUES (161, '10', '2339', '4.5');
INSERT INTO `scoreinfo` VALUES (162, '10', '2338', '0.2');
INSERT INTO `scoreinfo` VALUES (163, '10', '2337', '2.3');
INSERT INTO `scoreinfo` VALUES (164, '10', '2336', '0.2');
INSERT INTO `scoreinfo` VALUES (165, '10', '2310', '2');
INSERT INTO `scoreinfo` VALUES (166, '10', '2304', '3.2');
INSERT INTO `scoreinfo` VALUES (167, '10', '2285', '5');
INSERT INTO `scoreinfo` VALUES (168, '1', '2338', '4');
INSERT INTO `scoreinfo` VALUES (169, '1', '2334', '3');
INSERT INTO `scoreinfo` VALUES (170, '1', '2351', '1');
INSERT INTO `scoreinfo` VALUES (171, '1', '2350', '5');
INSERT INTO `scoreinfo` VALUES (172, '1', '2349', '5');
INSERT INTO `scoreinfo` VALUES (173, '1', '2345', '5');
INSERT INTO `scoreinfo` VALUES (174, '1', '2346', '5');
INSERT INTO `scoreinfo` VALUES (175, '1', '2343', '5');
INSERT INTO `scoreinfo` VALUES (176, '1', '2352', '5');
INSERT INTO `scoreinfo` VALUES (177, '1', '2351', '5');

-- ----------------------------
-- Table structure for sorttype
-- ----------------------------
DROP TABLE IF EXISTS `sorttype`;
CREATE TABLE `sorttype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sortname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类描述',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sorttype
-- ----------------------------
INSERT INTO `sorttype` VALUES (1, '科普读物', '科普读物', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (2, '计算机', '计算机', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (3, '医学', '医学', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (4, '财经', '财经', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (5, '军事', '军事', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (6, '自然科学', '自然科学', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (7, '港台图书', '港台图书', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (8, '投资', '投资', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (9, '理财', '理财', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (10, '传记', '传记', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (11, '青春文学', '青春文学', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (12, '幽默', '幽默', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (13, '艺术', '艺术', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (14, '摄影', '摄影', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (15, '婴儿读物', '婴儿读物', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (16, '教育', '教育', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (17, '幼儿启蒙', '幼儿启蒙', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (18, '益智游戏', '益智游戏', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (19, '动漫', '动漫', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (20, '卡通少儿', '卡通少儿', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (21, '外文原版书', '外文原版书', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (35, '心灵修养', '心灵修养', '2026-04-26 17:48:20');
INSERT INTO `sorttype` VALUES (36, '职场人生', '职场人生', '2026-04-26 17:48:20');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `picurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'test', '18314463515', '/CommonWeb/static/img/headicon.jpg', 'test555@qq.com', '情歌,游戏', '66666', '男', '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (2, '张三', '18314463788', '/CommonWeb/static/img/headicon.jpg', 'zhagnsan@qq.com', '游戏,旅游', '10000', '女', '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (3, '纸飞机', '18314469999', '/CommonWeb/static/img/address.jpg', '123456@qq.com', '游戏,旅游', '9000', '男', '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (4, '小明', '18314463888', '/CommonWeb/static/img/headicon.jpg', 'xiaoming@qq.com', '游戏,旅游', '5200', '男', '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (7, 'xiaoming01', '18314463888', '/CommonWeb/static/img/headicon.jpg', 'xiaoming01@qq.com', '游戏,旅游', NULL, NULL, '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (8, '张三', '18156322365', '/CommonWeb/uploads/1647665001929_4.jpg', '54562@163.com', NULL, NULL, NULL, '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (9, '李四', '13265451254', '/CommonWeb/uploads/1647682487200_2.jpg', '6525@163.com', NULL, NULL, NULL, '123456', NULL, '2026-04-26 17:48:20');
INSERT INTO `userinfo` VALUES (10, '王五', '18765321254', '/CommonWeb/uploads/1647682813562_2.jpg', '643049694@qq.com', NULL, NULL, NULL, '123456', NULL, '2026-04-26 17:48:20');

-- ----------------------------
-- Table structure for wenjuan
-- ----------------------------
DROP TABLE IF EXISTS `wenjuan`;
CREATE TABLE `wenjuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '题目',
  `daan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案',
  `fenshu` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分数',
  `xuanxiang` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选项',
  `t_id` int(11) NULL DEFAULT NULL COMMENT '所属id',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wenjuan
-- ----------------------------
INSERT INTO `wenjuan` VALUES (1, '你选择此种类型网站优先考虑？（）', 'C', '10', 'A.功能完善  B.界面美观  C.技术新颖  D.容易上手 E.简洁大方', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (2, '这个系统你觉得最吸引你的地方是哪里？（）', 'B', '10', 'A.简约  B.高效  C.完善   D.时尚', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (3, '您觉得这个系统还需要完善那些地方？（）', 'B', '10', 'A.系统安全方面  B.系统UI界面  C.系统功能方面  D.全部需要完善', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (4, '这个网站的给你的用户体验如何？（）', 'A', '10', 'A.非常赞  B.还可以  C.一般  D.非常不好', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (5, '你了解几家和这个网站功能类似网站？（）', 'B', '10', 'A.2个 B.3个  C.0个 D.1个', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (6, '你更多时间在什么平台上使用该网站？（）', 'C', '10', 'A.手机 B.电脑 C.平板', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (7, '您认为现在的这个网站有什么问题？()', 'D', '10', 'A.使用人数过少 B.宣传力度不够 C.网站能提供的信息太少 D.评分系统不准确 E.其他', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (8, '您认为目前这个系统市场存在的最大隐患是什么 ( )', 'A', '10', 'A.质量得不到保证 B.报价中有猫腻 C.售后服务差 D.诚信度不够高', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (9, '请问您一般通过什么途径了解到这个系统的？（）', 'B', '10', 'A.互联网 B.听朋友(或熟人)介绍 C.看广告 D.手机信息推送 E.其他', 0, '2026-04-26 17:48:20');
INSERT INTO `wenjuan` VALUES (10, '您通常会在什么情况下使用这个系统?', 'C', '10', 'A.查询相关资料时 B.朋友需要这方面信息时 C.打发业余时间 D.其他', 0, '2026-04-26 17:48:20');

-- ----------------------------
-- Table structure for wenjuanjieguo
-- ----------------------------
DROP TABLE IF EXISTS `wenjuanjieguo`;
CREATE TABLE `wenjuanjieguo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `a1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案1',
  `a2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案2',
  `a3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案3',
  `a4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案4',
  `a5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案5',
  `a6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案6',
  `a7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案7',
  `a8` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案8',
  `a9` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案9',
  `a10` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '答案10',
  `score` int(11) NULL DEFAULT NULL COMMENT '分数',
  `createtime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wenjuanjieguo
-- ----------------------------
INSERT INTO `wenjuanjieguo` VALUES (11, 'test', 'A.功能齐全', 'B.智能', 'A.中式双随机企业检查', 'B.双随机企业检查品牌专卖店', 'C.有需要时', 'D.颜色', 'A.实木双随机企业检查', 'A.质量得不到保证', 'A.互联网', 'A.房子刚装修完买具', NULL, '2026-04-26 17:48:20');
INSERT INTO `wenjuanjieguo` VALUES (12, 'test', 'C.造型美', 'D.时尚', 'D.混合地图导航及道路信息查询系统', 'D.网购', 'C.有需要时', 'D.颜色', 'E.竹艺地图导航及道路信息查询系统', 'A.质量得不到保证', 'B.听朋友(或熟人)介绍', 'D.逛街时顺便看看', NULL, '2026-04-26 17:48:20');
INSERT INTO `wenjuanjieguo` VALUES (13, 'test', 'E.简洁大方', 'D.时尚', 'D.全部需要完善', 'D.非常不好', 'D.1个', 'C.平板', 'E.其他', 'D.诚信度不够高', 'E.其他', 'D.其他', NULL, '2026-04-26 17:48:20');
INSERT INTO `wenjuanjieguo` VALUES (14, 'test', 'E.简洁大方', 'D.时尚', 'D.全部需要完善', 'D.非常不好', 'D.1个', 'C.平板', 'E.其他', 'D.诚信度不够高', 'E.其他', 'D.其他', NULL, '2026-04-26 17:48:20');
