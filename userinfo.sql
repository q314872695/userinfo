/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : userinfo

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-06-26 10:48:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `login_user`
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '李四', '女', '20', '北京', '2222', '2222@qq.com');
INSERT INTO `user` VALUES ('7', '张三', '男', '12', '广东', '123', '123@qq.com');
INSERT INTO `user` VALUES ('8', '王五', '男', '22', '广西', '132123', '132123@qq.com');
INSERT INTO `user` VALUES ('9', '石昊焱', '男', '46', '扬州', '330223614', '724617233@qq.com');
INSERT INTO `user` VALUES ('10', '唐航', '男', '62', '张家口', '070764992', '374611508@qq.com');
INSERT INTO `user` VALUES ('11', '刘伟诚', '男', '40', '盘锦', '801332181', '784330057@qq.com');
INSERT INTO `user` VALUES ('12', '许智渊', '女', '12', '聊城', '026307104', '653910282@qq.com');
INSERT INTO `user` VALUES ('13', '蒋博超', '女', '36', '诸暨', '075130066', '281411663@qq.com');
INSERT INTO `user` VALUES ('16', '陈昊天', '男', '58', '阳江', '907336083', '161205368@qq.com');
INSERT INTO `user` VALUES ('17', '韦绍辉', '女', '45', '北京', '068731346', '518578817@qq.com');
INSERT INTO `user` VALUES ('18', '曾志泽', '男', '71', '齐齐哈尔', '311303229', '954862497@qq.com');
INSERT INTO `user` VALUES ('19', '谢文博', '女', '22', '株洲', '144458365', '066499747@qq.com');
INSERT INTO `user` VALUES ('20', '覃皓轩', '女', '28', '本溪', '876318825', '143254536@qq.com');
INSERT INTO `user` VALUES ('21', '邓晋鹏', '男', '3', '平顶山', '296568058', '345563103@qq.com');
INSERT INTO `user` VALUES ('22', '余煜城', '女', '13', '东营', '433106219', '922560348@qq.com');
INSERT INTO `user` VALUES ('23', '方楷瑞', '男', '40', '上海', '118938077', '164223008@qq.com');
INSERT INTO `user` VALUES ('24', '石锦程', '男', '67', '枣庄', '674524045', '462747573@qq.com');
INSERT INTO `user` VALUES ('25', '龙修洁', '男', '73', '延安', '243793690', '803088774@qq.com');
INSERT INTO `user` VALUES ('26', '周煜城', '女', '16', '青岛', '340342886', '630278631@qq.com');
INSERT INTO `user` VALUES ('27', '钱金鑫', '女', '13', '衢州', '064723875', '208387354@qq.com');
INSERT INTO `user` VALUES ('28', '赖志泽', '男', '6', '潮州', '880150814', '570611616@qq.com');
INSERT INTO `user` VALUES ('29', '袁瑞霖', '男', '43', '太仓', '816814033', '378811755@qq.com');
INSERT INTO `user` VALUES ('30', '薛泽洋', '男', '22', '邯郸', '267741381', '002251200@qq.com');
INSERT INTO `user` VALUES ('31', '刘晓博', '男', '48', '呼和浩特', '378017243', '509538336@qq.com');
INSERT INTO `user` VALUES ('32', '唐君浩', '女', '46', '临安', '470116057', '387793435@qq.com');
INSERT INTO `user` VALUES ('33', '徐伟泽', '男', '42', '吉林', '947803429', '970184343@qq.com');
INSERT INTO `user` VALUES ('34', '姜昊焱', '男', '2', '大同', '334554578', '339287255@qq.com');
INSERT INTO `user` VALUES ('35', '张天磊', '男', '32', '柳州', '230145751', '856779010@qq.com');
INSERT INTO `user` VALUES ('36', '杜航', '男', '50', '扬州', '244377045', '978871640@qq.com');
INSERT INTO `user` VALUES ('37', '吕金鑫', '男', '57', '镇江', '841258000', '002881075@qq.com');
INSERT INTO `user` VALUES ('38', '邹明', '女', '29', '济宁', '617067781', '671709178@qq.com');
INSERT INTO `user` VALUES ('39', '孟煜祺', '女', '81', '绍兴', '016421733', '904334411@qq.com');
INSERT INTO `user` VALUES ('40', '陆哲瀚', '男', '59', '文登', '104786584', '407781105@qq.com');
INSERT INTO `user` VALUES ('41', '侯文轩', '女', '31', '临沂', '530352364', '552690053@qq.com');
INSERT INTO `user` VALUES ('42', '萧雨泽', '男', '32', '盘锦', '866326621', '612120321@qq.com');
INSERT INTO `user` VALUES ('43', '马晓博', '男', '24', '义乌', '670445460', '694431879@qq.com');
INSERT INTO `user` VALUES ('44', '叶晓博', '男', '2', '沈阳', '851244265', '608886660@qq.com');
INSERT INTO `user` VALUES ('45', '莫致远', '女', '75', '阳泉', '725857586', '631351008@qq.com');
INSERT INTO `user` VALUES ('46', '吴懿轩', '男', '82', '清远', '500705399', '778962875@qq.com');
INSERT INTO `user` VALUES ('47', '白雨泽', '女', '63', '邯郸', '468641639', '167929407@qq.com');
INSERT INTO `user` VALUES ('48', '丁博涛', '女', '55', '莱西', '224026560', '451456761@qq.com');
INSERT INTO `user` VALUES ('49', '谭鑫磊', '女', '57', '滨州', '078303094', '536150473@qq.com');
INSERT INTO `user` VALUES ('50', '薛文', '男', '46', '常熟', '787272528', '030312117@qq.com');
INSERT INTO `user` VALUES ('51', '陈凯瑞', '男', '13', '宁波', '538640264', '445302117@qq.com');
INSERT INTO `user` VALUES ('52', '陆昊焱', '男', '88', '鄂尔多斯', '137863169', '679781652@qq.com');
INSERT INTO `user` VALUES ('53', '贾熠彤', '男', '71', '泰安', '715460330', '236862408@qq.com');
INSERT INTO `user` VALUES ('54', '董靖琪', '男', '29', '云浮', '866890728', '177077510@qq.com');
INSERT INTO `user` VALUES ('55', '贺志泽', '男', '35', '徐州', '985487763', '003846400@qq.com');
INSERT INTO `user` VALUES ('56', '彭文昊', '女', '6', '宜昌', '245834119', '127362308@qq.com');
INSERT INTO `user` VALUES ('57', '陶博文', '男', '7', '嘉峪关', '502520023', '155068937@qq.com');
INSERT INTO `user` VALUES ('58', '张修杰', '男', '71', '柳州', '336063033', '130524636@qq.com');
INSERT INTO `user` VALUES ('59', '周远航', '男', '86', '大连', '831822253', '400016751@qq.com');
INSERT INTO `user` VALUES ('60', '莫晓啸', '男', '2', '锦州', '803859765', '818637013@qq.com');
INSERT INTO `user` VALUES ('61', '高越泽', '男', '61', '太仓', '838282852', '941521000@qq.com');
INSERT INTO `user` VALUES ('62', '段鹏飞', '男', '34', '攀枝花', '734225323', '828610841@qq.com');
INSERT INTO `user` VALUES ('63', '阎雪松', '男', '18', '宁波', '926714218', '637267042@qq.com');
INSERT INTO `user` VALUES ('64', '田鹏飞', '男', '21', '揭阳', '523162413', '370861553@qq.com');
INSERT INTO `user` VALUES ('65', '贾浩轩', '男', '59', '舟山', '126351267', '554608401@qq.com');
INSERT INTO `user` VALUES ('66', '洪明', '女', '87', '中山', '255333064', '700450560@qq.com');
INSERT INTO `user` VALUES ('67', '杨靖琪', '男', '16', '保定', '328200436', '363163216@qq.com');
INSERT INTO `user` VALUES ('68', '徐浩轩', '女', '29', '临沂', '456733627', '486439186@qq.com');
INSERT INTO `user` VALUES ('69', '洪鸿涛', '女', '37', '拉萨', '727401178', '173666852@qq.com');
INSERT INTO `user` VALUES ('70', '洪伟诚', '男', '52', '章丘', '261862597', '134597787@qq.com');
INSERT INTO `user` VALUES ('71', '石远航', '女', '51', '临安', '577174551', '542810530@qq.com');
INSERT INTO `user` VALUES ('72', '段雪松', '男', '70', '温州', '116523104', '059907888@qq.com');
INSERT INTO `user` VALUES ('73', '郝皓轩', '女', '35', '平顶山', '530573283', '493910845@qq.com');
INSERT INTO `user` VALUES ('74', '林文', '男', '65', '渭南', '077887305', '155509672@qq.com');
INSERT INTO `user` VALUES ('75', '林修洁', '女', '14', '汕头', '763728046', '386514938@qq.com');
INSERT INTO `user` VALUES ('76', '武擎宇', '女', '51', '赤峰', '836633481', '816021670@qq.com');
INSERT INTO `user` VALUES ('77', '朱博涛', '男', '85', '寿光', '636434056', '684678973@qq.com');
INSERT INTO `user` VALUES ('78', '钱伟祺', '女', '81', '扬州', '578846167', '831231082@qq.com');
INSERT INTO `user` VALUES ('79', '马思远', '男', '5', '宿迁', '370673606', '040496271@qq.com');
INSERT INTO `user` VALUES ('80', '吕梓晨', '男', '17', '佛山', '003338030', '824004707@qq.com');
INSERT INTO `user` VALUES ('81', '蔡晋鹏', '男', '23', '贵阳', '328647103', '297135952@qq.com');
INSERT INTO `user` VALUES ('82', '熊熠彤', '男', '42', '宿迁', '830601471', '478506403@qq.com');
INSERT INTO `user` VALUES ('83', '薛越泽', '女', '31', '宿迁', '441279239', '654001414@qq.com');
INSERT INTO `user` VALUES ('84', '万楷瑞', '男', '77', '厦门', '965672091', '423446517@qq.com');
INSERT INTO `user` VALUES ('85', '萧绍辉', '女', '90', '泉州', '544902983', '552814455@qq.com');
INSERT INTO `user` VALUES ('86', '董嘉熙', '男', '27', '南通', '074608856', '831293071@qq.com');
INSERT INTO `user` VALUES ('87', '钟明轩', '女', '9', '石家庄', '122009346', '404070755@qq.com');
INSERT INTO `user` VALUES ('88', '贺聪健', '女', '14', '抚顺', '170423518', '672800631@qq.com');
INSERT INTO `user` VALUES ('89', '田健雄', '女', '61', '马鞍山', '491028335', '654189535@qq.com');
INSERT INTO `user` VALUES ('90', '苏文轩', '男', '32', '清远', '841285432', '234096484@qq.com');
INSERT INTO `user` VALUES ('91', '孔鹭洋', '男', '78', '肇庆', '636004620', '058439497@qq.com');
INSERT INTO `user` VALUES ('92', '严潇然', '女', '20', '柳州', '148789037', '100389614@qq.com');
INSERT INTO `user` VALUES ('93', '林哲瀚', '女', '45', '宜昌', '074101289', '424926745@qq.com');
INSERT INTO `user` VALUES ('94', '戴致远', '女', '28', '郑州', '379270627', '803945702@qq.com');
INSERT INTO `user` VALUES ('95', '严健雄', '男', '8', '无锡', '206617650', '615412789@qq.com');
INSERT INTO `user` VALUES ('96', '谭振家', '男', '79', '即墨', '332870260', '441433124@qq.com');
INSERT INTO `user` VALUES ('97', '蔡伟宸', '男', '29', '胶南', '631986788', '118316634@qq.com');
INSERT INTO `user` VALUES ('98', '毛伟祺', '男', '80', '福州', '654835555', '275574527@qq.com');
INSERT INTO `user` VALUES ('99', '韦立诚', '女', '51', '兰州', '713838393', '537610195@qq.com');
INSERT INTO `user` VALUES ('100', '江绍齐', '男', '36', '曲靖', '516029189', '365647483@qq.com');
INSERT INTO `user` VALUES ('101', '戴潇然', '男', '77', '东营', '840000839', '756630263@qq.com');
INSERT INTO `user` VALUES ('102', '袁鸿煊', '男', '8', '温州', '627466763', '483027357@qq.com');
INSERT INTO `user` VALUES ('103', '史耀杰', '男', '83', '宜兴', '386828936', '734451784@qq.com');
INSERT INTO `user` VALUES ('104', '莫子轩', '男', '59', '莱芜', '240354134', '409193578@qq.com');
INSERT INTO `user` VALUES ('105', '沈思远', '男', '56', '盘锦', '477438284', '242516950@qq.com');
INSERT INTO `user` VALUES ('106', '熊炎彬', '男', '61', '洛阳', '513123208', '202248898@qq.com');
INSERT INTO `user` VALUES ('107', '陆聪健', '女', '25', '大连', '659890127', '704142457@qq.com');
INSERT INTO `user` VALUES ('108', '秦俊驰', '女', '13', '湘潭', '434061637', '183838353@qq.com');
INSERT INTO `user` VALUES ('109', '杨聪健', '女', '28', '常州', '392183831', '907928032@qq.com');
INSERT INTO `user` VALUES ('110', '武鸿煊', '男', '74', '衢州', '411536031', '488052634@qq.com');
INSERT INTO `user` VALUES ('111', '薛智宸', '女', '53', '昆山', '980595926', '013033318@qq.com');
INSERT INTO `user` VALUES ('112', '冯嘉熙', '男', '5', '北海', '704543002', '733348019@qq.com');
INSERT INTO `user` VALUES ('113', '廖鹭洋', '女', '19', '石家庄', '871584098', '632180072@qq.com');
INSERT INTO `user` VALUES ('114', '陶鸿煊', '男', '10', '苏州', '936634285', '387431575@qq.com');
INSERT INTO `user` VALUES ('115', '许鹤轩', '男', '59', '株洲', '913321889', '111821338@qq.com');
INSERT INTO `user` VALUES ('116', '吴锦程', '男', '26', '合肥', '632150715', '081944770@qq.com');
INSERT INTO `user` VALUES ('117', '苏荣轩', '男', '29', '常州', '713096311', '610316322@qq.com');
INSERT INTO `user` VALUES ('118', '赖天磊', '女', '55', '保定', '117254733', '208862786@qq.com');
INSERT INTO `user` VALUES ('119', '杜果', '女', '63', '滨州', '508748086', '367212656@qq.com');
INSERT INTO `user` VALUES ('120', '贺晓啸', '女', '12', '吉林', '664568040', '815470684@qq.com');
INSERT INTO `user` VALUES ('121', '郝远航', '男', '55', '胶州', '139964590', '338082284@qq.com');
INSERT INTO `user` VALUES ('122', '韦梓晨', '男', '63', '枣庄', '454608604', '881577888@qq.com');
INSERT INTO `user` VALUES ('123', '曾雨泽', '男', '71', '珠海', '233858462', '291783743@qq.com');
INSERT INTO `user` VALUES ('124', '严鸿煊', '男', '19', '上海', '050202511', '683873732@qq.com');
INSERT INTO `user` VALUES ('125', '覃涛', '男', '34', '镇江', '862627752', '227436173@qq.com');
INSERT INTO `user` VALUES ('126', '陆彬', '男', '28', '兰州', '524318344', '948338383@qq.com');
INSERT INTO `user` VALUES ('127', '武笑愚', '男', '38', '太仓', '817756895', '853963684@qq.com');
INSERT INTO `user` VALUES ('128', '余哲瀚', '女', '48', '绍兴', '311315285', '607386489@qq.com');
INSERT INTO `user` VALUES ('129', '薛嘉熙', '男', '77', '西宁', '348743551', '972105410@qq.com');
INSERT INTO `user` VALUES ('130', '潘浩宇', '男', '79', '锦州', '462782122', '474211633@qq.com');
INSERT INTO `user` VALUES ('131', '吕伟宸', '女', '34', '渭南', '296537671', '043592604@qq.com');
INSERT INTO `user` VALUES ('132', '魏彬', '女', '48', '三亚', '881045225', '650504985@qq.com');
INSERT INTO `user` VALUES ('133', '李鹏涛', '女', '28', '泉州', '472210859', '804555235@qq.com');
INSERT INTO `user` VALUES ('134', '郝风华', '女', '74', '金华', '456605297', '162914422@qq.com');
INSERT INTO `user` VALUES ('135', '韦建辉', '男', '29', '太仓', '300886317', '432502403@qq.com');
INSERT INTO `user` VALUES ('136', '赵弘文', '女', '14', '嘉峪关', '756211345', '585177872@qq.com');
INSERT INTO `user` VALUES ('137', '陆智辉', '男', '58', '青岛', '245362470', '445623565@qq.com');
INSERT INTO `user` VALUES ('138', '戴智辉', '女', '13', '济宁', '543342845', '104538186@qq.com');
INSERT INTO `user` VALUES ('139', '刘立果', '女', '76', '吴江', '273077712', '362885835@qq.com');
INSERT INTO `user` VALUES ('140', '邱哲瀚', '男', '85', '盘锦', '645082732', '088428581@qq.com');
INSERT INTO `user` VALUES ('141', '冯立诚', '男', '70', '衢州', '020505978', '680344548@qq.com');
INSERT INTO `user` VALUES ('142', '史修杰', '女', '26', '江阴', '280449518', '277287490@qq.com');
INSERT INTO `user` VALUES ('143', '高鹏飞', '男', '53', '莱州', '613585930', '497263260@qq.com');
INSERT INTO `user` VALUES ('144', '贾弘文', '女', '61', '德阳', '373582387', '571526549@qq.com');
INSERT INTO `user` VALUES ('145', '邵煜城', '女', '50', '赤峰', '872742710', '333331051@qq.com');
INSERT INTO `user` VALUES ('146', '朱煜城', '女', '81', '延安', '623557590', '666068255@qq.com');
INSERT INTO `user` VALUES ('147', '薛浩然', '女', '72', '三门峡', '324078149', '418524242@qq.com');
INSERT INTO `user` VALUES ('148', '崔涛', '女', '7', '芜湖', '933804772', '291591237@qq.com');
INSERT INTO `user` VALUES ('149', '郑文', '女', '3', '西宁', '096771358', '142217368@qq.com');
INSERT INTO `user` VALUES ('150', '宋鹏', '女', '84', '西宁', '987265917', '270226542@qq.com');
INSERT INTO `user` VALUES ('151', '段晋鹏', '女', '57', '汕尾', '577543324', '828646406@qq.com');
INSERT INTO `user` VALUES ('152', '龙鹏煊', '女', '84', '泰州', '840022223', '568512256@qq.com');
INSERT INTO `user` VALUES ('153', '孟浩然', '女', '25', '绍兴', '524233855', '842004895@qq.com');
INSERT INTO `user` VALUES ('154', '段煜祺', '男', '85', '临安', '963132413', '782330299@qq.com');
INSERT INTO `user` VALUES ('155', '郭明杰', '男', '31', '天津', '977021767', '225458072@qq.com');
INSERT INTO `user` VALUES ('156', '田涛', '女', '59', '茂名', '723496367', '184571738@qq.com');
INSERT INTO `user` VALUES ('157', '雷哲瀚', '男', '76', '即墨', '717721656', '774736273@qq.com');
INSERT INTO `user` VALUES ('158', '严风华', '男', '25', '天津', '374208673', '344823483@qq.com');
INSERT INTO `user` VALUES ('159', '曹擎苍', '男', '8', '株洲', '255850179', '527666264@qq.com');
INSERT INTO `user` VALUES ('160', '史皓轩', '男', '58', '秦皇岛', '277930373', '423648333@qq.com');
INSERT INTO `user` VALUES ('161', '邵旭尧', '女', '40', '成都', '388075266', '537298606@qq.com');
INSERT INTO `user` VALUES ('162', '萧思', '男', '69', '荣成', '616675478', '358834159@qq.com');
INSERT INTO `user` VALUES ('163', '周瑾瑜', '女', '9', '乌鲁木齐', '003289604', '117364116@qq.com');
INSERT INTO `user` VALUES ('164', '邓烨伟', '女', '48', '南宁', '238256511', '021814046@qq.com');
INSERT INTO `user` VALUES ('165', '廖思聪', '男', '84', '焦作', '695875842', '327279472@qq.com');
INSERT INTO `user` VALUES ('166', '林哲瀚', '男', '82', '绍兴', '634210942', '555040315@qq.com');
INSERT INTO `user` VALUES ('167', '赖昊强', '女', '58', '海口', '582174881', '660032884@qq.com');
INSERT INTO `user` VALUES ('168', '熊哲瀚', '男', '65', '义乌', '826795443', '160845126@qq.com');
INSERT INTO `user` VALUES ('169', '朱嘉懿', '男', '90', '泰州', '717674477', '053808953@qq.com');
INSERT INTO `user` VALUES ('170', '曹立果', '女', '71', '盘锦', '013512061', '586770537@qq.com');
INSERT INTO `user` VALUES ('171', '阎伟宸', '男', '13', '镇江', '352883984', '368618084@qq.com');
INSERT INTO `user` VALUES ('172', '周哲瀚', '女', '29', '徐州', '204957332', '960624021@qq.com');
INSERT INTO `user` VALUES ('173', '段煜祺', '女', '62', '厦门', '901103951', '310875518@qq.com');
INSERT INTO `user` VALUES ('174', '卢耀杰', '女', '24', '金昌', '098127829', '245103751@qq.com');
INSERT INTO `user` VALUES ('175', '徐金鑫', '男', '85', '桂林', '141581621', '856147860@qq.com');
INSERT INTO `user` VALUES ('176', '邱建辉', '男', '33', '广州', '622267930', '018863624@qq.com');
INSERT INTO `user` VALUES ('177', '段梓晨', '男', '12', '泰安', '760405430', '905994343@qq.com');
INSERT INTO `user` VALUES ('178', '张明杰', '男', '67', '佛山', '277073408', '805763225@qq.com');
INSERT INTO `user` VALUES ('179', '田明辉', '男', '46', '烟台', '022517702', '822865481@qq.com');
INSERT INTO `user` VALUES ('180', '卢荣轩', '男', '67', '廊坊', '217394841', '697628604@qq.com');
INSERT INTO `user` VALUES ('181', '陶弘文', '男', '64', '柳州', '622208416', '654023385@qq.com');
INSERT INTO `user` VALUES ('182', '莫修洁', '女', '73', '柳州', '757395123', '926105910@qq.com');
INSERT INTO `user` VALUES ('183', '龚哲瀚', '女', '32', '盐城', '950384271', '078728346@qq.com');
INSERT INTO `user` VALUES ('184', '白锦程', '男', '64', '金昌', '129495200', '925682276@qq.com');
INSERT INTO `user` VALUES ('185', '刘浩宇', '男', '48', '大同', '270672812', '847018908@qq.com');
INSERT INTO `user` VALUES ('186', '任鸿煊', '男', '8', '莱芜', '131534911', '776480542@qq.com');
INSERT INTO `user` VALUES ('187', '钟伟宸', '女', '76', '乳山', '501023712', '023544788@qq.com');
INSERT INTO `user` VALUES ('188', '吕思淼', '女', '30', '菏泽', '869720888', '741880673@qq.com');
INSERT INTO `user` VALUES ('189', '方凯瑞', '男', '9', '上海', '252867173', '917912147@qq.com');
INSERT INTO `user` VALUES ('190', '洪修洁', '女', '14', '韶关', '771210370', '055687080@qq.com');
INSERT INTO `user` VALUES ('191', '夏思淼', '男', '83', '南宁', '256328833', '585252636@qq.com');
INSERT INTO `user` VALUES ('192', '贾伟宸', '女', '10', '廊坊', '238567164', '430472821@qq.com');
INSERT INTO `user` VALUES ('193', '邓鸿煊', '男', '69', '东莞', '553871280', '204703345@qq.com');
INSERT INTO `user` VALUES ('194', '郭鹏煊', '男', '14', '湘潭', '113168254', '275039657@qq.com');
INSERT INTO `user` VALUES ('195', '魏熠彤', '男', '88', '青岛', '838746123', '022128540@qq.com');
INSERT INTO `user` VALUES ('196', '李烨霖', '男', '26', '昆山', '552569066', '352150507@qq.com');
INSERT INTO `user` VALUES ('197', '潘雨泽', '女', '4', '潮州', '261443303', '464827547@qq.com');
INSERT INTO `user` VALUES ('198', '谢致远', '女', '7', '攀枝花', '459401528', '528826254@qq.com');
INSERT INTO `user` VALUES ('199', '谭靖琪', '男', '31', '聊城', '716563528', '333346248@qq.com');
INSERT INTO `user` VALUES ('200', '朱昊焱', '男', '36', '南京', '005734473', '632201881@qq.com');
INSERT INTO `user` VALUES ('201', '苏弘文', '男', '26', '太原', '911862346', '480838746@qq.com');
INSERT INTO `user` VALUES ('202', '薛子骞', '女', '65', '渭南', '133283840', '152823240@qq.com');
INSERT INTO `user` VALUES ('203', '林健雄', '女', '18', '莱芜', '764810682', '025472650@qq.com');
INSERT INTO `user` VALUES ('204', '蒋志泽', '女', '15', '宜兴', '504845951', '505221479@qq.com');
INSERT INTO `user` VALUES ('205', '马熠彤', '女', '89', '平度', '856284891', '255163531@qq.com');
INSERT INTO `user` VALUES ('206', '金绍齐', '女', '38', '铜川', '010844174', '308614563@qq.com');
INSERT INTO `user` VALUES ('207', '蔡靖琪', '男', '43', '成都', '020122200', '264130709@qq.com');
INSERT INTO `user` VALUES ('208', '于思远', '女', '50', '葫芦岛', '078310252', '220246638@qq.com');
