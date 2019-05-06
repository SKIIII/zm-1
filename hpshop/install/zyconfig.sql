-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2019-03-06 08:25:42
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zypub`
--

-- --------------------------------------------------------

--
-- 表的结构 `zy_zyconfig`
--

CREATE TABLE IF NOT EXISTS `zy_zyconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `config_name` varchar(255) NOT NULL COMMENT '配置名称',
  `model_name` varchar(255) NOT NULL COMMENT '所需模块',
  `item_name` varchar(255) NOT NULL COMMENT '模块项目名',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `api_url` varchar(255) NOT NULL COMMENT 'API地址',
  `explain` text NOT NULL COMMENT '说明',
  `api_explain` text NOT NULL COMMENT 'api说明',
  `key` varchar(255) NOT NULL COMMENT '配置表的关键字',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=142 ;

--
-- 转存表中的数据 `zy_zyconfig`
--

DELETE FROM zy_zyconfig WHERE `item_name`='zyshop';
INSERT INTO `zy_zyconfig` (/*`id`,*/ `config_name`, `model_name`, `item_name`, `url`, `api_url`, `explain`, `api_explain`, `key`) VALUES
('获取商家店铺名称', 'member 会员', 'zyshop', 'localhost/index.php?m=zymember&c=zymember_api&a=zyshop_nickname', '域名/index.php?m=zymember&c=zymember_api&a=zyshop_nickname	', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取店铺的名称	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    ids（*用户id群 例如1,2,3,4以,隔开多个id值)  \r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、请求参数：\r\n\r\n\r\n\r\n 1）请求参数说明：\r\n\r\n    ids（*用户id群 例如1,2,3,4以,隔开多个id值)  \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http post\r\n\r\n\r\n\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":200,"message":"操作成功","data":[{"userid":"12","shopname":"","group":1,"proprietary":0},{"userid":"1","shopname":"自营店铺","group":1,"proprietary":1}]}\r\n\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data: [ ] 数据组\r\n\r\n   data.userid: 用户id\r\n\r\n   data.shopname: 店铺名称\r\n\r\n   data.group: 是否店铺：0否，1是\r\n\r\n   data.proprietary: 是否自营：0否，1是\r\n\r\n\r\n\r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n 200：操作成功\r\n\r\n  -1： 用户id不能为空\r\n\r\n\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=zymember&c=zymember_api&a=zyshop_nickname'',\r\n\r\n  data:{ids:''1,2,3''},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n   {"status":"success","code":200,"message":"操作成功","data":[{"userid":"12","shopname":"","group":1,"proprietary":0},{"userid":"1","shopname":"自营店铺","group":1,"proprietary":1}]}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop1'),
('获取对应推荐位下的商品	', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=recgoods&rid=推荐位id', 'localhost/index.php?m=hpshop&c=goods_api&a=recgoods&rid=推荐位id', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取对应推荐位下的商品	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    rid（*推荐位id)    根据网站实际推荐位决定数据\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取对应推荐位下的商品	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    rid（*推荐位id) \r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get\r\n\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"3","goods_name":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","thumb":"localhost/uploadfile/2019/0304/20190304095655893.jpg","summary":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","market_price":"228.00","shop_price":"220.00"}]}\r\n\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data: [ ] 数据组\r\n\r\n   id: 商品id\r\n\r\n   goods_name: 商品名称\r\n\r\n   thumb: 商品主图\r\n\r\n   summary: 商品简介\r\n\r\n   market_price  市场价\r\n   \r\n   shop_price  本店价\r\n\r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n 1：操作成功\r\n\r\n  -1： 推荐位id不能为空\r\n\r\n\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=recgoods'',\r\n\r\n  data:{rid:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''get'',\r\n\r\n  success:function(res){\r\n\r\n   {"status":"success","code":1,"message":"OK","data":[{"id":"3","goods_name":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","thumb":"localhost/uploadfile/2019/0304/20190304095655893.jpg","summary":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","market_price":"228.00","shop_price":"220.00"}]}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop2'),
('删除购物车商品', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=delcars', 'localhost/index.php?m=hpshop&c=goods_api&a=delcars', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：删除购物车的商品	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    cid （购物车id群 例如1,2,3,4）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：删除购物车的商品	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    cid （购物车id群 例如1,2,3,4）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"删除商品成功"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n 1：操作成功\r\n 0:请先登录\r\n  -1： cid不能为空\r\n  -2：删除操作失败\r\n\r\n\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=delcars'',\r\n\r\n  data:{cid:1,2},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n   {"status":"success","code":1,"message":"删除商品成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop3'),
('购物车商品信息', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=getcarts', 'localhost/index.php?m=hpshop&c=goods_api&a=getcarts', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取购物车商品信息	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取购物车商品信息	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":{"carts":[{"shopid":"12","shopname":"叶洋洋水果店铺","cartinfo":[{"cartid":"12","goodsid":"3","goodsname":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","goodsimg":"localhost/uploadfile/2019/0304/20190304095655893.jpg","goodsspec":null,"goodsspecs":null,"goodsprice":"220.00","cartnum":"10"}]}],"uid":"2"}}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  data.carts  购物车商品集合\r\n\r\n  shopid: 店铺id\r\n\r\n  shopname:店铺名称\r\n\r\n  cartinfo：当前店铺下的商品集合\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=getcarts'',\r\n\r\n  data:{},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":{"carts":[{"shopid":"12","shopname":"叶洋洋水果店铺","cartinfo":[{"cartid":"12","goodsid":"3","goodsname":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","goodsimg":"localhost/uploadfile/2019/0304/20190304095655893.jpg","goodsspec":null,"goodsspecs":null,"goodsprice":"220.00","cartnum":"10"}]}],"uid":"2"}}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop4'),
('分类栏目商品', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=catgoods&catid=分类栏目id', 'localhost/index.php?m=hpshop&c=goods_api&a=catgoods&catid=分类栏目id', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取分类栏目商品信息	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    catid（*栏目id) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取分类栏目商品信息	\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    catid（*栏目id) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get\r\n\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"1","goods_name":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","thumb":"localhost/uploadfile/2019/0226/20190226051315460.jpg","summary":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","market_price":"500.00","shop_price":"369.00"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"1"}}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  data  数据集合\r\n\r\n  page 分页参数\r\n\r\n  pagesize  每页条数\r\n\r\n  totalpage：总页数\r\n\r\n  totalnum：总数据数\r\n  \r\n  id: 商品id\r\n\r\n  goods_name: 商品名称\r\n\r\n  thumb: 商品主图\r\n\r\n  summary: 商品简介\r\n\r\n  market_price  市场价\r\n   \r\n  shop_price  本店价\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n 0:catid不能为空\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=catgoods'',\r\n\r\n  data:{catid:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''get'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"1","goods_name":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","thumb":"localhost/uploadfile/2019/0226/20190226051315460.jpg","summary":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","market_price":"500.00","shop_price":"369.00"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"1"}}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop5'),
('删除商品', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsdel', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsdel', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：删除店铺商品\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：删除店铺商品\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"操作成功"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: gid不能为空\r\n-2：访问异常，非法访问\r\n-3：删除失败\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodsdel'',\r\n\r\n  data:{gid:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"操作成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop6'),
('商城分类', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=allcat', 'localhost/index.php?m=hpshop&c=goods_api&a=allcat', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取所有商品分类信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get/post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取所有商品分类信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get/post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"1","name":"手机","img":"","pid":"0","level":0,"children":[{"id":"3","name":"智能手机","img":"","pid":"1","level":1,"children":[{"id":"4","name":"小米手机","img":"","pid":"3","level":2}]}]},{"id":"2","name":"水果","img":"","pid":"0","level":0}]}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  id:栏目（分类）id\r\n  \r\n  name:栏目名称\r\n\r\n  img:栏目图片\r\n\r\n  pid：上级id\r\n\r\n  level:级数，0级为顶级栏目，依次类推\r\n\r\n  children：子栏目信息\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=allcat'',\r\n\r\n  data:{},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post/get'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"1","name":"手机","img":"","pid":"0","level":0,"children":[{"id":"3","name":"智能手机","img":"","pid":"1","level":1,"children":[{"id":"4","name":"小米手机","img":"","pid":"3","level":2}]}]},{"id":"2","name":"水果","img":"","pid":"0","level":0}]}\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop7'),
('商品搜索', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=sergoods', 'localhost/index.php?m=hpshop&c=goods_api&a=sergoods', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：搜索商品信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    sercon （搜索的内容，非必须) \r\n    uid      （用户id，登录了则传，不传无法记录搜索记录）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：搜索商品信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    sercon （搜索的内容，非必须) \r\n    uid      （用户id，APP端登录了则传，不传无法记录搜索记录）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"3","goods_name":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","thumb":"localhost/uploadfile/2019/0304/20190304095655893.jpg","summary":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","market_price":"228.00","shop_price":"220.00"},{"id":"2","goods_name":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","thumb":"localhost/uploadfile/2019/0301/20190301033830344.jpg","summary":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","market_price":"28.00","shop_price":"26.80"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"2"}}\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  data  数据集合\r\n\r\n  page 分页参数\r\n\r\n  pagesize  每页条数\r\n\r\n  totalpage：总页数\r\n\r\n  totalnum：总数据数\r\n  \r\n  id: 商品id\r\n\r\n  goods_name: 商品名称\r\n\r\n  thumb: 商品主图\r\n\r\n  summary: 商品简介\r\n\r\n  market_price  市场价\r\n   \r\n  shop_price  本店价\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n 0:catid不能为空\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=sergoods'',\r\n\r\n  data:{sercon:''果''},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"3","goods_name":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","thumb":"localhost/uploadfile/2019/0304/20190304095655893.jpg","summary":"泰国黑金刚莲雾 雾莲果当季 进口水果 京东生鲜 8斤","market_price":"228.00","shop_price":"220.00"},{"id":"2","goods_name":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","thumb":"localhost/uploadfile/2019/0301/20190301033830344.jpg","summary":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","market_price":"28.00","shop_price":"26.80"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"2"}},\r\n\r\n});\r\n\r\n</script>', 'zyshop8'),
('用户搜索商品记录', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goods_sh', 'localhost/index.php?m=hpshop&c=goods_api&a=goods_sh', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取用户商品搜索历史记录\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取用户商品搜索历史记录\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":{"hiscon":["动漫","水果","奶粉","零食","手机","红色","尼玛","随便","不知火","丑"]}}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  data  数据集合\r\n\r\n  data.hiscon: 历史搜索记录合集（只记录10个）\r\n\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goods_sh'',\r\n\r\n  data:{},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":{"hiscon":["动漫","水果","奶粉","零食","手机","红色","尼玛","随便","不知火","丑"]}}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>\r\n\r\n\r\n', 'zyshop9'),
('商品上下架', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodssale', 'localhost/index.php?m=hpshop&c=goods_api&a=goodssale', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：操作商品上下架\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：操作商品上下架\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"操作成功"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: gid不能为空\r\n-2：访问异常，非法访问\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodssale'',\r\n\r\n  data:{gid:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"操作成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop10'),
('添加修改及加入购物车', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=operacars', 'localhost/index.php?m=hpshop&c=goods_api&a=operacars', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加及修改购物车\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加及修改购物车\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"操作成功"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: gid，spec，cnum都不能为空\r\n-2：添加失败，无效的商品信息\r\n-3：商品库存不足\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=operacars'',\r\n\r\n  data:{gid:1,spec:1-0,cnum:20},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"操作成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop11'),
('立即购买', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=buynow', 'localhost/index.php?m=hpshop&c=goods_api&a=buynow', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：立刻购买商品前置操作\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：立刻购买商品前置操作\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: gid，spec，cnum都不能为空\r\n-2：添加失败，无效的商品信息\r\n-3：商品库存不足\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=buynow'',\r\n\r\n  data:{gid:1,spec:1-0,cnum:20},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"操作成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop12'),
('订单结算预览', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=settlement', 'localhost/index.php?m=hpshop&c=goods_api&a=settlement', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：商品下单结算预览页，包括立即下单和购物车筛选结算\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    cids（*购物车id群,购物车结算必须，立即购买可不传，一般为数字（一件商品）和1,2,3,4这样的数据)\r\n    met(立即购买时必须传1过来即met = 1)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：商品下单结算预览页，包括立即下单和购物车筛选结算\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    cids（*购物车id群,购物车结算必须，立即购买可不传，一般为数字（一件商品）和1,2,3,4这样的数据)\r\n    met(立即购买时必须传1过来即met = 1)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":{"shops":[{"shopid":"1","shopname":"自营店铺","stprice":3690,"stnum":10,"cartinfo":[{"cartid":"11","goodsid":"1","goodsname":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","goodsimg":"localhost/uploadfile/2019/0226/20190226051315460.jpg","goodsspec":"2-2","goodsspecs":"黄,64G","goodsprice":"369.00","cartnum":"10"}]}],"uid":"1","totalprice":3690,"totalnum":10}}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data  数据集合\r\n\r\n  data.shops  店铺订单集合（多个店铺的数组）\r\n  \r\n  shopid: 店铺id\r\n\r\n  shopname: 店铺名称\r\n\r\n  stprice：当前店铺总消费价格\r\n\r\n  stnum：当前店铺共购买的商品件数\r\n\r\n  cartinfo：订单商品信息合集（多个商品的数组）\r\n\r\n  cartid：商品购物车id\r\n\r\n  goods_id:商品id\r\n\r\n  goods_name: 商品名称\r\n\r\n  goodsimg: 商品主图\r\n\r\n  goodsspec：商品规格参数\r\n\r\n  goodsspecs:商品规格参数中文名\r\n\r\n  goodsprice：单件该商品价格\r\n\r\n  cartnum：结算数量\r\n\r\n  data.uid:当前购买者用户id \r\n\r\n  data.totalprice  当前结算总价格\r\n  \r\n  data.totalnum  当前结算总的商品件数\r\n   \r\n\r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: 访问受限，参数无效 （购物车计算时cids乱传，非当前用户数据）\r\n-2：访问受限，缺少参数（购物车计算时cids为空）\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=settlement'',\r\n\r\n  data:{cids:'''',met:1},或者data:{cids:''1,2,3'',met:0或''''},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n {"status":"success","code":1,"message":"OK","data":{"shops":[{"shopid":"1","shopname":"自营店铺","stprice":3690,"stnum":10,"cartinfo":[{"cartid":"11","goodsid":"1","goodsname":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","goodsimg":"localhost/uploadfile/2019/0226/20190226051315460.jpg","goodsspec":"2-2","goodsspecs":"黄,64G","goodsprice":"369.00","cartnum":"10"}]}],"uid":"1","totalprice":3690,"totalnum":10}}\r\n\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop13'),
('店铺商品', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=myshopgoods', 'localhost/index.php?m=hpshop&c=goods_api&a=myshopgoods', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：店铺商品管理信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，也为店铺id，APP端必传，手机端登录自动获取) \r\n    gstatus（商品状态非必须，传0，1或不传都为已上架商品，2为已下架商品，3为待审核商品（待审核商品包括被驳回和等待审核的商品，差别一个能修改（退稿驳回的），一个不能修改）)\r\n    \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：店铺商品管理信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，也为店铺id，APP端必传，手机端登录自动获取) \r\n    gstatus（商品状态非必须，传0，1或不传都为已上架商品，2为已下架商品，3为待审核商品（待审核商品包括被驳回和等待审核的商品，差别一个能修改（退稿驳回的），一个不能修改）)\r\n    \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"2","goods_name":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","thumb":"localhost/uploadfile/2019/0301/20190301033830344.jpg","summary":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","market_price":"28.00","shop_price":"26.80","on_sale":"1","isok":"1"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"1"}}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data  数据集合\r\n\r\n  page 分页参数\r\n\r\n  pagesize  每页条数\r\n\r\n  totalpage：总页数\r\n\r\n  totalnum：总数据数\r\n  \r\n  id: 商品id\r\n\r\n  goods_name: 商品名称\r\n\r\n  thumb: 商品主图\r\n\r\n  summary: 商品简介\r\n\r\n  market_price  市场价\r\n   \r\n  shop_price  本店价\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=myshopgoods'',\r\n\r\n  data:{gstatus:0},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"2","goods_name":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","thumb":"localhost/uploadfile/2019/0301/20190301033830344.jpg","summary":"鲜菓篮 春见耙耙柑柑橘丑橘不知火 优选5斤钻石果 新鲜水果","market_price":"28.00","shop_price":"26.80","on_sale":"1","isok":"1"}],"page":{"pagesize":10,"totalpage":1,"totalnum":"1"}}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop14'),
('商品详情', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsinfo&gid=商品id', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsinfo&gid=商品id', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：查看商品详情信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    id（*商品id) \r\n    \r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：查看商品详情信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    id（*商品id) \r\n    \r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  get\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":{"id":"1","shopid":"1","goods_name":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","summary":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","thumb":"localhost/uploadfile/2019/0226/20190226051315460.jpg","album":[{"url":"localhost/uploadfile/2019/0226/20190226051315460.jpg","alt":"1"},{"url":"localhost/uploadfile/2019/0226/20190226051348347.jpg","alt":"2"},{"url":"localhost/uploadfile/2019/0226/20190226051348486.jpg","alt":"3"},{"url":"localhost/uploadfile/2019/0226/20190226051349141.jpg","alt":"4"},{"url":"localhost/uploadfile/2019/0226/20190226051349527.jpg","alt":"5"},{"url":"localhost/uploadfile/2019/0226/20190226051349860.jpg","alt":"6"},{"url":"localhost/uploadfile/2019/0226/20190226051349367.jpg","alt":"7"}],"market_price":"500.00","shop_price":"369.00","on_sale":"1","stock":"900","catid":"1","brand_id":"1","type_id":"2","isok":"1","isspec":"1","addtime":"1551338639","specdata":[{"id":"1","specid":"1-1","specids":"红,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"2","specid":"1-2","specids":"红,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"3","specid":"1-3","specids":"红,128G","specprice":"369.00","specstock":"100","status":"1"},{"id":"4","specid":"2-1","specids":"黄,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"5","specid":"2-2","specids":"黄,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"6","specid":"2-3","specids":"黄,128G","specprice":"369.00","specstock":"100","status":"1"},{"id":"7","specid":"3-1","specids":"蓝,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"8","specid":"3-2","specids":"蓝,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"9","specid":"3-3","specids":"蓝,128G","specprice":"369.00","specstock":"100","status":"1"}]}}\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data  数据集合\r\n\r\n  id:商品id\r\n  \r\n  shopid：店铺id\r\n\r\n  goods_name: 商品名称\r\n\r\n  thumb: 商品主图\r\n\r\n  summary: 商品简介\r\n\r\n  market_price  市场价\r\n   \r\n  shop_price  本店价\r\n\r\n  album   商品相册\r\n\r\n  on_sale 1上架   2下架\r\n\r\n  stock：总库存\r\n\r\n  catid：商品所属栏目id\r\n\r\n  brand_id：商品品牌id\r\n   \r\n  type_id：商品所属类型id\r\n\r\n  isok  商品审核状态  1审核通过    2待审核   3被管理员驳回退稿\r\n\r\n  isspec:是否多属性商品   1是   0无属性\r\n\r\n  addtime：商品添加时间\r\n\r\n  specdata： isspec = 1时才有此数据\r\n\r\n  specdata.id: 规格id\r\n\r\n  specdata.specid  规格参数（数字或者类似1-1，1-2-3，以-连接）\r\n\r\n  specdata.specids  规格参数中文名\r\n\r\n  specdata.specprice  规格参数价格\r\n\r\n  specdata.specstock 规格对应库存值\r\n\r\n  specdata.status 规格是否禁用（1启用  0禁用）\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0: gid参数空或异常\r\n-1: 商品不存在或已经下架\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodsinfo'',\r\n\r\n  data:{id:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''get'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":{"id":"1","shopid":"1","goods_name":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","summary":"诺基亚（NOKIA） 3310复刻版 老人机 老人手机 学生机 备用机 功能机 4G版/2G版 清新蓝 4G版本","thumb":"localhost/uploadfile/2019/0226/20190226051315460.jpg","album":[{"url":"localhost/uploadfile/2019/0226/20190226051315460.jpg","alt":"1"},{"url":"localhost/uploadfile/2019/0226/20190226051348347.jpg","alt":"2"},{"url":"localhost/uploadfile/2019/0226/20190226051348486.jpg","alt":"3"},{"url":"localhost/uploadfile/2019/0226/20190226051349141.jpg","alt":"4"},{"url":"localhost/uploadfile/2019/0226/20190226051349527.jpg","alt":"5"},{"url":"localhost/uploadfile/2019/0226/20190226051349860.jpg","alt":"6"},{"url":"localhost/uploadfile/2019/0226/20190226051349367.jpg","alt":"7"}],"market_price":"500.00","shop_price":"369.00","on_sale":"1","stock":"900","catid":"1","brand_id":"1","type_id":"2","isok":"1","isspec":"1","addtime":"1551338639","specdata":[{"id":"1","specid":"1-1","specids":"红,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"2","specid":"1-2","specids":"红,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"3","specid":"1-3","specids":"红,128G","specprice":"369.00","specstock":"100","status":"1"},{"id":"4","specid":"2-1","specids":"黄,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"5","specid":"2-2","specids":"黄,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"6","specid":"2-3","specids":"黄,128G","specprice":"369.00","specstock":"100","status":"1"},{"id":"7","specid":"3-1","specids":"蓝,32G","specprice":"369.00","specstock":"100","status":"1"},{"id":"8","specid":"3-2","specids":"蓝,64G","specprice":"369.00","specstock":"100","status":"1"},{"id":"9","specid":"3-3","specids":"蓝,128G","specprice":"369.00","specstock":"100","status":"1"}]}}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop15');
INSERT INTO `zy_zyconfig` (/*`id`,*/ `config_name`, `model_name`, `item_name`, `url`, `api_url`, `explain`, `api_explain`, `key`) VALUES
('获取商品类型规格数据', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodstypedata', 'localhost/index.php?m=hpshop&c=goods_api&a=goodstypedata', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品类型规格数据\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    fid（*商品类型id)   \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品类型规格数据\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    fid（*商品类型id)   \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":{"spec":[{"specdata":["红","S"],"keys":"1-1","vals":"红,S"},{"specdata":["红","M"],"keys":"1-2","vals":"红,M"},{"specdata":["红","XL"],"keys":"1-3","vals":"红,XL"},{"specdata":["黄","S"],"keys":"2-1","vals":"黄,S"},{"specdata":["黄","M"],"keys":"2-2","vals":"黄,M"},{"specdata":["黄","XL"],"keys":"2-3","vals":"黄,XL"},{"specdata":["蓝","S"],"keys":"3-1","vals":"蓝,S"},{"specdata":["蓝","M"],"keys":"3-2","vals":"蓝,M"},{"specdata":["蓝","XL"],"keys":"3-3","vals":"蓝,XL"}],"specname":[{"attrval":"红,黄,蓝","attrname":"颜色"},{"attrval":"S,M,XL","attrname":"尺寸"}]}}\r\n\r\n无规格时data为null\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n\r\n  data  数据集合\r\n\r\n  data.spec  规格搭配类型合集\r\n\r\n  specdata  规格数据合集\r\n\r\n  keys   规格对应参数\r\n\r\n  vals   规格对应参数中文名\r\n\r\n  data.specname  多属性规格合集（主要该类型有多少条组合参数，如衣服里有尺寸和颜色两种参数）\r\n\r\n  attrval：可选的属性值\r\n\r\n  attrname：规格名字\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0: fid不能为空或异常\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodstypedata'',\r\n\r\n  data:{fid:1},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":{"spec":[{"specdata":["红","S"],"keys":"1-1","vals":"红,S"},{"specdata":["红","M"],"keys":"1-2","vals":"红,M"},{"specdata":["红","XL"],"keys":"1-3","vals":"红,XL"},{"specdata":["黄","S"],"keys":"2-1","vals":"黄,S"},{"specdata":["黄","M"],"keys":"2-2","vals":"黄,M"},{"specdata":["黄","XL"],"keys":"2-3","vals":"黄,XL"},{"specdata":["蓝","S"],"keys":"3-1","vals":"蓝,S"},{"specdata":["蓝","M"],"keys":"3-2","vals":"蓝,M"},{"specdata":["蓝","XL"],"keys":"3-3","vals":"蓝,XL"}],"specname":[{"attrval":"红,黄,蓝","attrname":"颜色"},{"attrval":"S,M,XL","attrname":"尺寸"}]}}\r\n\r\n});\r\n\r\n</script>', 'zyshop16'),
('获取品牌信息', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsbrand', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsbrand', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品品牌数据\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post/get', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品品牌数据\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post/get\r\n\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"2","brandname":"阿迪达斯"},{"id":"1","brandname":"nokia"}]}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  id:品牌id\r\n  \r\n  brandname：品牌名称\r\n\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodsbrand'',\r\n\r\n  data:{},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post/get'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"2","brandname":"阿迪达斯"},{"id":"1","brandname":"nokia"}]}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop17'),
('添加商品', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsadd', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsadd', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加发布商品\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n     \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加发布商品\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n      \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', 'zyshop18'),
('修改商品信息', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsedit', 'localhost/index.php?m=hpshop&c=goods_api&a=goodsedit', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：修改商品信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n     \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：修改商品信息\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', 'zyshop19'),
('确认订单后删除购物车信息', 'hpshop 商品模块', 'zyshop', 'localhost/index.php?m=hpshop&c=goods_api&a=sureMakeOrder', 'localhost/index.php?m=hpshop&c=goods_api&a=sureMakeOrder', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：确认订单后删除购物车信息及计算销量等\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，也为店铺id，APP端必传，手机端登录自动获取) \r\n    cids（*购物车id群，1，2，3，4，购物车计算必须传) \r\n    met  (立即购买的必须传1，购物车结算传0或不传)  \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：确认订单后删除购物车信息及计算销量等\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，也为店铺id，APP端必传，手机端登录自动获取) \r\n    cids（*购物车id群，1，2，3，4，购物车计算必须传) \r\n    met  (立即购买的必须传1，购物车结算传0或不传)  \r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', 'zyshop20'),
('获取商品类型', 'hpshop 商品模块', 'zyshop', 'localhost/zm/index.php?m=hpshop&c=goods_api&a=getgoodstype', 'index.php?m=hpshop&c=goods_api&a=getgoodstype', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品类型\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post/get', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：获取商品类型\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    （无）\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post/get\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"OK","data":[{"id":"2","type_name":"阿迪达斯"}]}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n  id:类型id\r\n  \r\n  type_name：类型名称\r\n\r\n  \r\n\r\n\r\n四、状态信息说明：\r\n\r\n\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=goodsbrand'',\r\n\r\n  data:{},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post/get'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"OK","data":[{"id":"2","type_name":"阿迪达斯"}]}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop21'),
('加入购物车', 'hpshop 商品模块', 'zyshop', 'localhost/zm/index.php?m=hpshop&c=goods_api&a=addbuycar', 'index.php?m=hpshop&c=goods_api&a=addbuycar', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加及修改购物车\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post', '一、应用模块：商品模块      配置来源：商品模块\r\n\r\n二、用途：添加及修改购物车\r\n\r\n三、提供参数：\r\n\r\n 1）请求参数说明：\r\n    uid（*用户id，APP端必传，手机端登录自动获取) \r\n    gid（*商品id必须)\r\n    spec(*规格参数必须，一般为数字或2-2，1-1-3这样的数据)\r\n    cnum(操作数量)\r\n\r\n 2）返回格式： json\r\n\r\n 3）请求方式： http  post\r\n\r\n\r\n二、返回信息 :\r\n\r\n\r\n\r\n  返回格式：{"status":"success","code":1,"message":"操作成功"}\r\n\r\n\r\n\r\n\r\n三、返回字段解释：\r\n\r\n\r\n\r\n  status: 操作成功/操作失败\r\n\r\n  code: 操作状态\r\n\r\n  message: 提示信息\r\n  \r\n\r\n四、状态信息说明：\r\n\r\n 0:请先登录\r\n-1: gid，spec，cnum都不能为空\r\n-2：添加失败，无效的商品信息\r\n-3：商品库存不足\r\n 1：成功\r\n\r\n五、实例代码：\r\n\r\n\r\n\r\n<script type="javascript/text">\r\n\r\n$.ajax({\r\n\r\n  url:''域名/index.php?m=hpshop&c=goods_api&a=operacars'',\r\n\r\n  data:{gid:1,spec:1-0,cnum:20},\r\n\r\n  dataType:''json'',\r\n\r\n  type:''post'',\r\n\r\n  success:function(res){\r\n\r\n  {"status":"success","code":1,"message":"操作成功"}\r\n\r\n  },\r\n\r\n});\r\n\r\n</script>', 'zyshop22');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
