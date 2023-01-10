/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `topic`;
CREATE DATABASE IF NOT EXISTS `topic` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `topic`;

DROP TABLE IF EXISTS `a_department`;
CREATE TABLE IF NOT EXISTS `a_department` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` int DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department`;
INSERT INTO `a_department` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `parent_id`, `sort_order`, `status`, `title`, `is_parent`) VALUES
	(1464487288363945985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 1.00, 0, '人力资源部', b'1'),
	(1464487332064399361, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 2.00, 0, '行政综合部', b'1'),
	(1464487379074158593, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 3.00, 0, '设计研发部', b'1'),
	(1464487406328745985, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 4.00, 0, '财务部', b'0'),
	(1464487432169852929, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 0, 5.00, 0, '综合发展部', b'0'),
	(1464487524662644737, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 1.00, 0, 'HRBP部', b'0'),
	(1464487559647334401, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487288363945985, 2.00, 0, '招聘部', b'0'),
	(1464487623933431809, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 1.00, 0, '安保部', b'0'),
	(1464487656678363137, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 2.00, 0, '保洁部', b'0'),
	(1464487691780493313, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487332064399361, 3.00, 0, '设备维修部', b'0'),
	(1464487733895499777, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 1.00, 0, '视频剪辑部', b'0'),
	(1464487807572643841, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464487379074158593, 2.00, 0, '产品应用部', b'0'),
	(1527834362656198656, 'admin', '2022-05-21 10:11:13', 0, NULL, NULL, 0, 6.00, 0, '客服部', b'0');

DROP TABLE IF EXISTS `a_department_header`;
CREATE TABLE IF NOT EXISTS `a_department_header` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_department_header`;

DROP TABLE IF EXISTS `a_dict`;
CREATE TABLE IF NOT EXISTS `a_dict` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict`;
INSERT INTO `a_dict` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `title`, `type`, `sort_order`) VALUES
	(75135930788220928, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '性别', 'sex', 0.00),
	(75388696739713024, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', '分权限', 'permission_type', 2.00),
	(1536612750841745408, 'admin', '2022-06-14 15:33:23', 0, NULL, NULL, '', '学历', 'education', 3.00),
	(1536613395229446144, 'admin', '2022-06-14 15:35:57', 0, NULL, NULL, '', '在职状态', 'occupationStatus', 4.00);

DROP TABLE IF EXISTS `a_dict_data`;
CREATE TABLE IF NOT EXISTS `a_dict_data` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dict_id` bigint unsigned DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_dict_data`;
INSERT INTO `a_dict_data` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `dict_id`, `sort_order`, `status`, `title`, `value`) VALUES
	(75158227712479232, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 0.00, 0, '男', '男'),
	(75159254272577536, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 1.00, 0, '女', '女'),
	(75159898425397248, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75135930788220928, 2.00, -1, '保密', '保密'),
	(75390787835138048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 0.00, 0, '查看操作(view)', 'view'),
	(75390886501945344, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 1.00, 0, '添加操作(add)', 'add'),
	(75390993939042304, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 2.00, 0, '编辑操作(edit)', 'edit'),
	(75391067532300288, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 3.00, 0, '删除操作(delete)', 'delete'),
	(75391126902673408, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 4.00, 0, '清空操作(clear)', 'clear'),
	(75391192883269632, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 5.00, 0, '启用操作(enable)', 'enable'),
	(75391251024711680, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 6.00, 0, '禁用操作(disable)', 'disable'),
	(75391297124306944, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 7.00, 0, '搜索操作(search)', 'search'),
	(75391343379091456, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 8.00, 0, '上传文件(upload)', 'upload'),
	(75391407526776832, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 9.00, 0, '导出操作(output)', 'output'),
	(75391475042488320, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 10.00, 0, '导入操作(input)', 'input'),
	(75391522182270976, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 11.00, 0, '分配权限(editPerm)', 'editPerm'),
	(75391576364290048, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 12.00, 0, '设为默认(setDefault)', 'setDefault'),
	(75391798033256448, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 75388696739713024, 13.00, 0, '其他操作(other)', 'other'),
	(1536612796106674176, 'admin', '2022-06-14 15:33:34', 0, NULL, NULL, '', 1536612750841745408, 1.00, 0, '博士', '博士'),
	(1536612834962706432, 'admin', '2022-06-14 15:33:43', 0, NULL, NULL, '', 1536612750841745408, 2.00, 0, '硕士', '硕士'),
	(1536612883465637888, 'admin', '2022-06-14 15:33:55', 0, 'admin', '2022-06-14 15:34:13', '', 1536612750841745408, 3.00, 0, '本科', '本科'),
	(1536612930576060416, 'admin', '2022-06-14 15:34:06', 0, 'admin', '2022-06-14 15:34:11', '', 1536612750841745408, 4.00, 0, '专科', '专科'),
	(1536612993519980544, 'admin', '2022-06-14 15:34:21', 0, '', NULL, '', 1536612750841745408, 5.00, 0, '高中及以下', '高中及以下'),
	(1536613425902391296, 'admin', '2022-06-14 15:36:04', 0, NULL, NULL, '', 1536613395229446144, 1.00, 0, '在职', '在职'),
	(1536613447544999936, 'admin', '2022-06-14 15:36:09', 0, NULL, NULL, '', 1536613395229446144, 2.00, 0, '离职', '离职');

