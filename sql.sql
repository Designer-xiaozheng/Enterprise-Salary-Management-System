DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE `user_registration`(
	   `user_registration_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户注册ID',
`gender` varchar(64) comment '性别',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (user_registration_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '用户注册';

DROP TABLE IF EXISTS `novel_classification`;
CREATE TABLE `novel_classification`(
	   `novel_classification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '小说分类ID',
`novel_type` varchar(64) comment '小说类型',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (novel_classification_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '小说分类';
insert into `novel_classification` values (1,'小说类型1','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (2,'小说类型2','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (3,'小说类型3','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (4,'小说类型4','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (5,'小说类型5','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (6,'小说类型6','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (7,'小说类型7','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_classification` values (8,'小说类型8','0','2022-04-08 17:31:08','2022-04-08 17:31:08');

DROP TABLE IF EXISTS `novel_center`;
CREATE TABLE `novel_center`(
	   `novel_center_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '小说中心ID',
`novel_number` varchar(64) comment '小说编号',
`novel_type` varchar(64) comment '小说类型',
`novel_name` varchar(64) comment '小说名称',
`novel_download` varchar(255) comment '小说下载',
`author` varchar(64) comment '作者',
`time_to_market` date comment '上市时间',
`cover` varchar(255) comment '封面',
`introduction_to_the_novel` text comment '小说简介',
`novel_content` longtext comment '小说内容',
`hits` int(11) DEFAULT 0 NOT NULL comment '点击数',
`praise_len` int(11) DEFAULT 0 NOT NULL comment '点赞数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (novel_center_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '小说中心';
insert into `novel_center` values (1,'小说编号1','小说类型1','小说名称1','点此下载','作者1','2022-4-8','/api/upload/image_1642578083373.jpg','小说简介1','此处可上传文字、图片、视频、超链接、表格等内容区1','438','778','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (2,'小说编号2','小说类型2','小说名称2','点此下载','作者2','2022-4-8','/api/upload/image_1642578083378.jpg','小说简介2','此处可上传文字、图片、视频、超链接、表格等内容区2','271','73','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (3,'小说编号3','小说类型3','小说名称3','点此下载','作者3','2022-4-8','/api/upload/image_1642578083373.jpg','小说简介3','此处可上传文字、图片、视频、超链接、表格等内容区3','487','189','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (4,'小说编号4','小说类型4','小说名称4','点此下载','作者4','2022-4-8','/api/upload/image_1642578083686.jpg','小说简介4','此处可上传文字、图片、视频、超链接、表格等内容区4','223','206','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (5,'小说编号5','小说类型5','小说名称5','点此下载','作者5','2022-4-8','/api/upload/image_1642578083926.jpg','小说简介5','此处可上传文字、图片、视频、超链接、表格等内容区5','761','692','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (6,'小说编号6','小说类型6','小说名称6','点此下载','作者6','2022-4-8','/api/upload/image_1642578083378.jpg','小说简介6','此处可上传文字、图片、视频、超链接、表格等内容区6','876','261','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (7,'小说编号7','小说类型7','小说名称7','点此下载','作者7','2022-4-8','/api/upload/image_1642578083330.jpg','小说简介7','此处可上传文字、图片、视频、超链接、表格等内容区7','331','835','0','2022-04-08 17:31:08','2022-04-08 17:31:08');
insert into `novel_center` values (8,'小说编号8','小说类型8','小说名称8','点此下载','作者8','2022-4-8','/api/upload/image_1642578083926.jpg','小说简介8','此处可上传文字、图片、视频、超链接、表格等内容区8','241','81','0','2022-04-08 17:31:08','2022-04-08 17:31:08');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';

DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '论坛id',
  `display` smallint(5) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `praise_len` int(10) unsigned DEFAULT '0' COMMENT '点赞数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问数',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(125) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `img` text COMMENT '封面图',
  `content` longtext COMMENT '正文',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '发帖人头像：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '论坛分类：[0,1000]用来搜索指定类型的论坛帖',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='论坛：';
insert into `forum` values ('1','100','1','小明','0','149','测试标题','关键字1','描述','#','标签','/static/img/img_temp.jpg','<h1>fafgwagbagbwgwag</h1>',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'http://localhost:5000/upload/jingdian (11)_15.jpg','0');
insert into `forum` values ('2','100','2','小明','0','30','测试标题2','关键字2','dec','#','标签','/static/img/img_temp.jpg','测试文章内容2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('3','100','2','小红','0','42','测试标题3','关键字3','dec2','#','标签','/static/img/img_temp.jpg','测试文章内容3',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
insert into `forum` values ('4','100','2','小红','0','22','测试标题4','关键字4','dec3','#','标签','/static/img/img_temp.jpg','测试文章内容4',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",null,'0');
DROP TABLE IF EXISTS `forum_type`;
CREATE TABLE `forum_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `icon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '分类图标：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='论坛频道：用于汇总浏览论坛，在不同频道下展示不同论坛。';
insert into `forum_type` values ('1','休闲','描述','/article/list?type_id=1','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('2','娱乐','企业信息描述描述描述描述','/article/list?type_id=2','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `forum_type` values ('3','开心','操作帮助描述描述描述','/article/list?type_id=3','0',null,"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `user_group` values ('3','100','用户注册',null,'user_registration','user_registration_id','0','3',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1646905033866.jpeg','744',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1646905033866.jpeg','53',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1646905033862.jpeg','100',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `slides` values ('4','轮播图4','内容4','/article/details?article=4','/api/upload/image_1646905033866.jpeg','902',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
insert into `article` values ('1','唐家三少新书《斗罗大陆V重生唐三》引诸多书迷争议！','小说','495','0',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ",null,null,null,'<p>我忍不住好奇，就进去了解了一下究竟。原来唐家三少今天正式发布新书：《斗罗大陆V重生唐三》，我特意去起点查阅了一下唐家三少的作家页面。好家伙，真是高产，已完结18部作品，而这本新书是他的第19部。作为只看过《斗罗大陆》第一部的我有些傻眼。原来《斗罗大陆》的故事写了这么多部。</p><p>&nbsp;</p><p>为了了解《重生唐三》这本书有没有奇特之处，我特意将书的简介与引子以及仅有的第一章《凉了，要被吃了？》一字不落的看了一遍。</p><p>“一代神王重生于神奇的法蓝世界，他惊讶的发现，这里的一切都是如此的奇妙，他更是运气绝佳的找到了妻子的转世身。可是，她没有前世的记忆，再次相遇已是路人。</p><p>一代神王重生在这对人类并不友好的世界中，能否重新追回妻子。千奇百怪的妖神变又会带给他怎样的重生之路？尽在一代神王至情追妻之旅，斗罗大陆第五部，重生唐三！——《斗罗大陆V唐三重生》</p><p>故事整个设定并没有什么出奇之处，熟悉三少的风格都知道，他不像辰东挖坑之流，基本上结局都是显而易见的。三少的小说已经 形成了完整的闭合套路。基本上是主角很小就懂事，有一门做饭手艺，少年时就能够遇到青梅竹马，上学时遇到一群好基友。然后一路打怪升级，敌人呢貌似很强大。但是在主角光环下 ，对手没有一个天赋能够比肩主角的，而且差的不是一丁半点。所以基本上你不会为主角太过担心。相反你可能有时候觉得敌人不够强大，比较同情后者。</p><p><br></p><p>尽管新书才出第一章，起点一些聪明的书迷已经做了大胆预测：千金豪门妖精小舞姐，人类奴隶出身平平无奇小唐三。通过贴吧以及一些书评区的书迷讨论热度，我发现斗罗人气依旧很高。只是如今斗罗写到第五部，难免会让众多老书迷觉得乏味。并且唐家三少的定位人群，注定让老书迷有一些看不下去。无论是起点、还是贴吧书迷的评论，说的最多的一点就是新书的文笔太过于幼稚，完全是小学生流。唐三三万年的履历的神王，感觉智商不是很在线。</p><p>&nbsp;</p><p>就在今天下午，一位资深的斗罗粉和我聊了很久，他颇为感慨，他说从第一部追到第四部，他严重怀疑斗罗四是不是完全找别人代写？整个斗罗四感觉很混乱，很多内容前后逻辑矛盾，各类伏笔也是没有头绪。他觉得史莱克七怪名存实亡，唯一支持他看下去的是当年的情怀，当年小舞献祭唐三的那份感动。如今他马上参加高考，曾经那句让自己特别有归属感的唐门口号：“你我皆唐门，生在绝世中”，也渐渐远去，也许永远只是存在于懵懂的中学时代。</p><p>&nbsp;</p><p>最后他又补充了一句：当年的我觉得遇到《斗罗大陆》而不枉此生，觉得这里面兄弟情是我向往的手足之情，这里面的爱情就是我期待的样子，只是随着时间推移，我越发觉得那份感动越来越淡。是我自己错了，是我要求高了，斗罗大陆只适合中小学看。斗罗大陆虽然一部接一部，但它只是在重复画圈，它的世界观并没有与我们一起成长。它要的仅仅是小学生人群，这无可厚非。</p><p>&nbsp;</p><p>我记得之前就看到一些资讯报道过，称唐家三少本人亲自说过，他的小说是满满的正能量，不过内容定位人群就是小学生。所以我个人觉得作为已经长大的我们看不下去是十分正常的现象。经历过一些事你会知道，世间绝不是非好即坏，非黑即白。这世界的复杂，人性的复杂，完全不是斗罗大陆那么描述的泾渭分明。&nbsp;</p><p>&nbsp;</p><p>唐家三少的创作的《斗罗大陆》是国内最具影响力之一的网文，改编影视与动漫都十分成功，可以说是现象级的流量。他的成功可圈可点。很多人把唐家三少定位成网文作家，其实在我眼里这不够准确。当初的他可以被看作是一位完整的网文作者，刚起步写网文的他虽然文笔青涩，但是写的那些《惟我独仙》《光之子》《善良的死神》等等，可以看出他是用心、很卖力的写不同类型、不同设定的书，不难想象，这些都耗费了他不少精力。</p><p>&nbsp;</p><p>而如今，三少最大的身份是商业老板，依托自己强大的影响力，依托之前积累的超强斗罗IP，他现在所花的精力与思考的很大一部分，是如何更好的保持自己的热度，如何更好的提升变现能力。根据我的了解，唐家三少基本上网文界里，是首批预售实体书的,实体书的更新速度，高于网络版。这样的操作不难理解，就是可以更好的盈利。</p><p>&nbsp;</p><p>这样一来，为什么三少要写《斗罗大陆V重生唐三》就不难理解了。当然，除了商业化原因，可能唐家三少对唐三这个人物IP情有独钟，毕竟他本人的笔名就是唐家三少，或多或少映射了一些他自己。他就是虚拟世界里的化身。而且木子的离去让他不能够接受，也许他希望借此一段玄幻经历，来回忆表达他与木子的那份真挚的情感。</p>','/api/upload/image_1646910759233.jpeg','今天唐家三少的新书火“出圈”，最近在追天蚕土豆的新书《万相之王》，无意间看到《万相之王》贴吧里有一个帖子日常火爆。帖子名字是：“这就是唐三的大作吗?”');
insert into `article` values ('2','天蚕土豆新书《万相之王》正式登陆！！！','小说','855','0',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ",null,null,null,'<p>5月1日，天蚕土豆新书《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》正式登上书旗小说、UC、夸克等平台。他接受书旗采访，谈及新书的创作灵感，以及在新书中对新风格的尝试。新书更幻想，更青春，文风更轻松幽默，男主性格有点痞，台词更贴近生活。</p><p>天蚕土豆，本名李虎，中国著名网络小说作家，浙江省网络作家协会副主席，橙瓜见证·网络文学20年十大玄幻作家，百强大神作家，百位行业人物。代表作有《斗破苍穹》《武动乾坤》《大主宰》《元尊》等。新书《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》正在连载中。</p><p class="ql-align-center"><img src="https://www.jihuixiaoshuo.com/d/file/2021-05-16/20210516220519_936.png" alt="新书《<a href=https://www.jihuixiaoshuo.com/wxzw target=_blank class=infotextkey>万相之王</a>》登录书旗，天蚕土豆接受采访谈新作变化"></p><p><strong>Q：能简单介绍一下您的写作经历吗？</strong></p><p><strong>天蚕土豆：</strong>大家好，我是天蚕土豆，从2008年开始成为一名网络小说作者，到如今已是第十三个年头了。</p><p>2009年时因为写《斗破苍穹》开始受到大家的关注，之后又创作了《元尊》等作品。现在，大家看到的是新书《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》。</p><p><strong>Q：创作《</strong><a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;"><strong>万相之王</strong></a><strong>》，是因为什么灵感或者契机吗？</strong></p><p><strong>天蚕土豆：</strong>在上部作品《元尊》尚未完结的时候，我就已经开始构思新书了。</p><p>不是突如其来的灵感，而是我一直想写一部风格轻松、画面感强的幻想题材作品，青春活力，带点二次元的感觉，是一个与《元尊》那种古风感有些不同的作品。</p><p><strong>Q：《</strong><a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;"><strong>万相之王</strong></a><strong>》主人公李洛，与您之前的主角相比，有什么不一样吗？</strong></p><p><strong>天蚕土豆：</strong>看过新书的朋友会发现，李洛是个与以往不同的男主角，性格上没有那么主动，没有那么强势，还有点痞、有点“贱”。他不是无所畏惧，也无法一路横推，更像是一个我们生活中会遇到的男孩，喜欢皮一下，装装X。</p><p><strong>Q：新书《</strong><a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;"><strong>万相之王</strong></a><strong>》与前作相比，文风上有较 明显的变化，甚至像个老司机一样车技好、骚话多，这是因为什么而有这些变化呢？</strong></p><p><strong>天蚕土豆：</strong>哈哈，风格是有些变化，更幻想、更青春，文风上也变得轻松、幽默了一点，再加上男主角的性格，说出一些生活化的、比较贴近大家的台词也很合理。</p><p>目前看大家的反馈，这样的尝试还是蛮好的。</p><p><strong>Q：在创作过程中，有什么印象深刻或者有趣开心的事情和大家分享一下吗？</strong></p><p><strong>天蚕土豆：</strong>给大家分享一个我创作中的小故事吧。</p><p>《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》的男主角升级需要海量的资源，为了让资源的价格显得合理，不出现BUG，我是真的在家里拿着计算器，点点戳戳的盘算这个世界的经济，比如男主角的家庭年收入、消费能力、未来赚钱货品的定价、市场的购买力等等。</p><p>数学不好的我，搞这个脑壳青痛，有的时候觉得我是不是在写一个种田文的男主角……</p><p><strong>Q：最后，有什么想和读者说的吗？</strong></p><p>天蚕土豆：感谢大家的支持！希望大家喜欢《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》，把“赞”给我点爆！</p><p>天蚕土豆上一本作品《元尊》曾在书旗取得了非常火爆的成绩，长期位于榜单前列，我们期待他的新书《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》成绩同样火爆，更上一层楼！</p>','/api/upload/image_1646911089169.jpeg','5月1日，天蚕土豆新书《万相之王》正式登上书旗小说、UC、夸克等平台。他接受书旗采访，谈及新书的创作灵感');
insert into `article` values ('3','因为小说角色名与我一样，我遭到了校园暴力！','小说','616','0',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ",null,null,null,'<p class="ql-align-justify">你好，我是今年关注你的一枚喜欢玄幻小说的小萌新。很喜欢你写的一些分析。现在我在追土豆的第二本书《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》感觉不错，但是这两天有点郁闷，我总觉得豆哥在针对我!让我演坏人就算了，就在今天《第八十二章 再遇莫凌》这章节还把我写的这么好色。</p><p class="ql-align-justify">好吧，我承认我一直有暗恋的女神。但我一定是一个从一而终的人 ，因为我喜欢的这个女孩，从小学三年级就开始喜欢了,到现在没有变过。如今我已经上高一了，整整7年多了。都说有七年之痒，但是我本人从来没有痒的感觉。其实本来不怎么郁闷，我也知道我名字叫莫凌只是与小说人物重叠罢了，但是宿舍的几个看《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》的哥们，整天拿虚拟人物“嘲讽”我，说我一个快要领盒饭滚粗的人。但是今天看完小说之后，平时几个交流的小组QQ群里大家又多了一个词汇形容我：“下半身思考的蠢货!” 是可忍孰不可忍，要不是有所顾忌，其中某个极像苍蝇的家伙，我真的想用拳头教他做人，也很想自己将来能换个名字。</p><p class="ql-align-justify">时间：2021.05.23.13:58 书迷：莫凌</p><p class="ql-align-center"><img src="https://www.jihuixiaoshuo.com/d/file/2021-05-25/20210525144834_316.jpg" alt="因为小说角色名与我一样，我遭到了校园暴力！"></p><p class="ql-align-justify">首先，I am sorry to hear that：你的学习与生活中遇到了一些极度像苍蝇的人，挥之不去，这些败类总是玩笑过度，把开心建立在别人的痛苦之上。虽然我觉得你有武力解决问题的能力，但是还是不建议。我能够给的建议是：如果的确有些人让你感到不愉快，那么你可以提出严正交涉，直接对他们表达，你们这样无底线的玩笑方式我不能接受。然后退群，离开他们圈子。这是我能够想到的方式，如果对方依旧没有底线，那么你自己就要反应给老师，动员双方家长相互见面了。总之，学校也是一个小型社会，只要有人的地方就是江湖，江湖是复杂的。所以平时要清楚自己的第一任务就是学习，注意自己的言行，建立好自己的原则与底线。在和睦的同时也要学会 说“不”，这样被一些人挑唆攻击的概率就会减小。</p><p class="ql-align-justify">其实类似小说角色与现实中人冲突的事件也是常有的事情，我记得当初辰东写神墓的书评区，有一个姓杜的书迷，在书评区的愤怒跃然纸上。辰东为此还亲自解释了一番，表达了歉意。</p><p class="ql-align-justify">辰东描绘姓杜的角色名为：杜宇。是杜家年轻一代的八代高手，出场时实力极为强大与嚣张。他将辰家玄功武典修炼到了极致，凝练出了至尊金色真气。奈何，辰家玄功只适合辰家人修炼，魔功有逆转的特殊性。而外族人无法逆转，如逆则死。后期斗争中分别败于辰南与东方长明。最后死于黑起手中。</p><p class="ql-align-justify">其实我个人感觉，杜宇是一个很特别的坏人，他的结局十分悲剧。到了最后辰南自己都一声叹息。他的悲剧完全是他的家族走上背叛之路传承下来的，所有结局已经注定。当时的我看完《神墓》，也是一阵唏嘘。从一开始对自负的杜宇鄙视，后来的说不清的同情。再到最后的天道之战，发觉之前主角辰南所有经历的江湖恩怨冲突，在那一刻变得无比渺小。</p><p class="ql-align-justify">所以，<strong>看小说其实是自己的思想的一场跨次元旅行体验。我们是故事的见证者而已，现实中的我们大不可必把自己完全代入进去。那位暴躁的杜姓书迷着实较真过了头!如此敏感心态看书反而失去了读小说的乐趣。</strong>这样的敏感心态不调整，往后的生活中很容易会过度地将自己关联一些事、一些人，徒增不必要的烦恼而已。</p><p class="ql-align-justify">再说说你的名字“莫凌”，看到你的来信说你自己叫莫凌，我第一直觉就是你爸妈应该人很不错，从给你的取名中，也许对你有特别的期望与祝福。“莫”这个姓，莫姓是中国古老的姓氏之一，最早源于颛顼帝，出自上古时期颛顼帝所建的鄚阳城，属于以居邑名称为氏。目前占全国人口总数的0.18%左右。</p><p class="ql-align-justify">“凌”这个字五行属火，某种意义有凌驾、超过之意。而取名莫凌，我个人觉得你爸妈期待你凡事不要过于要强，要注意平和。如今社会物欲横流 ，网红盛行，社会内卷化严重。绝大部分人都丧失了中正平和心态。前阵子有一则新闻上了热搜，很多家长去医院找医生，说自己孩子有问题，不聪明，后来 医生说了一句让给大众反思深刻的话，我觉得这些孩子都没有问题，有问题的是这些家长。个个都觉得自己的孩子不是龙就是凤，绝大部分的孩子就是资质普通而已，这是一个客观现实问题。只是这些急功近利的家长，不愿接受事实。说句玩笑话，现在绝大部分家长给孩子 取的名字都恨不得把宇宙都囊括了。比如排名第一的男性重名最多的名字：浩宇。父母望子成龙，本身没错。但是父母把跨越阶级，成就财富地位，全部押给孩子，那我请问你们这些家长为啥自己当初不当富一代呢?</p><p class="ql-align-justify">莫凌小书迷你完全没有必要因为一个小小的小说角色而感到沮丧，你可以回去问问你爸妈为什么给你取莫凌这个名字。莫要辜负你爸妈美好祝愿。我觉得你爸妈与 上面描述的这些爸妈很不一样，你爸妈充满智慧。</p><p class="ql-align-justify">有正面人物就有反面人物，其实莫凌这个名字并非第一次出现天蚕土豆小说里，如果你看过他之前的巨作，你应该知道他的第三本书《武动乾坤》里也有一个人物名叫：莫凌。是书中很重要的角色，喜欢他的书迷也不少。他模样超凡俊美，是大炎王朝的三皇子，后期成就也不低，最最关键的点是他与主角林动是挚友。下次再有人说拿《<a href="https://www.jihuixiaoshuo.com/wxzw" rel="noopener noreferrer" target="_blank" style="background-color: transparent;">万相之王</a>》的莫凌说事，你大可以说，此莫凌非彼莫凌，本人是玉树临风的三皇子殿下 ，尔等还不跪安?「投稿说明:一旦投稿，说明您的文字已经完全授权我作分享，投稿邮箱jhxiaoshuo@qq.com，或者直接通过微信公众号私信，我定期选择一些来进行答复。」</p><p><br></p>','/api/upload/image_1646910641783.jpg','因为小说角色名与我一样，我遭到了校园暴力！');
insert into `article` values ('4','辰东六部作品，六大主角一人一句经典语录，血液已沸腾！','小说','129','0',"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ",null,null,null,'<p><br></p><p class="ql-align-center"><img src="https://www.jihuixiaoshuo.com/d/file/2019-03-04/52111d597832cebd3c14feb6515759a7.jpg" alt="辰东六部作品，六大主角一人一句经典语录，血液已沸腾！"></p><p class="ql-align-justify">辰东六部经典小说</p><p class="ql-align-justify">辰东网文小说界的扛把子，著作六部作品，每部作品都堪称经典，尤其是《神墓》这部书，奠定了他在网文界的悬疑挖坑流派之位!《神墓》此书当年的评价极高!被称之为半部神墓可撼《诛仙》,要知道当年的《诛仙》被封为玄幻仙侠界的神作，大有开山鼻祖之姿。不过因为辰迷倍为推崇《神墓》，导致了网络中很多热议。辰东也因此被称为燕京才子。不过，《神墓》之后辰东并未“收敛”，先后创作了各种体系的小说《长生界》、《遮天》等!</p><p class="ql-align-center"><img src="https://www.jihuixiaoshuo.com/d/file/2019-03-04/4d2ee28cb5d418aab7839d65808d2f5e.jpg" alt="辰东六部作品，六大主角一人一句经典语录，血液已沸腾！"></p><p><br></p>','/api/upload/image_1646910566136.jpg','辰东六部作品，六大主角一人一句经典语录，血液已沸腾！');
insert into `article_type` values ('1','100','小说','0',null,null,null,"2022-04-08 09:31:08.000 ","2022-04-08 09:31:08.000 ");
