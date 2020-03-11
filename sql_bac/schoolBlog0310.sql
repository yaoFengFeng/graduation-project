/*
 Navicat Premium Data Transfer

 Source Server         : aliyun
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 47.103.25.134:3306
 Source Schema         : schoolBlog

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 10/03/2020 09:17:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artGrop
-- ----------------------------
DROP TABLE IF EXISTS `artGrop`;
CREATE TABLE `artGrop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文本集id',
  `artGropName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文本集名字',
  `userID` int(11) NOT NULL COMMENT '文本集所有者',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10016 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artGrop
-- ----------------------------
INSERT INTO `artGrop` VALUES (10001, 'JavaScript', 1001, '2019-12-06');
INSERT INTO `artGrop` VALUES (10002, 'NodeJS', 1001, '2019-12-06');
INSERT INTO `artGrop` VALUES (10005, 'HTML5', 1001, '2019-12-11');
INSERT INTO `artGrop` VALUES (10007, 'CSS3', 1001, '2019-12-11');
INSERT INTO `artGrop` VALUES (10014, 'Java', 1001, '2019-12-12');
INSERT INTO `artGrop` VALUES (10015, 'Nginx', 1001, '2019-12-13');

-- ----------------------------
-- Table structure for artTagMap
-- ----------------------------
DROP TABLE IF EXISTS `artTagMap`;
CREATE TABLE `artTagMap`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章 标签映射id',
  `articleID` int(11) DEFAULT NULL COMMENT '文章id',
  `tagID` int(11) DEFAULT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artTagMap
-- ----------------------------
INSERT INTO `artTagMap` VALUES (1, 10001, 1001);
INSERT INTO `artTagMap` VALUES (2, 10001, 1002);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `authorID` int(11) NOT NULL COMMENT '作者id',
  `artGropID` int(11) NOT NULL COMMENT '文本集id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `md` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容.md格式（也可能是文章内容链接）',
  `html` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容.html格式（也可能是文章内容链接）',
  `createTime` date DEFAULT NULL COMMENT '创作时间',
  `type` int(2) DEFAULT NULL COMMENT '类型（0个人  1公开）',
  `status` int(2) DEFAULT 1 COMMENT '是否被禁止（下架审核  1已发表  2审核中 3禁止 0未发表）',
  `lastUpdateTime` date DEFAULT NULL COMMENT '上次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10057 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (10009, 1001, 10001, '测试发布更新', '\n## 显示文件扩展名\n\n大部分文件，它的文件名：名称.扩展名(后缀名)\n\n扩展名决定了文件被什么应用程序打开。\n\n## 安装浏览器\n\nIE\nOpera\nFirefox\nChrome【推荐】\nSafari\n\n将chrome设置为默认浏览器\n\n## 安装编辑器\n\nwindows记事本\nSublime\nATom\nDreamweaver\nVSCode【推荐】', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】</p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10050, 1001, 10002, '2020-1-28', '卡恢复客户看房家看韩剧看好看就1231231\n![1111.png](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/170img15832383175771111.png)\n\n![15831265981.png](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/949img15832402465091583126598(1).png)', '<p>卡恢复客户看房家看韩剧看好看就1231231<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/170img15832383175771111.png\" alt=\"1111.png\" /></p>\n<p><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/949img15832402465091583126598(1).png\" alt=\"15831265981.png\" /></p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10052, 1001, 10002, ' HTML & CSS 课程概', '卡恢复客户看房家看韩剧看好看就1231231\n![1111.png](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/170img15832383175771111.png)\n\n![15831265981.png](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/949img15832402465091583126598(1).png)', '<p>卡恢复客户看房家看韩剧看好看就1231231<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/170img15832383175771111.png\" alt=\"1111.png\" /></p>\n<p><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/949img15832402465091583126598(1).png\" alt=\"15831265981.png\" /></p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10053, 1001, 10001, 'HTML & CSS 概述', '\n## 显示文件扩展名\n\n大部分文件，它的文件名：名称.扩展名(后缀名)\n\n扩展名决定了文件被什么应用程序打开。\n\n## 安装浏览器\n\nIE\nOpera\nFirefox\nChrome【推荐】\nSafari\n\n将chrome设置为默认浏览器\n\n## 安装编辑器\n\nwindows记事本\nSublime\nATom\nDreamweaver\nVSCode【推荐】', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】</p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10054, 1001, 10001, '开发环境的准备', '\n## 显示文件扩展名\n\n大部分文件，它的文件名：名称.扩展名(后缀名)\n\n扩展名决定了文件被什么应用程序打开。\n\n## 安装浏览器\n\nIE\nOpera\nFirefox\nChrome【推荐】\nSafari\n\n将chrome设置为默认浏览器\n\n## 安装编辑器\n\nwindows记事本\nSublime\nATom\nDreamweaver\nVSCode【推荐】', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】</p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10055, 1001, 10001, '新建测试', '\n## 显示文件扩展名\n\n大部分文件，它的文件名：名称.扩展名(后缀名)\n\n扩展名决定了文件被什么应用程序打开。\n\n## 安装浏览器\n\nIE\nOpera\nFirefox\nChrome【推荐】\nSafari\n\n将chrome设置为默认浏览器\n\n## 安装编辑器\n\nwindows记事本\nSublime\nATom\nDreamweaver\nVSCode【推荐】\n![15835862261.jpg](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/777img15835862524641583586226(1).jpg)', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/777img15835862524641583586226(1).jpg\" alt=\"15835862261.jpg\" /></p>\n', NULL, NULL, 1, NULL);
INSERT INTO `article` VALUES (10056, 1001, 10007, '图片水印测试', '## 图片水印\n商学苑\n![15831265981.png](https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/280img15837697129601583126598(1).png?x-oss-process=style/add_watermark)', '<h2><a id=\"_0\"></a>图片水印</h2>\n<p>商学苑<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/280img15837697129601583126598(1).png?x-oss-process=style/add_watermark\" alt=\"15831265981.png\" /></p>\n', NULL, NULL, 1, NULL);

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '班级名字',
  `collegeID` int(11) DEFAULT NULL COMMENT '所属学院ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10009 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (10001, '16计本二班', 1001);
INSERT INTO `class` VALUES (10002, '16计本一班', 1001);
INSERT INTO `class` VALUES (10003, '17计本一班', 1001);
INSERT INTO `class` VALUES (10004, '17计本二班', 1001);
INSERT INTO `class` VALUES (10005, '17计本三班', 1001);
INSERT INTO `class` VALUES (10006, '16电气一班', 1001);
INSERT INTO `class` VALUES (10007, '16管理一班', 1002);
INSERT INTO `class` VALUES (10008, '16管理二班', 1002);

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) DEFAULT NULL COMMENT '文章id',
  `userID` int(11) DEFAULT NULL COMMENT '收藏着id',
  `collectTime` bigint(20) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (5, 10, 1001, 1583593321412);
INSERT INTO `collection` VALUES (6, 11, 1001, 1583597970134);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collegeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学院名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (1001, '信息工程学院');
INSERT INTO `college` VALUES (1002, '管理学院');
INSERT INTO `college` VALUES (1003, '传媒学院');
INSERT INTO `college` VALUES (1004, '继续教育学院');
INSERT INTO `college` VALUES (1005, '艺术与设计学院');
INSERT INTO `college` VALUES (1006, '金融学院');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commenterID` int(11) DEFAULT NULL COMMENT '评论人id',
  `articleID` int(11) DEFAULT NULL COMMENT '文章id',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `commentTime` bigint(20) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1019 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1001, 1001, 10, '这是一条评论', NULL);
INSERT INTO `comments` VALUES (1005, 1001, 10, '评论测试 保佑！', 1583576065983);
INSERT INTO `comments` VALUES (1006, 1001, 10, '评论成功反馈测试', 1583576259503);
INSERT INTO `comments` VALUES (1007, 1001, 10, '评论成功反馈测试', 1583576340070);
INSERT INTO `comments` VALUES (1008, 1001, 10, '咖啡机很骄傲开会', 1583576555622);
INSERT INTO `comments` VALUES (1009, 1001, 10, '评论成功 清空子组件内容测试', 1583576574925);
INSERT INTO `comments` VALUES (1010, 1001, 10, '评论实时添加到组件测试', 1583577219299);
INSERT INTO `comments` VALUES (1011, 1001, 10, '评论实时添加到组件测试2', 1583577364921);
INSERT INTO `comments` VALUES (1018, 1001, 10, '1231323', 1583585523448);

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorID` int(11) DEFAULT NULL COMMENT '被关注作者',
  `userID` int(11) DEFAULT NULL COMMENT '关注者',
  `focusTime` bigint(20) DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES (18, 1001, 1001, 1583718304747);

-- ----------------------------
-- Table structure for likeArticle
-- ----------------------------
DROP TABLE IF EXISTS `likeArticle`;
CREATE TABLE `likeArticle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `articleID` int(11) DEFAULT NULL COMMENT '文章id',
  `userID` int(11) DEFAULT NULL COMMENT '用户id，点赞人',
  `likeTime` bigint(20) DEFAULT NULL COMMENT '点赞时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likeArticle
-- ----------------------------
INSERT INTO `likeArticle` VALUES (14, 17, 1001, 1583641623040);
INSERT INTO `likeArticle` VALUES (15, 10, 1001, 1583657194125);
INSERT INTO `likeArticle` VALUES (16, 12, 1001, 1583718333846);
INSERT INTO `likeArticle` VALUES (18, 13, 1001, 1583718362244);

-- ----------------------------
-- Table structure for publicArticle
-- ----------------------------
DROP TABLE IF EXISTS `publicArticle`;
CREATE TABLE `publicArticle`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `articleId` int(11) NOT NULL COMMENT 'article（草稿表）中的id',
  `authorID` int(11) NOT NULL COMMENT '作者id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `html` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容.html格式（也可能是文章内容链接）',
  `updateTime` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `createTime` bigint(20) DEFAULT NULL COMMENT '发布时间 时间戳',
  `status` int(2) DEFAULT 1 COMMENT '是否被禁止（下架审核  1已发表  2审核中 3禁止 0未发表）',
  `likeCount` int(11) DEFAULT 0 COMMENT '点赞数量',
  `readCount` int(11) DEFAULT 0 COMMENT '阅读数量',
  `commentsCount` int(11) DEFAULT 0 COMMENT '评论数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publicArticle
-- ----------------------------
INSERT INTO `publicArticle` VALUES (10, 10009, 1001, '测试发布更新', '<h1><a id=\"_0\"></a>这里是标题呀</h1>\n<hr />\n<ul class=\"contains-task-list\">\n<li class=\"task-list-item\"><input class=\"task-list-item-checkbox\" checked=\"\" disabled=\"\" type=\"checkbox\"> sf</li>\n<li class=\"task-list-item\"><input class=\"task-list-item-checkbox\" disabled=\"\" type=\"checkbox\"> sdf<br />\newer</li>\n</ul>\n<table>\n<thead>\n<tr>\n<th style=\"text-align:left\">标题1</th>\n<th style=\"text-align:center\">标题2</th>\n<th style=\"text-align:right\">标题3</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td style=\"text-align:left\">左对齐</td>\n<td style=\"text-align:center\">居中</td>\n<td style=\"text-align:right\">右对齐</td>\n</tr>\n<tr>\n<td style=\"text-align:left\">左对齐</td>\n<td style=\"text-align:center\">居中</td>\n<td style=\"text-align:right\">右对齐</td>\n</tr>\n<tr>\n<td style=\"text-align:left\">左对齐</td>\n<td style=\"text-align:center\">居中</td>\n<td style=\"text-align:right\">右对齐</td>\n</tr>\n<tr>\n<td style=\"text-align:left\">左对齐</td>\n<td style=\"text-align:center\">居中</td>\n<td style=\"text-align:right\">右对齐</td>\n</tr>\n<tr>\n<td style=\"text-align:left\">----------------------</td>\n<td style=\"text-align:center\">-------------</td>\n<td style=\"text-align:right\">-----------------</td>\n</tr>\n</tbody>\n</table>\n<h2><a id=\"_13\"></a>二级标题</h2>\n<h3><a id=\"_14\"></a>三级标题</h3>\n<p>卡数据恢复哇<br />\n爱空间和加快积分化开发和嘉豪接口<br />\n卡恢复卡号副科级和可好玩维科精华好卡积分换科技哈<br />\n邱瑞强<br />\n卡是分开寄卡位和借请问企鹅且无群二款方和我尽快好就看<br />\n爱空间和卡交话费家委会尖括号就<br />\n卡交话费框架哈空间发挥脊瓦和金科文化金科文化<br />\n跨境恢复快骄傲和安抚卡骄傲副科级安居客恢复尖括号卡卡好看卡好客家话<br />\n卡号副科级和家看韩剧好给看看好卡积分换看家委会尖括号尖括号<br />\n卡机恢复快骄傲和开发哈开会复健科卡积分发卡交话费看哈客户积分很快就爱我减肥法很快就阿哈空间发挥立刻就爱课啦减肥<br />\n看好客家话<br />\n爱空间和‘按计划科技哈科技哈<br />\n科技哈框架h’<br />\n卡交换机==卡夫卡就会发客家话卡号卡机</p>\n<p>==</p>\n<pre><div class=\"hljs\"><code class=\"lang-js\"><span class=\"hljs-function\"><span class=\"hljs-keyword\">function</span> <span class=\"hljs-title\">tt</span>(<span class=\"hljs-params\"></span>)</span>{\n    <span class=\"hljs-built_in\">console</span>.log(<span class=\"hljs-number\">123</span>)\n}\n</code></div></pre>\n<pre><div class=\"hljs\"><code class=\"lang-html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">p</span>&gt;</span>akjfh卡德加哈空卡法进口量就垃圾间发挥jkh<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">p</span>&gt;</span>\n</code></div></pre>\n<hr />\n<p><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/156img15832377125061583126598(1).png\" alt=\"15831265981.png\" /><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/424img15832378429671111.png\" alt=\"1111.png\" /><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/939img15832378928351111.png\" alt=\"1111.png\" /><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/761img15832379328981111.png\" alt=\"1111.png\" /><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/513img15832402315551111.png\" alt=\"1111.png\" /></p>\n', 1583391602007, 1583390841669, 1, 6, NULL, NULL);
INSERT INTO `publicArticle` VALUES (11, 10050, 1001, '2020-1-28', '<p>卡恢复客户看房家看韩剧看好看就1231231<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/170img15832383175771111.png\" alt=\"1111.png\" /></p>\n<p><img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/949img15832402465091583126598(1).png\" alt=\"15831265981.png\" /></p>\n', NULL, 1583392473046, 1, 0, NULL, NULL);
INSERT INTO `publicArticle` VALUES (12, 10052, 1001, ' HTML & CSS 课程概述', '<p>公益课、基础课程</p>\n<h2><a id=\"_3\"></a>口音</h2>\n<p>成都人</p>\n<h2><a id=\"HTML__CSS_7\"></a>关于成哥的HTML + CSS视频</h2>\n<ol>\n<li>风格</li>\n<li>形式：成哥（线下授课的录制）； 我（线上录制）</li>\n<li>侧重点：成哥（代入感、行业知识）； 我（专业知识）</li>\n</ol>\n<h2><a id=\"_13\"></a>[扩展]是什么意思？</h2>\n<p>80 20 原则，80%知识，只有20%的场景可以用到，而20%的知识，有80%的场景可以用到。</p>\n<p>扩展课程：可以不看，不影响后续学习和开发。看了会提高竞争力。</p>\n<h2><a id=\"HTML__CSS__19\"></a>HTML &amp; CSS 到底是什么，有什么用？</h2>\n<p>它们是两门语言。</p>\n<p>语言：沟通的工具。人和人沟通的语言：自然语言</p>\n<p>人和计算机沟通的工具：计算机语言</p>\n<p>HTML + CSS + Javascript = 网页</p>\n<p>HTML：Hyper Text Markup Language 超文本标记语言；定义网页中有什么。</p>\n<p>CSS：Cascading Style Sheets 层叠样式表；定义网页中的东西长什么样子。</p>\n<h2><a id=\"_33\"></a>难不难？</h2>\n<p>对比所有的开发技术，HTML &amp; CSS 最简单。</p>\n<h2><a id=\"_37\"></a>如何学习？</h2>\n<ul>\n<li>心态平和</li>\n<li>多练习</li>\n</ul>\n<p>软件开发：工科</p>\n<h2><a id=\"_44\"></a>学习顺序？</h2>\n<p>HTML讲解一点 -&gt; CSS（补充HTML的知识）</p>\n<p>HTML：简单、没有什么效果。</p>\n<p>CSS：相对复杂</p>\n<h2><a id=\"_52\"></a>这个界面是什么？</h2>\n<p>VSCode：Visual Studio Code，通用编辑器，微软。通常用于编写代码。</p>\n<p>MarkDown：MD，文档格式标准。文档编写者，仅关注内容本身，不需要关注格式。<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/363img15833928995401583126598(1).png\" alt=\"15831265981.png\" /></p>\n', 1583395086480, 1583392980046, 1, 0, NULL, NULL);
INSERT INTO `publicArticle` VALUES (13, 10053, 1001, 'HTML & CSS 概述', '<h2><a id=\"_1\"></a>术语</h2>\n<p>术语降低沟通成本</p>\n<p>喜大普奔：喜闻乐见、大快人心、普天同庆、奔走相关</p>\n<p>鸡你太美：形容对方篮球打的特别好</p>\n<ol>\n<li>web</li>\n</ol>\n<p>互联网</p>\n<ol start=\"2\">\n<li>w3c</li>\n</ol>\n<p>万维网联盟，非盈利性的组织：w3.org</p>\n<p>为互联网提供各种标准。</p>\n<ol start=\"3\">\n<li>XML</li>\n</ol>\n<p>可扩展的标记语言：extension markup language，用于定义文档结构的。</p>\n<pre><code class=\"lang-\">请在每周周一下午两点，从人人网下载最新美剧《权力的游戏》\n</code></pre>\n<pre><div class=\"hljs\"><code class=\"lang-xml\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">任务</span>&gt;</span>\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">执行日期</span>&gt;</span> 每周一 <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">执行日期</span>&gt;</span>\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">执行时间</span>&gt;</span> 下午两点 <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">执行时间</span>&gt;</span>\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">下载地址</span>&gt;</span> 人人网 <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">下载地址</span>&gt;</span>\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">下载目标</span>&gt;</span> 最新版《权力的游戏》 <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">下载目标</span>&gt;</span>\n<span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">任务</span>&gt;</span>\n</code></div></pre>\n<h2><a id=\"HTML_36\"></a>什么是HTML？</h2>\n<p>HTML是W3C组织定义的语言标准：HTML是用于描述页面结构的语言。</p>\n<p>结构：有什么东西，该东西表示什么含义</p>\n<p>HTML：Hyper Text Markup Language，超文本标记语言。</p>\n<p>书写一个一级标题：</p>\n<pre><div class=\"hljs\"><code class=\"lang-html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-name\">h1</span>&gt;</span> 一级标题 <span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">h1</span>&gt;</span>\n</code></div></pre>\n<p>MDN：Mozilla Development Network，Mozilla开发者社区。</p>\n<h2><a id=\"CSS_53\"></a>什么是CSS？</h2>\n<p>CSS是W3C定义的语言标准：CSS是用于描述页面展示的语言</p>\n<p>CSS决定了页面长什么样子。</p>\n<h2><a id=\"HTML_CSS_59\"></a>执行HTML CSS</h2>\n<p>HTML、CSS -&gt; 浏览器内核 -&gt; 页面</p>\n<p>浏览器：</p>\n<ol>\n<li>shell：外壳</li>\n<li>core：内核（JS执行引擎、渲染引擎）</li>\n</ol>\n<p>IE: Trident<br />\nFirfox: Gecko<br />\nChrome: Webkit / Blink<br />\nSafari: Webkit<br />\nOpera: Presto / Blink</p>\n<h2><a id=\"_74\"></a>版本和兼容性</h2>\n<p>HTML5、CSS3</p>\n<p>HTML5：2014年</p>\n<p>CSS3：目前还没有制定完成。</p>\n<p>XHTML：可以认为是HTML的一种一个版本，完全符合XML的规范。</p>\n', 1583395006518, 1583393476228, 1, 1, NULL, NULL);
INSERT INTO `publicArticle` VALUES (14, 10054, 1001, '开发环境的准备', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】</p>\n', 1583395001620, 1583393503972, 1, 0, NULL, NULL);
INSERT INTO `publicArticle` VALUES (17, 10055, 1001, '新建测试', '<h2><a id=\"_1\"></a>显示文件扩展名</h2>\n<p>大部分文件，它的文件名：名称.扩展名(后缀名)</p>\n<p>扩展名决定了文件被什么应用程序打开。</p>\n<h2><a id=\"_7\"></a>安装浏览器</h2>\n<p>IE<br />\nOpera<br />\nFirefox<br />\nChrome【推荐】<br />\nSafari</p>\n<p>将chrome设置为默认浏览器</p>\n<h2><a id=\"_17\"></a>安装编辑器</h2>\n<p>windows记事本<br />\nSublime<br />\nATom<br />\nDreamweaver<br />\nVSCode【推荐】<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/777img15835862524641583586226(1).jpg\" alt=\"15835862261.jpg\" /></p>\n', 1583586256155, 1583460027659, 1, 1, 0, 0);
INSERT INTO `publicArticle` VALUES (18, 10056, 1001, '图片水印测试', '<h2><a id=\"_0\"></a>图片水印</h2>\n<p>商学苑<br />\n<img src=\"https://schoolblogimg.oss-cn-beijing.aliyuncs.com/articleImg/280img15837697129601583126598(1).png?x-oss-process=style/add_watermark\" alt=\"15831265981.png\" /></p>\n', NULL, 1583769961858, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tagName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标签名',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  `createMan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `stauts` int(2) DEFAULT NULL COMMENT '状态（1可用 0不可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1001, 'JavaScript', '2019-12-09', '安耀锋', 1);
INSERT INTO `tag` VALUES (1002, 'node.js', '2019-12-09', '安耀锋', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL COMMENT '类型（区分用户和管理员）',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '昵称',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '姓名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '密码',
  `headImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像地址',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `detail` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '个性签名',
  `sex` int(11) DEFAULT NULL COMMENT '性别0男 1女 2保密',
  `studentID` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学号',
  `college` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '学院',
  `class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '班级',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1001, 0, '妖蜂', '安耀锋', '123456', 'https://schoolblogimg.oss-cn-beijing.aliyuncs.com/userImg/170head1583771412016微信图片_20200310002928.png', 'anyaofeng2019@163.com', '小渣渣一枚', 2, '14219262201', '信息工程学院', '16计本2班', '15258670505');

SET FOREIGN_KEY_CHECKS = 1;