DROP TABLE IF EXISTS `a_file`;
CREATE TABLE IF NOT EXISTS `a_file` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint unsigned DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `f_key` varchar(255) DEFAULT NULL,
  `location` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_file`;
INSERT INTO `a_file` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `size`, `type`, `url`, `f_key`, `location`) VALUES
	(1527897791781801984, 'admin', '2022-05-21 14:23:15', 0, NULL, NULL, 'gh_57ba35562a20_258.jpg', 43531, 'image/jpeg', 'C:\\oa-file/20220521/1e07b00ffc20427fbdf2c434231c1e1e.jpg', '1e07b00ffc20427fbdf2c434231c1e1e.jpg', 0),
	(1527897840372813824, 'admin', '2022-05-21 14:23:27', 0, NULL, NULL, '美术版权.xlsx', 3605123, 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'C:\\oa-file/20220521/4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', '4c1dadd45a8a4aca9a9ebd5f3256ba45.xlsx', 0),
	(1527897921570344960, 'admin', '2022-05-21 14:23:46', 0, NULL, NULL, '公司大门通行设备使用说明-V1.pdf', 914877, 'application/pdf', 'C:\\oa-file/20220521/74e865aed9594ea9a9a0536161e40066.pdf', '74e865aed9594ea9a9a0536161e40066.pdf', 0),
	(1527898199690448896, 'admin', '2022-05-21 14:24:52', 0, NULL, NULL, '111.mp4', 180593, 'video/mp4', 'C:\\oa-file/20220521/113344a2389349ed8d02fb7dacfa058f.mp4', '113344a2389349ed8d02fb7dacfa058f.mp4', 0),
	(1527899386892390400, 'admin', '2022-05-21 14:29:36', 0, NULL, NULL, '【模版】需求文档.md.zip', 3104, 'application/x-zip-compressed', 'C:\\oa-file/20220521/dacc0bc61cf34bc18d1259b4ce60d52c.zip', 'dacc0bc61cf34bc18d1259b4ce60d52c.zip', 0),
	(1536614206311370752, 'admin', '2022-06-14 15:39:10', 0, NULL, NULL, '张三签名.png', 1686, 'image/png', 'C:\\\\oa-file/20220614/62a6f2fde5994e5fac6a78aa5ad070ad.png', '62a6f2fde5994e5fac6a78aa5ad070ad.png', 0),
	(1536614698903015424, 'admin', '2022-06-14 15:41:08', 0, NULL, NULL, '张三简历.pdf', 28091, 'application/pdf', 'C:\\\\oa-file/20220614/2a643018f08a4a4bbfacbb19218ab1e2.pdf', '2a643018f08a4a4bbfacbb19218ab1e2.pdf', 0),
	(1612638321681502208, '17859654125', '2023-01-10 10:31:52', 0, NULL, NULL, '2010年下半年 软件设计师 案例分析.docx', 1520124, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'C:\\\\oa-file/20230110/989c7410fdc4477a9629d5c45002dfe1.docx', '989c7410fdc4477a9629d5c45002dfe1.docx', 0),
	(1612638965972733952, '17859654125', '2023-01-10 10:34:26', 0, NULL, NULL, '2010年下半年 软件设计师 案例分析.docx', 1520124, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'C:\\\\oa-file/20230110/9d7c4748fb1a436f87b59376fd614b21.docx', '9d7c4748fb1a436f87b59376fd614b21.docx', 0);

DROP TABLE IF EXISTS `a_log`;
CREATE TABLE IF NOT EXISTS `a_log` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `cost_time` int unsigned DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request_param` longtext,
  `request_type` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `log_type` tinyint(1) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_log`;
INSERT INTO `a_log` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `cost_time`, `ip`, `ip_info`, `name`, `request_param`, `request_type`, `request_url`, `username`, `log_type`, `code`, `device`) VALUES
	(1536883393592168448, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 287, '127.0.0.1', '本地测试', '登录系统', '{"password":"密码隐藏","code":"8817","saveLogin":"true","captchaId":"ef9e5437ff544c8b91d9810febcb58e7","username":"admin"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883393592168449, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 263, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883394787545090, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883395219558400, NULL, '2022-06-15 09:28:50', 0, NULL, '2022-06-15 09:28:50', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883401452294144, NULL, '2022-06-15 09:28:52', 0, NULL, '2022-06-15 09:28:52', 76, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883413934542848, NULL, '2022-06-15 09:28:54', 0, NULL, '2022-06-15 09:28:54', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415226388480, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415259942913, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415280914432, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 94, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","nickname":"","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883415444492288, NULL, '2022-06-15 09:28:55', 0, NULL, '2022-06-15 09:28:55', 36, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420095975424, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883420171472896, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 58, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","departmentId":"","pageSize":"10","sort":"createTime","order":"desc"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883421131968513, NULL, '2022-06-15 09:28:56', 0, NULL, '2022-06-15 09:28:56', 38, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883423262674944, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 50, '127.0.0.1', '本地测试', '查询系统文件', '{"pageNumber":"1","endDate":"","fkey":"","name":"","pageSize":"15","sort":"createTime","type":"","startDate":"","order":"desc"}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771840, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 41, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771841, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 34, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883424516771842, NULL, '2022-06-15 09:28:57', 0, NULL, '2022-06-15 09:28:57', 44, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883426920108032, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883430367825920, NULL, '2022-06-15 09:28:58', 0, NULL, '2022-06-15 09:28:58', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883433186398208, NULL, '2022-06-15 09:28:59', 0, NULL, '2022-06-15 09:28:59', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444859146240, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 50, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883444947226624, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 59, '127.0.0.1', '本地测试', '查询数据字典值', '{"pageNumber":"1","name":"","pageSize":"10","sort":"sortOrder","status":"","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883446968881152, NULL, '2022-06-15 09:29:02', 0, NULL, '2022-06-15 09:29:02', 43, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451238682624, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883451347734528, NULL, '2022-06-15 09:29:03', 0, NULL, '2022-06-15 09:29:03', 65, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883452538916864, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883453881094144, NULL, '2022-06-15 09:29:04', 0, NULL, '2022-06-15 09:29:04', 48, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883466526920704, NULL, '2022-06-15 09:29:07', 0, NULL, '2022-06-15 09:29:07', 42, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883470083690496, NULL, '2022-06-15 09:29:08', 0, NULL, '2022-06-15 09:29:08', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883482377195520, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 41, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883484109443072, NULL, '2022-06-15 09:29:11', 0, NULL, '2022-06-15 09:29:11', 50, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883506003709952, NULL, '2022-06-15 09:29:16', 0, NULL, '2022-06-15 09:29:16', 86, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883509954744320, NULL, '2022-06-15 09:29:17', 0, NULL, '2022-06-15 09:29:17', 38, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1536883517961670656, NULL, '2022-06-15 09:29:19', 0, NULL, '2022-06-15 09:29:19', 39, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","endDate":"","pageSize":"15","sort":"createTime","ipInfo":"","startDate":"","key":"","order":"desc"}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 101.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635091987730432, NULL, '2023-01-10 10:19:02', 0, NULL, '2023-01-10 10:19:02', 462, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"7441","captchaId":"6b73749d3c47429fbe3133c30b1af81c","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635093304741888, NULL, '2023-01-10 10:19:02', 0, NULL, '2023-01-10 10:19:02', 125, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635094734999552, NULL, '2023-01-10 10:19:03', 0, NULL, '2023-01-10 10:19:03', 114, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635096911843328, NULL, '2023-01-10 10:19:03', 0, NULL, '2023-01-10 10:19:03', 23, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635097201250304, NULL, '2023-01-10 10:19:03', 0, NULL, '2023-01-10 10:19:03', 33, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635146152972288, NULL, '2023-01-10 10:19:15', 0, NULL, '2023-01-10 10:19:15', 96, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635146593374208, NULL, '2023-01-10 10:19:15', 0, NULL, '2023-01-10 10:19:15', 37, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635453796782080, NULL, '2023-01-10 10:20:28', 0, NULL, '2023-01-10 10:20:28', 80, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635482632622080, NULL, '2023-01-10 10:20:35', 0, NULL, '2023-01-10 10:20:35', 95, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"125909152017944576","updateBy":"admin","createBy":"admin","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"zwz","title":"毕设选题","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-home","parentId":"0","buttonType":"","description":"","sortOrder":"1","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"0"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635484511670272, NULL, '2023-01-10 10:20:36', 0, NULL, '2023-01-10 10:20:36', 54, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635484633305088, NULL, '2023-01-10 10:20:36', 0, NULL, '2023-01-10 10:20:36', 129, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635484654276608, NULL, '2023-01-10 10:20:36', 0, NULL, '2023-01-10 10:20:36', 134, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635488798248960, NULL, '2023-01-10 10:20:37', 0, NULL, '2023-01-10 10:20:37', 49, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1536599942410407936"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635521643843584, NULL, '2023-01-10 10:20:44', 0, NULL, '2023-01-10 10:20:44', 90, '127.0.0.1', '本地测试', '编辑菜单', '{"id":"1536599942410407936","updateBy":"","createBy":"admin","createTime":"2022-06-14 14:42:30","delFlag":"0","name":"demo","title":"二次开发","level":"0","status":"0","type":"-1","component":"","path":"","icon":"md-bulb","parentId":"0","buttonType":"","description":"","sortOrder":"2","expand":"true","selected":"true","checked":"false","permTypes":"","nodeKey":"16"}', 'POST', '/zwz/permission/edit', 'admin', 2, 'PERMISSION-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635522843414528, NULL, '2023-01-10 10:20:45', 0, NULL, '2023-01-10 10:20:45', 72, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635523518697472, NULL, '2023-01-10 10:20:45', 0, NULL, '2023-01-10 10:20:45', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635523690663936, NULL, '2023-01-10 10:20:45', 0, NULL, '2023-01-10 10:20:45', 134, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635528455393281, NULL, '2023-01-10 10:20:46', 0, NULL, '2023-01-10 10:20:46', 50, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1535166254703316992"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635532750360576, NULL, '2023-01-10 10:20:47', 0, NULL, '2023-01-10 10:20:47', 65, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635672227745792, NULL, '2023-01-10 10:21:20', 0, NULL, '2023-01-10 10:21:20', 92, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"8","buttonType":"","status":"0","path":"/teaMenu","component":"Main","title":"教师模块","name":"teaMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635673993547777, NULL, '2023-01-10 10:21:21', 0, NULL, '2023-01-10 10:21:21', 48, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635673997742080, NULL, '2023-01-10 10:21:21', 0, NULL, '2023-01-10 10:21:21', 92, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635674157125632, NULL, '2023-01-10 10:21:21', 0, NULL, '2023-01-10 10:21:21', 126, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635719384305664, NULL, '2023-01-10 10:21:32', 0, NULL, '2023-01-10 10:21:32', 101, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"9","buttonType":"","status":"0","path":"/stuMenu","component":"Main","title":"学生模块","name":"stuMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635721200439296, NULL, '2023-01-10 10:21:32', 0, NULL, '2023-01-10 10:21:32', 49, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635721204633600, NULL, '2023-01-10 10:21:32', 0, NULL, '2023-01-10 10:21:32', 88, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612635721322074112, NULL, '2023-01-10 10:21:32', 0, NULL, '2023-01-10 10:21:32', 122, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636072381124608, NULL, '2023-01-10 10:22:56', 0, NULL, '2023-01-10 10:22:56', 70, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612635672194191360"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636089070260224, NULL, '2023-01-10 10:23:00', 0, NULL, '2023-01-10 10:23:00', 26, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"125909152017944576"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636182297055232, NULL, '2023-01-10 10:23:22', 0, NULL, '2023-01-10 10:23:22', 54, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"ios-apps","type":"0","parentId":"125909152017944576","level":"1","sortOrder":"10","buttonType":"","status":"0","path":"/adminMenu","component":"Main","title":"教务模块","name":"adminMenu"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636183425323008, NULL, '2023-01-10 10:23:22', 0, NULL, '2023-01-10 10:23:22', 30, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636183937028096, NULL, '2023-01-10 10:23:22', 0, NULL, '2023-01-10 10:23:22', 25, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636184025108480, NULL, '2023-01-10 10:23:22', 0, NULL, '2023-01-10 10:23:22', 76, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636198243799040, NULL, '2023-01-10 10:23:26', 0, NULL, '2023-01-10 10:23:26', 25, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612636182276083712"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636269530189824, NULL, '2023-01-10 10:23:43', 0, NULL, '2023-01-10 10:23:43', 85, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612636182276083712","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"专业档案","component":"topic/major/index","name":"major","path":"major"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636270620708864, NULL, '2023-01-10 10:23:43', 0, NULL, '2023-01-10 10:23:43', 33, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636271300186112, NULL, '2023-01-10 10:23:43', 0, NULL, '2023-01-10 10:23:43', 24, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636271384072192, NULL, '2023-01-10 10:23:43', 0, NULL, '2023-01-10 10:23:43', 45, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636274643046400, NULL, '2023-01-10 10:23:44', 0, NULL, '2023-01-10 10:23:44', 21, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612635672194191360"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636345308680192, NULL, '2023-01-10 10:24:01', 0, NULL, '2023-01-10 10:24:01', 61, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612635672194191360","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"发布课题","name":"topic","component":"topic/topic/index","path":"topic"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636346415976448, NULL, '2023-01-10 10:24:01', 0, NULL, '2023-01-10 10:24:01', 30, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636346994790409, NULL, '2023-01-10 10:24:01', 0, NULL, '2023-01-10 10:24:01', 46, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636347091259392, NULL, '2023-01-10 10:24:01', 0, NULL, '2023-01-10 10:24:01', 77, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636350627057664, NULL, '2023-01-10 10:24:02', 0, NULL, '2023-01-10 10:24:02', 22, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"1612635719350751232"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636419564638208, NULL, '2023-01-10 10:24:19', 0, NULL, '2023-01-10 10:24:19', 88, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612635719350751232","level":"2","sortOrder":"1","buttonType":"","status":"0","title":"学生选题","component":"topic/topicByStudent/index","name":"topicByStudent","path":"topicByStudent"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636420659351552, NULL, '2023-01-10 10:24:19', 0, NULL, '2023-01-10 10:24:19', 59, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636421506600960, NULL, '2023-01-10 10:24:19', 0, NULL, '2023-01-10 10:24:19', 52, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636421691150336, NULL, '2023-01-10 10:24:19', 0, NULL, '2023-01-10 10:24:19', 146, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636477785772032, NULL, '2023-01-10 10:24:32', 0, NULL, '2023-01-10 10:24:32', 86, '127.0.0.1', '本地测试', '添加菜单', '{"icon":"md-aperture","type":"0","parentId":"1612635719350751232","level":"2","sortOrder":"2","buttonType":"","status":"0","title":"我的选题","component":"topic/myTopic/index","name":"myTopic","path":"myTopic"}', 'POST', '/zwz/permission/add', 'admin', 2, 'PERMISSION-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636479572545545, NULL, '2023-01-10 10:24:33', 0, NULL, '2023-01-10 10:24:33', 44, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636479576739841, NULL, '2023-01-10 10:24:33', 0, NULL, '2023-01-10 10:24:33', 115, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636479715151872, NULL, '2023-01-10 10:24:33', 0, NULL, '2023-01-10 10:24:33', 131, '127.0.0.1', '本地测试', '查询全部菜单', '{}', 'GET', '/zwz/permission/getAllList', 'admin', 2, 'PERMISSION-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636503920480256, NULL, '2023-01-10 10:24:39', 0, NULL, '2023-01-10 10:24:39', 138, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636545788022784, NULL, '2023-01-10 10:24:49', 0, NULL, '2023-01-10 10:24:49', 100, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573952","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_ADMIN","dataType":"0","defaultRole":"","description":"教务管理员","_index":"0","_rowKey":"11"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636546907901952, NULL, '2023-01-10 10:24:49', 0, NULL, '2023-01-10 10:24:49', 55, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636566306557952, NULL, '2023-01-10 10:24:53', 0, NULL, '2023-01-10 10:24:53', 47, '127.0.0.1', '本地测试', '编辑角色', '{"id":"496138616573953","updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_USER","dataType":"0","defaultRole":"true","description":"学生","_index":"1","_rowKey":"14"}', 'POST', '/zwz/role/edit', 'admin', 2, 'ROLE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636567892004864, NULL, '2023-01-10 10:24:54', 0, NULL, '2023-01-10 10:24:54', 48, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636599173124096, NULL, '2023-01-10 10:25:01', 0, NULL, '2023-01-10 10:25:01', 88, '127.0.0.1', '本地测试', '新增角色', '{"updateBy":"admin","updateTime":"2022-03-20 09:46:20","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","name":"ROLE_TEACHER","dataType":"0","defaultRole":"true","description":"老师","_index":"1","_rowKey":"14"}', 'POST', '/zwz/role/save', 'admin', 2, 'ROLE-05', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636601027006464, NULL, '2023-01-10 10:25:02', 0, NULL, '2023-01-10 10:25:02', 57, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636608912297984, NULL, '2023-01-10 10:25:04', 0, NULL, '2023-01-10 10:25:04', 42, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636614041931776, NULL, '2023-01-10 10:25:05', 0, NULL, '2023-01-10 10:25:05', 45, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636614046126082, NULL, '2023-01-10 10:25:05', 0, NULL, '2023-01-10 10:25:05', 83, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636614134206464, NULL, '2023-01-10 10:25:05', 0, NULL, '2023-01-10 10:25:05', 101, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636614167760896, NULL, '2023-01-10 10:25:05', 0, NULL, '2023-01-10 10:25:05', 123, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636614616551424, NULL, '2023-01-10 10:25:05', 0, NULL, '2023-01-10 10:25:05', 51, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636754647584768, NULL, '2023-01-10 10:25:38', 0, NULL, '2023-01-10 10:25:38', 90, '127.0.0.1', '本地测试', '管理员修改资料', '{"id":"1527830053524738048","updateBy":"","updateTime":"","createBy":"admin","createTime":"2022-05-21 09:54:05","delFlag":"0","nickname":"学生A","username":"user4","password":"","passStrength":"弱","mobile":"17896525487","departmentId":"1464487332064399361","departmentTitle":"行政综合部","email":"user4@qq.com","sex":"男","address":"[\\"110000\\",\\"110100\\",\\"110106\\"]","type":"0","myDoor":"","status":"0","avatar":"https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0","defaultRole":"","_index":"0","_rowKey":"20","addressArray":"110000,110100,110106","roleIds":"496138616573953"}', 'POST', '/zwz/user/admin/edit', 'admin', 2, 'USER-11', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636755696160768, NULL, '2023-01-10 10:25:39', 0, NULL, '2023-01-10 10:25:39', 48, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636790022344704, NULL, '2023-01-10 10:25:47', 0, NULL, '2023-01-10 10:25:47', 92, '127.0.0.1', '本地测试', '管理员修改资料', '{"id":"1464772465946398721","updateBy":"admin","updateTime":"2022-05-21 09:53:33","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","nickname":"学生B","username":"17859654121","password":"","passStrength":"","mobile":"17859654121","departmentId":"1464487432169852929","departmentTitle":"综合发展部","email":"17859654121@qq.com","sex":"女","address":"[\\"110000\\",\\"110100\\",\\"110105\\"]","type":"0","myDoor":"","status":"0","avatar":"https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0","defaultRole":"","_index":"3","_rowKey":"27","addressArray":"110000,110100,110105","roleIds":"496138616573953"}', 'POST', '/zwz/user/admin/edit', 'admin', 2, 'USER-11', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636791792340992, NULL, '2023-01-10 10:25:47', 0, NULL, '2023-01-10 10:25:47', 49, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636829553659904, NULL, '2023-01-10 10:25:56', 0, NULL, '2023-01-10 10:25:56', 83, '127.0.0.1', '本地测试', '管理员修改资料', '{"id":"1464764315201572865","updateBy":"admin","updateTime":"2022-05-21 09:11:48","createBy":"","createTime":"2022-03-20 09:46:20","delFlag":"0","nickname":"教师","username":"17859654125","password":"","passStrength":"","mobile":"17859654125","departmentId":"1464487332064399361","departmentTitle":"行政综合部","email":"17859654125@qq.com","sex":"男","address":"","type":"0","myDoor":"","status":"-1","avatar":"https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0","defaultRole":"","_index":"2","_rowKey":"30","addressArray":"","roleIds":"1612636599156346880"}', 'POST', '/zwz/user/admin/edit', 'admin', 2, 'USER-11', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636831399153664, NULL, '2023-01-10 10:25:57', 0, NULL, '2023-01-10 10:25:57', 61, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636841775861760, NULL, '2023-01-10 10:25:59', 0, NULL, '2023-01-10 10:25:59', 44, '127.0.0.1', '本地测试', '启用用户', '{"id":"1464764315201572865"}', 'POST', '/zwz/user/enable', 'admin', 2, 'USER-14', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636843424223232, NULL, '2023-01-10 10:26:00', 0, NULL, '2023-01-10 10:26:00', 56, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636872465584128, NULL, '2023-01-10 10:26:06', 0, NULL, '2023-01-10 10:26:06', 85, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612636876072685568, NULL, '2023-01-10 10:26:07', 0, NULL, '2023-01-10 10:26:07', 70, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637281678659584, NULL, '2023-01-10 10:27:44', 0, NULL, '2023-01-10 10:27:44', 108, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573952","permIds":"125909152017944576,1464484663442673664,5129710648430593,1464485105081913345,40238597734928384,1464485485316542465,56309618086776832,5129710648430592,5129710648430594,5129710648430595,1530689520276738048,1530689602321518592,39915540965232640,41363147411427328,1535166254703316992,1535166438371889152,1612636182276083712,1612636269454692352,1536599942410407936,1536600125332393984,1536600268379131904,1536604417711804416,1536606273959759872,1536606372668510208,1536606464712511488,1536606550951596032,1536606637815631872,1536875505901506560"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637282769178624, NULL, '2023-01-10 10:27:44', 0, NULL, '2023-01-10 10:27:44', 67, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637283612233728, NULL, '2023-01-10 10:27:44', 0, NULL, '2023-01-10 10:27:44', 46, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637307477823488, NULL, '2023-01-10 10:27:50', 0, NULL, '2023-01-10 10:27:50', 97, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"496138616573953","permIds":"125909152017944576,1612635719350751232,1612636419547860992,1612636477756411904"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637309222653956, NULL, '2023-01-10 10:27:51', 0, NULL, '2023-01-10 10:27:51', 46, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637309285568512, NULL, '2023-01-10 10:27:51', 0, NULL, '2023-01-10 10:27:51', 113, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637335650963456, NULL, '2023-01-10 10:27:57', 0, NULL, '2023-01-10 10:27:57', 81, '127.0.0.1', '本地测试', '修改菜单权限', '{"roleId":"1612636599156346880","permIds":"125909152017944576,1612635672194191360,1612636345279320064"}', 'POST', '/zwz/role/editRolePerm', 'admin', 2, 'ROLE-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637337530011648, NULL, '2023-01-10 10:27:57', 0, NULL, '2023-01-10 10:27:57', 68, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637337664229376, NULL, '2023-01-10 10:27:57', 0, NULL, '2023-01-10 10:27:57', 141, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637722785222656, NULL, '2023-01-10 10:29:29', 0, NULL, '2023-01-10 10:29:29', 101, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637740413882368, NULL, '2023-01-10 10:29:33', 0, NULL, '2023-01-10 10:29:33', 47, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637741206605824, NULL, '2023-01-10 10:29:34', 0, NULL, '2023-01-10 10:29:34', 526, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637746826973184, NULL, '2023-01-10 10:29:35', 0, NULL, '2023-01-10 10:29:35', 279, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637751394570240, NULL, '2023-01-10 10:29:36', 0, NULL, '2023-01-10 10:29:36', 78, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637751444901888, NULL, '2023-01-10 10:29:36', 0, NULL, '2023-01-10 10:29:36', 96, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637753256841222, NULL, '2023-01-10 10:29:36', 0, NULL, '2023-01-10 10:29:36', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637758222897152, NULL, '2023-01-10 10:29:38', 0, NULL, '2023-01-10 10:29:38', 53, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637759019814916, NULL, '2023-01-10 10:29:38', 0, NULL, '2023-01-10 10:29:38', 41, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637759506354176, NULL, '2023-01-10 10:29:38', 0, NULL, '2023-01-10 10:29:38', 46, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637769304248320, NULL, '2023-01-10 10:29:40', 0, NULL, '2023-01-10 10:29:40', 49, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637776291958785, NULL, '2023-01-10 10:29:42', 0, NULL, '2023-01-10 10:29:42', 45, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637825461784576, NULL, '2023-01-10 10:29:54', 0, NULL, '2023-01-10 10:29:54', 82, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"majorZWZ666user-adminZWZ666department-adminZWZ666file-adminZWZ666role-manageZWZ666menu-manage"}', 'POST', '/zwz/myDoor/setMyDoorList', 'admin', 2, 'MY-DOOR-03', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637831166038025, NULL, '2023-01-10 10:29:55', 0, NULL, '2023-01-10 10:29:55', 100, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637835184181248, NULL, '2023-01-10 10:29:56', 0, NULL, '2023-01-10 10:29:56', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637836496998401, NULL, '2023-01-10 10:29:56', 0, NULL, '2023-01-10 10:29:56', 46, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637836501192707, NULL, '2023-01-10 10:29:56', 0, NULL, '2023-01-10 10:29:56', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637836530552832, NULL, '2023-01-10 10:29:56', 0, NULL, '2023-01-10 10:29:56', 100, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637836723490821, NULL, '2023-01-10 10:29:56', 0, NULL, '2023-01-10 10:29:56', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637862329716736, NULL, '2023-01-10 10:30:02', 0, NULL, '2023-01-10 10:30:02', 59, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"4504","captchaId":"7c8358d5372c44e3a1d2718729adc08f","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637863755780096, NULL, '2023-01-10 10:30:03', 0, NULL, '2023-01-10 10:30:03', 29, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637864816939008, NULL, '2023-01-10 10:30:03', 0, NULL, '2023-01-10 10:30:03', 30, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637866205253632, NULL, '2023-01-10 10:30:03', 0, NULL, '2023-01-10 10:30:03', 32, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637866599518208, NULL, '2023-01-10 10:30:03', 0, NULL, '2023-01-10 10:30:03', 25, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637875357224960, NULL, '2023-01-10 10:30:06', 0, NULL, '2023-01-10 10:30:06', 22, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'user4', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637887310991360, NULL, '2023-01-10 10:30:08', 0, NULL, '2023-01-10 10:30:08', 27, '127.0.0.1', '本地测试', '修改个人门户菜单', '{"str":"topicByStudentZWZ666myTopic"}', 'POST', '/zwz/myDoor/setMyDoorList', 'user4', 2, 'MY-DOOR-03', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612637891295580160, NULL, '2023-01-10 10:30:09', 0, NULL, '2023-01-10 10:30:09', 59, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638012448051200, NULL, '2023-01-10 10:30:38', 0, NULL, '2023-01-10 10:30:38', 80, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"5511","captchaId":"37df04c7a8b947529d3cf4dd9f7565f2","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638012489994240, NULL, '2023-01-10 10:30:38', 0, NULL, '2023-01-10 10:30:38', 85, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638014352265216, NULL, '2023-01-10 10:30:39', 0, NULL, '2023-01-10 10:30:39', 55, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638014922690563, NULL, '2023-01-10 10:30:39', 0, NULL, '2023-01-10 10:30:39', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638016822710272, NULL, '2023-01-10 10:30:39', 0, NULL, '2023-01-10 10:30:39', 44, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638017078562817, NULL, '2023-01-10 10:30:39', 0, NULL, '2023-01-10 10:30:39', 48, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638026918400000, NULL, '2023-01-10 10:30:42', 0, NULL, '2023-01-10 10:30:42', 42, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638026926788610, NULL, '2023-01-10 10:30:42', 0, NULL, '2023-01-10 10:30:42', 48, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638027107143680, NULL, '2023-01-10 10:30:42', 0, NULL, '2023-01-10 10:30:42', 47, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638027144892416, NULL, '2023-01-10 10:30:42', 0, NULL, '2023-01-10 10:30:42', 51, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638028218634240, NULL, '2023-01-10 10:30:42', 0, NULL, '2023-01-10 10:30:42', 55, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638064717467648, NULL, '2023-01-10 10:30:51', 0, NULL, '2023-01-10 10:30:51', 86, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654125","password":"","code":"1470","captchaId":"32bef65a9a0d4e9eb1d16065dfd4aae8","saveLogin":"true"}', 'POST', '/zwz/login', '17859654125', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638066059644928, NULL, '2023-01-10 10:30:51', 0, NULL, '2023-01-10 10:30:51', 45, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654125', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638067271798784, NULL, '2023-01-10 10:30:51', 0, NULL, '2023-01-10 10:30:51', 58, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638067934498816, NULL, '2023-01-10 10:30:51', 0, NULL, '2023-01-10 10:30:51', 42, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638068915965952, NULL, '2023-01-10 10:30:52', 0, NULL, '2023-01-10 10:30:52', 95, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654125', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638321765388288, NULL, '2023-01-10 10:31:52', 0, NULL, '2023-01-10 10:31:52', 96, '127.0.0.1', '本地测试', '文件上传', '{}', 'POST', '/zwz/upload/file', '17859654125', 2, 'FILE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638398072360960, NULL, '2023-01-10 10:32:10', 0, NULL, '2023-01-10 10:32:10', 90, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"4214","captchaId":"4cdff959d26c4b75b2aeed74448a4e42","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638398110109696, NULL, '2023-01-10 10:32:10', 0, NULL, '2023-01-10 10:32:10', 78, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638400064655360, NULL, '2023-01-10 10:32:11', 0, NULL, '2023-01-10 10:32:11', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638400635080705, NULL, '2023-01-10 10:32:11', 0, NULL, '2023-01-10 10:32:11', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638406733598724, NULL, '2023-01-10 10:32:12', 0, NULL, '2023-01-10 10:32:12', 47, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638406737793026, NULL, '2023-01-10 10:32:12', 0, NULL, '2023-01-10 10:32:12', 45, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638406872010755, NULL, '2023-01-10 10:32:12', 0, NULL, '2023-01-10 10:32:12', 83, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638406897176576, NULL, '2023-01-10 10:32:12', 0, NULL, '2023-01-10 10:32:12', 96, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638408079970304, NULL, '2023-01-10 10:32:13', 0, NULL, '2023-01-10 10:32:13', 43, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638431727456256, NULL, '2023-01-10 10:32:18', 0, NULL, '2023-01-10 10:32:18', 83, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"4334","captchaId":"4e5828c75d2f411b8322162837876a5e","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638431761010688, NULL, '2023-01-10 10:32:18', 0, NULL, '2023-01-10 10:32:18', 83, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638433518424064, NULL, '2023-01-10 10:32:19', 0, NULL, '2023-01-10 10:32:19', 55, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638434009157632, NULL, '2023-01-10 10:32:19', 0, NULL, '2023-01-10 10:32:19', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638435934343168, NULL, '2023-01-10 10:32:19', 0, NULL, '2023-01-10 10:32:19', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638436194390016, NULL, '2023-01-10 10:32:19', 0, NULL, '2023-01-10 10:32:19', 58, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638495413768192, NULL, '2023-01-10 10:32:33', 0, NULL, '2023-01-10 10:32:33', 88, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"7241","captchaId":"169fe43bfbb64bef88cab01d6ccb759e","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638496743362560, NULL, '2023-01-10 10:32:34', 0, NULL, '2023-01-10 10:32:34', 240, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638497821298688, NULL, '2023-01-10 10:32:34', 0, NULL, '2023-01-10 10:32:34', 129, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638501659086848, NULL, '2023-01-10 10:32:35', 0, NULL, '2023-01-10 10:32:35', 113, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638501885579264, NULL, '2023-01-10 10:32:35', 0, NULL, '2023-01-10 10:32:35', 313, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638506620948480, NULL, '2023-01-10 10:32:36', 0, NULL, '2023-01-10 10:32:36', 40, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638506633531392, NULL, '2023-01-10 10:32:36', 0, NULL, '2023-01-10 10:32:36', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638506780332032, NULL, '2023-01-10 10:32:36', 0, NULL, '2023-01-10 10:32:36', 40, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638506809692161, NULL, '2023-01-10 10:32:36', 0, NULL, '2023-01-10 10:32:36', 94, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638507992485889, NULL, '2023-01-10 10:32:36', 0, NULL, '2023-01-10 10:32:36', 50, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638532210397184, NULL, '2023-01-10 10:32:42', 0, NULL, '2023-01-10 10:32:42', 81, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654125","password":"","code":"4775","captchaId":"81831c78ac0f4185a9668c455c866ef4","saveLogin":"true"}', 'POST', '/zwz/login', '17859654125', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638533615489024, NULL, '2023-01-10 10:32:42', 0, NULL, '2023-01-10 10:32:42', 54, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654125', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638534659870720, NULL, '2023-01-10 10:32:43', 0, NULL, '2023-01-10 10:32:43', 39, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638535582617600, NULL, '2023-01-10 10:32:43', 0, NULL, '2023-01-10 10:32:43', 44, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638536396312576, NULL, '2023-01-10 10:32:43', 0, NULL, '2023-01-10 10:32:43', 69, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654125', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638778827083776, NULL, '2023-01-10 10:33:41', 0, NULL, '2023-01-10 10:33:41', 100, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"0308","captchaId":"d42d46458ba045ec96dcd556675d336a","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638780181843968, NULL, '2023-01-10 10:33:41', 0, NULL, '2023-01-10 10:33:41', 38, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638781326888960, NULL, '2023-01-10 10:33:42', 0, NULL, '2023-01-10 10:33:42', 49, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638786049675264, NULL, '2023-01-10 10:33:43', 0, NULL, '2023-01-10 10:33:43', 61, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638786389413888, NULL, '2023-01-10 10:33:43', 0, NULL, '2023-01-10 10:33:43', 60, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638793251295233, NULL, '2023-01-10 10:33:44', 0, NULL, '2023-01-10 10:33:44', 45, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638793263878144, NULL, '2023-01-10 10:33:44', 0, NULL, '2023-01-10 10:33:44', 93, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638793289043968, NULL, '2023-01-10 10:33:44', 0, NULL, '2023-01-10 10:33:44', 104, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638793330987008, NULL, '2023-01-10 10:33:44', 0, NULL, '2023-01-10 10:33:44', 124, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638795046457349, NULL, '2023-01-10 10:33:45', 0, NULL, '2023-01-10 10:33:45', 52, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638862348259328, NULL, '2023-01-10 10:34:01', 0, NULL, '2023-01-10 10:34:01', 103, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638863661076480, NULL, '2023-01-10 10:34:01', 0, NULL, '2023-01-10 10:34:01', 57, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638863682048000, NULL, '2023-01-10 10:34:01', 0, NULL, '2023-01-10 10:34:01', 88, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638863715602432, NULL, '2023-01-10 10:34:01', 0, NULL, '2023-01-10 10:34:01', 87, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638864101478406, NULL, '2023-01-10 10:34:01', 0, NULL, '2023-01-10 10:34:01', 44, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638894237552640, NULL, '2023-01-10 10:34:09', 0, NULL, '2023-01-10 10:34:09', 77, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654125","password":"","code":"0388","captchaId":"e91a5f2ed55e47bfa0dd715d77b81d7b","saveLogin":"true"}', 'POST', '/zwz/login', '17859654125', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638895600701440, NULL, '2023-01-10 10:34:09', 0, NULL, '2023-01-10 10:34:09', 43, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654125', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638896745746432, NULL, '2023-01-10 10:34:09', 0, NULL, '2023-01-10 10:34:09', 47, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638898176004096, NULL, '2023-01-10 10:34:09', 0, NULL, '2023-01-10 10:34:09', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638899207802880, NULL, '2023-01-10 10:34:10', 0, NULL, '2023-01-10 10:34:10', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654125', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612638966035648512, NULL, '2023-01-10 10:34:26', 0, NULL, '2023-01-10 10:34:26', 100, '127.0.0.1', '本地测试', '文件上传', '{}', 'POST', '/zwz/upload/file', '17859654125', 2, 'FILE-06', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639028853739520, NULL, '2023-01-10 10:34:41', 0, NULL, '2023-01-10 10:34:41', 79, '127.0.0.1', '本地测试', '登录系统', '{"username":"user4","password":"","code":"7366","captchaId":"ce645358fabc4f168fe7d3ba5a4260e5","saveLogin":"true"}', 'POST', '/zwz/login', 'user4', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639028920848384, NULL, '2023-01-10 10:34:41', 0, NULL, '2023-01-10 10:34:41', 76, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'user4', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639030653095936, NULL, '2023-01-10 10:34:41', 0, NULL, '2023-01-10 10:34:41', 47, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639031248687104, NULL, '2023-01-10 10:34:41', 0, NULL, '2023-01-10 10:34:41', 56, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639033312284672, NULL, '2023-01-10 10:34:42', 0, NULL, '2023-01-10 10:34:42', 43, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'user4', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639033744297984, NULL, '2023-01-10 10:34:42', 0, NULL, '2023-01-10 10:34:42', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'user4', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639103537516544, NULL, '2023-01-10 10:34:58', 0, NULL, '2023-01-10 10:34:58', 78, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"0261","captchaId":"5910e850022a41659e005b86c7af8847","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639104892276736, NULL, '2023-01-10 10:34:59', 0, NULL, '2023-01-10 10:34:59', 52, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639106058293248, NULL, '2023-01-10 10:34:59', 0, NULL, '2023-01-10 10:34:59', 45, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639108151250944, NULL, '2023-01-10 10:34:59', 0, NULL, '2023-01-10 10:34:59', 62, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639108621012992, NULL, '2023-01-10 10:35:00', 0, NULL, '2023-01-10 10:35:00', 50, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639113117306880, NULL, '2023-01-10 10:35:01', 0, NULL, '2023-01-10 10:35:01', 39, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639113125695488, NULL, '2023-01-10 10:35:01', 0, NULL, '2023-01-10 10:35:01', 86, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639113142472704, NULL, '2023-01-10 10:35:01', 0, NULL, '2023-01-10 10:35:01', 78, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639113171832832, NULL, '2023-01-10 10:35:01', 0, NULL, '2023-01-10 10:35:01', 96, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639114832777221, NULL, '2023-01-10 10:35:01', 0, NULL, '2023-01-10 10:35:01', 40, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639137377161216, NULL, '2023-01-10 10:35:06', 0, NULL, '2023-01-10 10:35:06', 91, '127.0.0.1', '本地测试', '登录系统', '{"username":"17859654125","password":"","code":"3285","captchaId":"4acb557f2b8643e093c80be8b5e54e49","saveLogin":"true"}', 'POST', '/zwz/login', '17859654125', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639138748698624, NULL, '2023-01-10 10:35:07', 0, NULL, '2023-01-10 10:35:07', 57, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', '17859654125', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639139889549312, NULL, '2023-01-10 10:35:07', 0, NULL, '2023-01-10 10:35:07', 62, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639143156912128, NULL, '2023-01-10 10:35:08', 0, NULL, '2023-01-10 10:35:08', 53, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', '17859654125', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639143408570368, NULL, '2023-01-10 10:35:08', 0, NULL, '2023-01-10 10:35:08', 54, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', '17859654125', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639183837466624, NULL, '2023-01-10 10:35:18', 0, NULL, '2023-01-10 10:35:18', 83, '127.0.0.1', '本地测试', '登录系统', '{"username":"admin","password":"","code":"2061","captchaId":"c943dcb3ebae4133883c0e1995db7512","saveLogin":"true"}', 'POST', '/zwz/login', 'admin', 1, '', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639185221586944, NULL, '2023-01-10 10:35:18', 0, NULL, '2023-01-10 10:35:18', 44, '127.0.0.1', '本地测试', '获取当前登录用户', '{}', 'GET', '/zwz/user/info', 'admin', 2, 'USER-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639186383409152, NULL, '2023-01-10 10:35:18', 0, NULL, '2023-01-10 10:35:18', 51, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639188522504192, NULL, '2023-01-10 10:35:19', 0, NULL, '2023-01-10 10:35:19', 53, '127.0.0.1', '本地测试', '查询菜单', '{}', 'GET', '/zwz/permission/getMenuList', 'admin', 2, 'PERMISSION-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639189025820672, NULL, '2023-01-10 10:35:19', 0, NULL, '2023-01-10 10:35:19', 52, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639194142871552, NULL, '2023-01-10 10:35:20', 0, NULL, '2023-01-10 10:35:20', 51, '127.0.0.1', '本地测试', '查询全部角色', '{}', 'GET', '/zwz/role/getAllList', 'admin', 2, 'ROLE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639194155454464, NULL, '2023-01-10 10:35:20', 0, NULL, '2023-01-10 10:35:20', 92, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639194168037378, NULL, '2023-01-10 10:35:20', 0, NULL, '2023-01-10 10:35:20', 96, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639194197397505, NULL, '2023-01-10 10:35:20', 0, NULL, '2023-01-10 10:35:20', 120, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639195891896320, NULL, '2023-01-10 10:35:20', 0, NULL, '2023-01-10 10:35:20', 45, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639215873560576, NULL, '2023-01-10 10:35:25', 0, NULL, '2023-01-10 10:35:25', 51, '127.0.0.1', '本地测试', '禁用用户', '{"id":"1527830053524738048"}', 'POST', '/zwz/user/disable', 'admin', 2, 'USER-13', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639217047965696, NULL, '2023-01-10 10:35:25', 0, NULL, '2023-01-10 10:35:25', 56, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639223586885632, NULL, '2023-01-10 10:35:27', 0, NULL, '2023-01-10 10:35:27', 49, '127.0.0.1', '本地测试', '启用用户', '{"id":"1527830053524738048"}', 'POST', '/zwz/user/enable', 'admin', 2, 'USER-14', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639225231052801, NULL, '2023-01-10 10:35:27', 0, NULL, '2023-01-10 10:35:27', 46, '127.0.0.1', '本地测试', '查询用户', '{"nickname":"","departmentId":"","pageNumber":"1","pageSize":"20","sort":"createTime","order":"desc"}', 'GET', '/zwz/user/getUserList', 'admin', 2, 'USER-07', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639240980664320, NULL, '2023-01-10 10:35:31', 0, NULL, '2023-01-10 10:35:31', 56, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639242272509952, NULL, '2023-01-10 10:35:31', 0, NULL, '2023-01-10 10:35:31', 47, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639242519973894, NULL, '2023-01-10 10:35:32', 0, NULL, '2023-01-10 10:35:32', 47, '127.0.0.1', '本地测试', '查询子部门', '{}', 'GET', '/zwz/department/getByParentId', 'admin', 2, 'DEP-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639248735932416, NULL, '2023-01-10 10:35:33', 0, NULL, '2023-01-10 10:35:33', 45, '127.0.0.1', '本地测试', '根据部门查询用户', '{"departmentId":"1464487379074158593"}', 'GET', '/zwz/user/getByDepartmentId', 'admin', 2, 'USER-08', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639248761098240, NULL, '2023-01-10 10:35:33', 0, NULL, '2023-01-10 10:35:33', 96, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":"1464487379074158593"}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639252347228160, NULL, '2023-01-10 10:35:34', 0, NULL, '2023-01-10 10:35:34', 95, '127.0.0.1', '本地测试', '查询用户', '{"pageNumber":"1","pageSize":"10","sort":"createTime","order":"desc","departmentId":""}', 'GET', '/zwz/myUser/getByPage', 'admin', 2, 'USER-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639260077330433, NULL, '2023-01-10 10:35:36', 0, NULL, '2023-01-10 10:35:36', 217, '127.0.0.1', '本地测试', '查询系统文件', '{"name":"","fkey":"","type":"","pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc","startDate":"","endDate":""}', 'GET', '/zwz/file/getByCondition', 'admin', 2, 'FILE-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639260689698816, NULL, '2023-01-10 10:35:36', 0, NULL, '2023-01-10 10:35:36', 119, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_PATH"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639261297872896, NULL, '2023-01-10 10:35:36', 0, NULL, '2023-01-10 10:35:36', 52, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_VIEW"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639261297872897, NULL, '2023-01-10 10:35:36', 0, NULL, '2023-01-10 10:35:36', 46, '127.0.0.1', '本地测试', '查看单个配置', '{"id":"FILE_HTTP"}', 'GET', '/zwz/setting/getOne', 'admin', 2, 'SETTING-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639276279926788, NULL, '2023-01-10 10:35:40', 0, NULL, '2023-01-10 10:35:40', 68, '127.0.0.1', '本地测试', '查询角色', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/role/getAllByPage', 'admin', 2, 'ROLE-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639307363913728, NULL, '2023-01-10 10:35:47', 0, NULL, '2023-01-10 10:35:47', 114, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/permission_type', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639312405467136, NULL, '2023-01-10 10:35:48', 0, NULL, '2023-01-10 10:35:48', 50, '127.0.0.1', '本地测试', '查询菜单权限拥有者', '{"permissionId":"5129710648430592"}', 'GET', '/zwz/permission/getUserByPermission', 'admin', 2, 'PERMISSION-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639321964285952, NULL, '2023-01-10 10:35:50', 0, NULL, '2023-01-10 10:35:50', 51, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639326171172871, NULL, '2023-01-10 10:35:51', 0, NULL, '2023-01-10 10:35:51', 43, '127.0.0.1', '本地测试', '查询日志', '{"logType":"2","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639333150494720, NULL, '2023-01-10 10:35:53', 0, NULL, '2023-01-10 10:35:53', 48, '127.0.0.1', '本地测试', '查询日志', '{"logType":"3","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639335826460673, NULL, '2023-01-10 10:35:54', 0, NULL, '2023-01-10 10:35:54', 60, '127.0.0.1', '本地测试', '查询日志', '{"logType":"4","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639340448583680, NULL, '2023-01-10 10:35:55', 0, NULL, '2023-01-10 10:35:55', 42, '127.0.0.1', '本地测试', '查询日志', '{"logType":"1","pageNumber":"1","pageSize":"15","startDate":"","endDate":"","sort":"createTime","order":"desc","ipInfo":"","key":""}', 'GET', '/zwz/log/getAllByPage', 'admin', 2, 'LOG-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639347142692867, NULL, '2023-01-10 10:35:56', 0, NULL, '2023-01-10 10:35:56', 46, '127.0.0.1', '本地测试', '查询所有数据字典', '{}', 'GET', '/zwz/dict/getAll', 'admin', 2, 'DICT-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639348526813184, NULL, '2023-01-10 10:35:57', 0, NULL, '2023-01-10 10:35:57', 48, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639352209412096, NULL, '2023-01-10 10:35:58', 0, NULL, '2023-01-10 10:35:58', 50, '127.0.0.1', '本地测试', '查询数据字典值', '{"name":"","status":"","pageNumber":"1","pageSize":"10","sort":"sortOrder","order":"asc","dictId":"75135930788220928"}', 'GET', '/zwz/dictData/getByCondition', 'admin', 2, 'DICT_DATA-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639383087878144, NULL, '2023-01-10 10:36:05', 0, NULL, '2023-01-10 10:36:05', 95, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639387517063168, NULL, '2023-01-10 10:36:06', 0, NULL, '2023-01-10 10:36:06', 43, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639387563200512, NULL, '2023-01-10 10:36:06', 0, NULL, '2023-01-10 10:36:06', 83, '127.0.0.1', '本地测试', '查询学生', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/student/getByPage', 'admin', 3, 'STUDENT-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639390868312064, NULL, '2023-01-10 10:36:07', 0, NULL, '2023-01-10 10:36:07', 42, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/education', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639390981558272, NULL, '2023-01-10 10:36:07', 0, NULL, '2023-01-10 10:36:07', 61, '127.0.0.1', '本地测试', '查询教师', '{"pageNumber":"1","pageSize":"15","sort":"createTime","order":"desc"}', 'GET', '/zwz/teacher/getByPage', 'admin', 3, 'TEACHER-04', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639407473561600, NULL, '2023-01-10 10:36:11', 0, NULL, '2023-01-10 10:36:11', 52, '127.0.0.1', '本地测试', '查询图表数据', '{}', 'GET', '/zwz/teacher/getAntvVoList', 'admin', 4, 'CHART-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639413173620736, NULL, '2023-01-10 10:36:12', 0, NULL, '2023-01-10 10:36:12', 46, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639424036868096, NULL, '2023-01-10 10:36:15', 0, NULL, '2023-01-10 10:36:15', 104, '127.0.0.1', '本地测试', '查询单个数据字典的值', '{}', 'GET', '/zwz/dictData/getByType/sex', 'admin', 2, 'DICT_DATA-01', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016'),
	(1612639433876705280, NULL, '2023-01-10 10:36:17', 0, NULL, '2023-01-10 10:36:17', 99, '127.0.0.1', '本地测试', '查询个人门户菜单B', '{}', 'POST', '/zwz/myDoor/getMyDoorList6', 'admin', 2, 'MY-DOOR-02', 'PC端 | Chrome 108.0.0.0 | Windows Windows 10 or Windows Server 2016');

DROP TABLE IF EXISTS `a_major`;
CREATE TABLE IF NOT EXISTS `a_major` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `duty_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_major`;
INSERT INTO `a_major` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `duty_id`, `remark`, `title`) VALUES
	('1510886605353783296', 'admin', '2022-04-04 15:46:52.292000', 0, NULL, NULL, '', '计算机科学与技术的介绍文字', '计算机科学与技术'),
	('1510886654238396416', 'admin', '2022-04-04 15:47:03.946000', 0, NULL, NULL, '', '网络工程专业的介绍文字', '网络工程'),
	('1510888092431683584', 'admin', '2022-04-04 15:52:46.836000', 0, NULL, NULL, '', '电子信息工程介绍', '电子信息工程');

DROP TABLE IF EXISTS `a_permission`;
CREATE TABLE IF NOT EXISTS `a_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `sort_order` decimal(10,2) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int unsigned DEFAULT NULL,
  `button_type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `show_always` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_permission`;
INSERT INTO `a_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `description`, `name`, `parent_id`, `type`, `sort_order`, `component`, `path`, `title`, `icon`, `level`, `button_type`, `status`, `show_always`) VALUES
	(5129710648430592, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 13:05:28', '', 'roleMenu', 125909152017944576, 0, 4.00, 'Main', '/roleMenu', '权限管理', 'md-desktop', 1, '', 0, b'1'),
	(5129710648430593, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'user-admin', 1464484663442673664, 0, 1.10, 'roster/user/user', 'user', '用户管理', 'md-person', 2, '', 0, b'1'),
	(5129710648430594, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:18', '', 'role-manage', 5129710648430592, 0, 1.00, 'role/role/index', 'role', '角色支持', 'md-contacts', 2, '', 0, b'1'),
	(5129710648430595, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-14 11:23:13', '', 'menu-manage', 5129710648430592, 0, 2.00, 'menu/menu/index', 'menu', '菜单支持', 'md-menu', 2, '', 0, b'1'),
	(39915540965232640, '', '2022-03-20 09:46:20', 0, 'admin', '2022-06-10 15:45:37', '', 'monitor', 125909152017944576, 0, 6.00, 'Main', '/monitor', '日志管理', 'ios-analytics', 1, '', 0, b'1'),
	(40238597734928384, '', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'department-admin', 1464485105081913345, 0, 1.20, 'roster/department/department', 'department-admin', '部门管理', 'md-git-branch', 2, '', 0, b'1'),
	(41363147411427328, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:15:44', '', 'log-manage', 39915540965232640, 0, 2.20, 'log/log/index', 'log', '日志管理', 'md-list-box', 2, '', 0, b'1'),
	(56309618086776832, '', '2022-03-20 09:46:20', 0, 'admin', '2022-05-29 07:18:02', '', 'file-admin', 1464485485316542465, 0, 1.00, 'file/file/index', 'file', '云盘', 'ios-folder', 2, '', 0, b'1'),
	(125909152017944576, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2023-01-10 10:20:35', '', 'zwz', 0, -1, 1.00, '', '', '毕设选题', 'md-home', 0, '', 0, b'1'),
	(1464484663442673664, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '', 'userTwoMenu', 125909152017944576, 0, 1.00, 'Main', '/userTwoMenu', '用户管理', 'md-analytics', 1, '', 0, b'1'),
	(1464485105081913345, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', NULL, 'depTwoMenu', 125909152017944576, 0, 2.00, 'Main', '/depTwoMenu', '部门管理', 'ios-apps', 1, '', 0, b'1'),
	(1464485485316542465, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-05-21 14:13:42', '', 'fileAdmin', 125909152017944576, 0, 3.00, 'Main', '/fileAdmin', '文件管理', 'md-basketball', 1, '', 0, b'1'),
	(1530689520276738048, 'admin', '2022-05-29 07:16:35', 0, NULL, NULL, NULL, 'dictMenu', 125909152017944576, 0, 5.00, 'Main', '/dictMenu', '数据字典', 'ios-apps', 1, '', 0, b'1'),
	(1530689602321518592, 'admin', '2022-05-29 07:16:55', 0, NULL, NULL, NULL, 'dict', 1530689520276738048, 0, 1.00, 'dict/dict/index', 'dict', '数据字典', 'ios-apps', 2, '', 0, b'1'),
	(1535166254703316992, 'admin', '2022-06-10 15:45:32', 0, NULL, NULL, NULL, 'codeCreate', 125909152017944576, 0, 7.00, 'Main', '/codeCreate', '代码生成', 'ios-brush', 1, '', 0, b'1'),
	(1535166438371889152, 'admin', '2022-06-10 15:46:16', 0, NULL, NULL, NULL, 'vue', 1535166254703316992, 0, 1.00, 'code/vue/index', 'vue', '前端表格', 'md-bug', 2, '', 0, b'1'),
	(1536599942410407936, 'admin', '2022-06-14 14:42:30', 0, 'admin', '2023-01-10 10:20:44', '', 'demo', 0, -1, 2.00, '', '', '二次开发', 'md-bulb', 0, '', 0, NULL),
	(1536600125332393984, 'admin', '2022-06-14 14:43:13', 0, 'admin', '2022-06-14 15:10:31', '', 'tableDemo', 1536599942410407936, 0, 1.00, 'Main', '/tableDemo', '数据展示', 'ios-apps', 1, '', 0, NULL),
	(1536600268379131904, 'admin', '2022-06-14 14:43:47', 0, NULL, NULL, NULL, 'demo1', 1536600125332393984, 0, 1.00, 'demo/demo1/index', 'demo1', '代码生成样例', 'md-finger-print', 2, '', 0, NULL),
	(1536604417711804416, 'admin', '2022-06-14 15:00:17', 0, 'admin', '2022-06-14 15:31:57', '', 'demo2', 1536600125332393984, 0, 2.00, 'demo/demo2/index', 'demo2', '复杂表格样例', 'md-archive', 2, '', 0, NULL),
	(1536606273959759872, 'admin', '2022-06-14 15:07:39', 0, 'admin', '2022-06-14 15:10:23', '', 'antv', 1536599942410407936, 0, 2.00, 'Main', '/antv', '图表展示', 'ios-pulse', 1, '', 0, NULL),
	(1536606372668510208, 'admin', '2022-06-14 15:08:03', 0, NULL, NULL, NULL, 'antv1', 1536606273959759872, 0, 1.00, 'demo/antv1/index', 'antv1', '条形图', 'md-pricetags', 2, '', 0, NULL),
	(1536606464712511488, 'admin', '2022-06-14 15:08:25', 0, NULL, NULL, NULL, 'antv2', 1536606273959759872, 0, 2.00, 'demo/antv2/index', 'antv2', '饼图', 'md-radio-button-off', 2, '', 0, NULL),
	(1536606550951596032, 'admin', '2022-06-14 15:08:45', 0, NULL, NULL, NULL, 'antv3', 1536606273959759872, 0, 3.00, 'demo/antv3/index', 'antv3', '折线图', 'ios-nutrition', 2, '', 0, NULL),
	(1536606637815631872, 'admin', '2022-06-14 15:09:06', 0, NULL, NULL, NULL, 'antv4', 1536606273959759872, 0, 4.00, 'demo/antv4/index', 'antv4', '柱状图', 'ios-phone-portrait', 2, '', 0, NULL),
	(1536875505901506560, 'admin', '2022-06-15 08:57:29', 0, 'admin', '2022-06-15 09:01:01', '', 'antvActive', 1536606273959759872, 0, 5.00, 'demo/antvActive/index', 'antvActive', '动态图表样例', 'ios-apps', 2, '', 0, NULL),
	(1612635672194191360, 'admin', '2023-01-10 10:21:20', 0, NULL, NULL, NULL, 'teaMenu', 125909152017944576, 0, 8.00, 'Main', '/teaMenu', '教师模块', 'ios-apps', 1, '', 0, NULL),
	(1612635719350751232, 'admin', '2023-01-10 10:21:31', 0, NULL, NULL, NULL, 'stuMenu', 125909152017944576, 0, 9.00, 'Main', '/stuMenu', '学生模块', 'ios-apps', 1, '', 0, NULL),
	(1612636182276083712, 'admin', '2023-01-10 10:23:22', 0, NULL, NULL, NULL, 'adminMenu', 125909152017944576, 0, 10.00, 'Main', '/adminMenu', '教务模块', 'ios-apps', 1, '', 0, NULL),
	(1612636269454692352, 'admin', '2023-01-10 10:23:43', 0, NULL, NULL, NULL, 'major', 1612636182276083712, 0, 1.00, 'topic/major/index', 'major', '专业档案', 'md-aperture', 2, '', 0, NULL),
	(1612636345279320064, 'admin', '2023-01-10 10:24:01', 0, NULL, NULL, NULL, 'topic', 1612635672194191360, 0, 1.00, 'topic/topic/index', 'topic', '发布课题', 'md-aperture', 2, '', 0, NULL),
	(1612636419547860992, 'admin', '2023-01-10 10:24:18', 0, NULL, NULL, NULL, 'topicByStudent', 1612635719350751232, 0, 1.00, 'topic/topicByStudent/index', 'topicByStudent', '学生选题', 'md-aperture', 2, '', 0, NULL),
	(1612636477756411904, 'admin', '2023-01-10 10:24:32', 0, NULL, NULL, NULL, 'myTopic', 1612635719350751232, 0, 2.00, 'topic/myTopic/index', 'myTopic', '我的选题', 'md-aperture', 2, '', 0, NULL);

DROP TABLE IF EXISTS `a_role`;
CREATE TABLE IF NOT EXISTS `a_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `default_role` bit(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `data_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role`;
INSERT INTO `a_role` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `name`, `del_flag`, `default_role`, `description`, `data_type`) VALUES
	(496138616573952, '', '2022-03-20 09:46:20', 'admin', '2023-01-10 10:24:49', 'ROLE_ADMIN', 0, NULL, '教务管理员', 0),
	(496138616573953, '', '2022-03-20 09:46:20', 'admin', '2023-01-10 10:24:53', 'ROLE_USER', 0, b'1', '学生', 0),
	(1612636599156346880, 'admin', '2023-01-10 10:25:01', 'admin', '2022-03-20 09:46:20', 'ROLE_TEACHER', 0, b'1', '老师', 0);

DROP TABLE IF EXISTS `a_role_permission`;
CREATE TABLE IF NOT EXISTS `a_role_permission` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `permission_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_role_permission`;
INSERT INTO `a_role_permission` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `permission_id`, `role_id`) VALUES
	(1464514325862551552, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 125909152017944576, 496138616573952),
	(1464514325862551553, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464484663442673664, 496138616573952),
	(1464514325862551554, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430593, 496138616573952),
	(1464514325862551563, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485105081913345, 496138616573952),
	(1464514325862551564, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 40238597734928384, 496138616573952),
	(1464514325862551568, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 1464485485316542465, 496138616573952),
	(1464514325862551569, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 56309618086776832, 496138616573952),
	(1464514325862551583, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430592, 496138616573952),
	(1464514325862551584, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430594, 496138616573952),
	(1464514325862551590, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 5129710648430595, 496138616573952),
	(1464514325862551594, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 39915540965232640, 496138616573952),
	(1464514325862551595, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 41363147411427328, 496138616573952),
	(1530689746903371801, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689520276738048, 496138616573952),
	(1530689747004035072, 'admin', '2022-05-29 07:17:29', 0, NULL, NULL, 1530689602321518592, 496138616573952),
	(1535166468671541252, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166254703316992, 496138616573952),
	(1535166468684124160, 'admin', '2022-06-10 15:46:23', 0, NULL, NULL, 1535166438371889152, 496138616573952),
	(1536600292156641281, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536599942410407936, 496138616573952),
	(1536600292173418496, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600125332393984, 496138616573952),
	(1536600292186001408, 'admin', '2022-06-14 14:43:53', 0, NULL, NULL, 1536600268379131904, 496138616573952),
	(1536604439178252292, 'admin', '2022-06-14 15:00:22', 0, NULL, NULL, 1536604417711804416, 496138616573952),
	(1536606659718287364, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606273959759872, 496138616573952),
	(1536606659730870272, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606372668510208, 496138616573952),
	(1536606659735064576, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606464712511488, 496138616573952),
	(1536606659743453184, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606550951596032, 496138616573952),
	(1536606659751841792, 'admin', '2022-06-14 15:09:11', 0, NULL, NULL, 1536606637815631872, 496138616573952),
	(1536875525769924610, 'admin', '2022-06-15 08:57:34', 0, NULL, NULL, 1536875505901506560, 496138616573952),
	(1612637281640910856, 'admin', '2023-01-10 10:27:44', 0, NULL, NULL, 1612636182276083712, 496138616573952),
	(1612637281653493760, 'admin', '2023-01-10 10:27:44', 0, NULL, NULL, 1612636269454692352, 496138616573952),
	(1612637307435880448, 'admin', '2023-01-10 10:27:50', 0, NULL, NULL, 125909152017944576, 496138616573953),
	(1612637307444269056, 'admin', '2023-01-10 10:27:50', 0, NULL, NULL, 1612635719350751232, 496138616573953),
	(1612637307448463360, 'admin', '2023-01-10 10:27:50', 0, NULL, NULL, 1612636419547860992, 496138616573953),
	(1612637307456851968, 'admin', '2023-01-10 10:27:50', 0, NULL, NULL, 1612636477756411904, 496138616573953),
	(1612637335617409024, 'admin', '2023-01-10 10:27:57', 0, NULL, NULL, 125909152017944576, 1612636599156346880),
	(1612637335629991936, 'admin', '2023-01-10 10:27:57', 0, NULL, NULL, 1612635672194191360, 1612636599156346880),
	(1612637335638380544, 'admin', '2023-01-10 10:27:57', 0, NULL, NULL, 1612636345279320064, 1612636599156346880);

DROP TABLE IF EXISTS `a_setting`;
CREATE TABLE IF NOT EXISTS `a_setting` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_setting`;
INSERT INTO `a_setting` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `value`) VALUES
	('FILE_HTTP', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', 'http://'),
	('FILE_PATH', NULL, NULL, 0, 'admin', '2022-05-28 15:57:19', 'C:\\\\oa-file'),
	('FILE_VIEW', NULL, NULL, 0, 'admin', '2022-05-28 15:57:20', '127.0.0.1:8080/zwz/file/view'),
	('LOCAL_OSS', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', '{"serviceName":"LOCAL_OSS","endpoint":"127.0.0.1:8080/zwz/file/view","http":"http://","filePath":"C:\\\\oa-file"}'),
	('OSS_USED', 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 'LOCAL_OSS');

DROP TABLE IF EXISTS `a_student`;
CREATE TABLE IF NOT EXISTS `a_student` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_student`;
INSERT INTO `a_student` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `name`, `number`, `school`, `sex`, `age`) VALUES
	('1536601255475023872', 'admin', '2022-06-14 14:47:42.637000', 0, NULL, NULL, '张三', '001', '北京大学', '男', 18.00),
	('1536601308352614400', 'admin', '2022-06-14 14:47:55.244000', 0, NULL, NULL, '李四', '002', '清华大学', '女', 19.00),
	('1536601388044390400', 'admin', '2022-06-14 14:48:14.243000', 0, NULL, NULL, '王五', '003', '浙江大学', '男', 20.00),
	('1536601469879455744', 'admin', '2022-06-14 14:48:33.753000', 0, NULL, NULL, '赵六', '004', '宁波大学', '保密', 21.00);

DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE IF NOT EXISTS `a_teacher` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `age` decimal(19,2) DEFAULT NULL,
  `autograph` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `graduated` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  `wages` decimal(19,2) DEFAULT NULL,
  `resume` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_teacher`;
INSERT INTO `a_teacher` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `age`, `autograph`, `education`, `graduated`, `name`, `remark`, `status`, `wages`, `resume`) VALUES
	('1536614275123122176', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '博士', '同济大学', '张三', '测试', '在职', 9960.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122177', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '本科', '同济大学', '李四', '测试', '在职', 7778.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122178', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '王五', '测试', '在职', 8889.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122179', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '硕士', '同济大学', '赵六', '测试', '在职', 4445.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122180', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '郑七', '测试', '在职', 1118.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424'),
	('1536614275123122181', 'admin', '2022-06-14 15:39:26.000000', 0, 'admin', '2022-06-14 15:41:09.841000', 30.00, 'http://127.0.0.1:8080/zwz/file/view/1536614206311370752', '专科', '同济大学', '龚八', '测试', '在职', 3337.00, 'http://127.0.0.1:8080/zwz/file/view/1536614698903015424');

DROP TABLE IF EXISTS `a_topic`;
CREATE TABLE IF NOT EXISTS `a_topic` (
  `id` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `create_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `del_flag` int NOT NULL,
  `update_by` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `audit_flag` bit(1) NOT NULL,
  `check_flag` bit(1) NOT NULL,
  `check_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `check_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `task_file` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `tea_id` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `tea_name` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_croatian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_croatian_ci;

DELETE FROM `a_topic`;
INSERT INTO `a_topic` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `audit_flag`, `check_flag`, `check_id`, `check_name`, `level`, `task_file`, `tea_id`, `tea_name`, `title`, `type`) VALUES
	('1612638329419993088', '17859654125', '2023-01-10 10:31:53.771000', 0, '17859654125', '2023-01-10 10:32:46.123000', b'1', b'1', '1527830053524738048', '学生A', '简单', 'http://127.0.0.1:8080/zwz/file/view/1612638321681502208', '1464764315201572865', '教师', '基于Vue的图书管理系统', '毕业设计'),
	('1612638973614755840', '17859654125', '2023-01-10 10:34:27.355000', 0, '17859654125', '2023-01-10 10:35:10.552000', b'1', b'1', '1527830053524738048', '学生A', '一般', 'http://127.0.0.1:8080/zwz/file/view/1612638965972733952', '1464764315201572865', '教师', '基于Vue的学生管理系统的设计和实现', '毕业设计');

DROP TABLE IF EXISTS `a_user`;
CREATE TABLE IF NOT EXISTS `a_user` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `department_id` bigint unsigned DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `pass_strength` varchar(2) DEFAULT NULL,
  `department_title` varchar(255) DEFAULT NULL,
  `birth` datetime(6) DEFAULT NULL,
  `my_door` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user`;
INSERT INTO `a_user` (`id`, `create_by`, `create_time`, `update_by`, `update_time`, `address`, `avatar`, `description`, `email`, `mobile`, `nickname`, `password`, `sex`, `status`, `type`, `username`, `del_flag`, `department_id`, `street`, `pass_strength`, `department_title`, `birth`, `my_door`) VALUES
	(682265633886208, '', '2022-03-20 09:46:20', 'admin', '2023-01-10 10:29:54', '["330000","330600","330602"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '北大', '916077357@qq.com', '17857054388', '管理员', '$2a$10$PS04ecXfknNd3V8d.ymLTObQciapMU4xU8.GADBZZsuTZr7ymnagy', '男', 0, 1, 'admin', 0, 1464487379074158593, '东西街道2', '弱', '设计研发部', '2000-01-08 00:00:00.000000', 'majorZWZ666user-adminZWZ666department-adminZWZ666file-adminZWZ666role-manageZWZ666menu-manage'),
	(1464764315201572865, '', '2022-03-20 09:46:20', 'admin', '2023-01-10 10:25:59', '', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654125@qq.com', '17859654125', '教师', '$2a$10$E59nactOiILAzQvfcs0JFOYuZp06d4bLhugEadyQuygpmiLc0W.ha', '男', 0, 0, '17859654125', 0, 1464487332064399361, '', '', '行政综合部', NULL, ''),
	(1464772465946398721, '', '2022-03-20 09:46:20', 'admin', '2023-01-10 10:25:47', '["110000","110100","110105"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', '', '17859654121@qq.com', '17859654121', '学生B', '$2a$10$vJyLo1RhFORH/SAu3sc9aeb37I5JRy5UugaN7fIt/e2vvsz6JWJCm', '女', 0, 0, '17859654121', 0, 1464487432169852929, '', '', '综合发展部', NULL, ''),
	(1527830053524738048, 'admin', '2022-05-21 09:54:05', 'admin', '2023-01-10 10:35:27', '["110000","110100","110106"]', 'https://wx.qlogo.cn/mmhead/PiajxSqBRaEKjc639z2lRF4DqweNw2aDRLbAL7yLlSgrdZeKBCwLHDQ/0', NULL, 'user4@qq.com', '17896525487', '学生A', '$2a$10$oeP4aplYnswfQ44pK6lAO.Np9BuPYJGRwo17THO7CUNlIQoVGsPmy', '男', 0, 0, 'user4', 0, 1464487332064399361, NULL, '弱', '行政综合部', NULL, 'topicByStudentZWZ666myTopic');

DROP TABLE IF EXISTS `a_user_role`;
CREATE TABLE IF NOT EXISTS `a_user_role` (
  `id` bigint unsigned NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DELETE FROM `a_user_role`;
INSERT INTO `a_user_role` (`id`, `create_by`, `create_time`, `del_flag`, `update_by`, `update_time`, `role_id`, `user_id`) VALUES
	(1464487931975700480, 'admin', '2022-03-20 09:46:20', 0, 'admin', '2022-03-20 09:46:20', 496138616573952, 682265633886208),
	(1526802492967489537, NULL, '2022-05-18 13:50:56', 0, NULL, NULL, 496138616573953, 1526802492443201536),
	(1526819095553642497, NULL, '2022-05-18 14:56:54', 0, NULL, NULL, 496138616573953, 1526819095159377920),
	(1612636754630807552, 'admin', '2023-01-10 10:25:38', 0, NULL, NULL, 496138616573953, 1527830053524738048),
	(1612636790009761792, 'admin', '2023-01-10 10:25:47', 0, NULL, NULL, 496138616573953, 1464772465946398721),
	(1612636829536882688, 'admin', '2023-01-10 10:25:56', 0, NULL, NULL, 1612636599156346880, 1464764315201572865);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
