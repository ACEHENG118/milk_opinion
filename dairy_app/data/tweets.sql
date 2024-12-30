-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aitest
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `screen_name` text COLLATE utf8mb4_general_ci,
  `location` text COLLATE utf8mb4_general_ci,
  `created_time` text COLLATE utf8mb4_general_ci,
  `text` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES ('塔塔塔罗斯','其他','2024-09-14 13:42:02','说白了，就是动物蛋白导致的。'),('Chul-青','广东 汕头','2024-09-14 13:12:31','就是懂得太晚，孩子四周岁总算是戒掉了，有奶瘾，总吵着喊着要喝，每天只让他喝得很少，搞点汤汤水水替代了。慢慢戒掉了'),('醉酒观星辰','其他','2024-09-13 13:58:29','生长激素是否对人体有没有不可逆的伤害还未知，促进发育定会加速衰老'),('中医妇儿林波','浙江','2024-09-13 13:13:09','添加剂也有功劳[允悲][允悲][允悲]//@华夏永续OK56:学校天天不是酸奶就是牛奶，加面包，蛋糕饼干类的小零食，女生普遍五六年级就来月经了[允悲]'),('华夏永续OK56','北京','2024-09-13 13:04:42','学校天天不是酸奶就是牛奶，加面包，蛋糕饼干类的小零食，女生普遍五六年级就来月经了[允悲]'),('中医妇儿林波','浙江','2024-09-13 11:45:18','有啥想不通的，把“钱”带入进去就想明白了。//@我心赤焰:牛奶的盛行，离不开资本家和西医的大力宣传。'),('我心赤焰','上海 长宁区','2024-09-13 11:15:52','牛奶的盛行，离不开资本家和西医的大力宣传。'),('紫琳786','北京','2024-09-13 08:53:32','一个博主问粉丝自己的孩子是吃母乳还是牛奶，她打算满月给自己孩子断奶，我就留言了自己喂一年的母乳，奶粉再好都不及母乳，结果一群极端的人来骂我，我也说累了，想着孩子的很多健康问题都和喝奶粉，牛奶有关，自己还不知道'),('芸香油圃','其他','2024-09-13 08:24:26','母乳不够不吃奶粉怎么办？[允悲]'),('中医妇儿林波','浙江','2024-09-13 07:26:28','奶粉是什么的固体？又什么时候变成液体？奶粉的液体叫什么？[笑cry][笑cry]//@王禹王路:奶粉呢？'),('王禹王路','其他','2024-09-13 06:46:32','奶粉呢？'),('星空94638','其他','2024-09-12 22:16:27','亲戚家小孩一天几瓶牛奶，肥胖，然后现在支气管肺炎引起哮喘[允悲][允悲]'),('君君是我__','其他','2024-09-12 22:14:07','现在学校恨不得一天给孩子喝两次牛奶，早餐，下午点'),('熵小小','其他','2024-09-12 20:54:07','家門的嬸子骨折了，昆山的西毉都不讓喝牛奶。[偷乐]'),('清肝解郁','其他','2024-09-12 20:42:42','林医生做这件事太正确了，不能让牛奶毒害儿童，未来男丁还要保家卫国，所以身体健康很重要。'),('WMWMWhat','湖北','2024-08-09 15:44:44','山姆鲜牛奶就可以[奥特曼][奥特曼][奥特曼]'),('大海都是水ww','其他','2024-08-04 18:20:40','我觉得超市冷藏区里10块多一盒，950ml的鲜牛奶就很不错，伊利光明之类的品牌都可，买1.5升的更划算'),('堃12138','天津','2024-08-04 16:53:38','海河奶[good][good][good]好喝'),('吴减肥','浙江 杭州','2024-08-03 20:18:05','[笑cry]'),('阔汗','其他','2024-08-03 18:34:02','我觉得那种保质期只有十五天的1.5升鲜奶好喝'),('侬晓得伐再生术','北京 朝阳区','2024-08-03 17:57:53','瓜在京，喝三元小白方，或者君乐宝！！！好喝味道纯正[爱你]'),('SurPrisE25022','其他','2024-08-03 16:39:37','花园纯牛奶'),('_边缘者','广东 惠州','2024-08-03 14:28:38','娟姗牛奶'),('Tusmuto','其他','2024-08-03 12:08:32','百菲酪不错[哈哈][心]好喝'),('愚蠢话题','陕西 渭南','2024-08-03 11:55:41','试完了给个推荐，我买你推荐的[污]'),('乙酰水杨酸菜鱼板面','其他','2024-08-03 11:49:13','我们本地的牛奶估计不外销 能买到的都是天润 西域春这种[二哈] 不过天润还是不错的 可以试试这个牌子'),('丶Moosun','其他','2024-08-03 08:54:20','喝完出个测评瓜🍉'),('排山倒海海燕长点心吧','其他','2024-08-03 08:36:38','牧原系列'),('烦人修仙赚','北京','2024-08-03 07:22:17','[一起吃糖]'),('那姩浮夸','浙江 嘉兴','2024-08-03 06:57:50','特仑苏不错'),('是小铭呀zz','北京','2024-08-03 06:46:17','悦鲜活好喝'),('南国淳色','四川 成都','2024-08-03 06:15:58','[熊猫]'),('虓龑无迹','北京','2024-08-03 05:59:33','天润'),('大头DoTa','海外 澳大利亚','2024-08-03 03:37:08','A2'),('无爱且优雅','海外','2024-08-03 03:13:34','[并不简单][并不简单][并不简单]'),('猎手的强弓','其他','2024-08-03 02:04:39','羡慕，我一喝冷藏牛奶就拉肚子[泪]'),('姜姜姜姜姜姜戈','江苏 南通','2024-08-03 01:59:59','西域春'),('啊有一只能猫','北京 朝阳区','2024-08-03 01:24:25','山姆那个小瓶*6的鲜奶不错'),('EK爱吃西蓝花','其他','2024-08-03 00:59:06','只有西域春是老牌子其他都是这几年新出的作为新疆人的我都没见过[笑cry][笑cry][笑cry]'),('小兔纸文卿','江苏 无锡','2024-08-03 00:51:46','西牧天山还行'),('悲从秋来','广东 深圳','2024-08-03 00:45:59','你喝完觉得好喝的给我推荐一哈'),('caisha1','湖北','2024-08-03 00:40:17','喝过至少20多种鲜牛奶。目前只喝西江乳业的水牛鲜牛奶，找不到比这款更好喝的[doge]'),('艾尔小圆盾王丽萨','上海 嘉定区','2024-08-03 00:12:56','海乳集团'),('YongshiJ1u丶','四川 成都','2024-08-03 00:11:26','新希望铛铛奶'),('数码时光机','广东','2024-08-02 23:59:22','[允悲]测评牛奶'),('Shadow__杨雯儿','北京 海淀区','2024-08-02 23:54:23','我现在喜欢三元的那个有机牛奶。奶味很足'),('Ultra_hikari','福建','2024-08-02 23:48:34','每日鲜语可以 某乐宝跟某利金典的平替'),('DENGMINHAO-','广东 韶关','2024-08-02 23:48:32','有一个鲜牛奶 很好喝 名字叫做《说脏话》推荐你一定要试下'),('光65343','其他','2024-08-02 23:43:17','国内喝鲜奶感觉还是要会蹲，线上线下都溢价太严重了'),('要吃汉堡吗','湖北 武汉','2024-08-02 23:37:57','为啥在帝都'),('兔女郎峰巅','其他','2024-08-02 23:36:56','光明牌'),('肥肉炒瘦肉','浙江','2024-08-02 23:28:29','@肥肉炒瘦肉：京东的一号会员店4.0巴氏牛奶超级超级好喝！'),('抵拢倒拐_Lee','四川 成都','2024-08-02 23:25:15','四川这边基本上嚯新希望华西和菊乐'),('Ga_Hoole','内蒙古','2024-08-02 23:22:31','感觉巴氏奶比常温的好喝点'),('上善若水T-T','江苏','2024-08-02 23:22:19','天润牛奶 尝尝'),('Ryen1999','上海','2024-08-02 23:18:10','百菲酪水牛奶 很好喝 其实只要是水牛奶都挺好喝的 就是无糖旺仔牛奶的味道 非常厚实'),('Thanos_阿宝','福建 福州','2024-08-02 23:17:13','喝啥补啥'),('Shaneis','新疆 乌鲁木齐','2024-08-02 23:14:49','西域春，天润，花园，西牧天山，麦趣尔'),('忍不住想撸狗','山东','2024-08-02 23:14:25','水牛奶，纯的还微甜，就是热量比纯牛奶高一些，蛋白质含量高点'),('HootBear','江苏 南京','2024-08-02 23:13:53','每日鲜语'),('醉尘如梦-','新疆','2024-08-02 23:12:57','天润酸奶冰淇淋系列[舔屏][舔屏]'),('二水三三','山西','2024-08-02 23:12:55','小西牛。'),('评论罗伯特','海外','2024-08-02 23:12:28','公主你可以尝试下西域春的牛奶，口感醇厚，而且营养价值高，配上你的游戏应该很搭哦~'),('NatEngUB','云南 昆明','2024-08-02 23:12:26','云南的欧亚乳业'),('醉尘如梦-','新疆','2024-08-02 23:12:20','花园牛奶'),('c013w0r1d','湖北 咸宁','2024-08-02 23:11:25','好好好'),('吃太多了吧_','其他','2024-09-19 07:49:44','千言万语汇成一句送我'),('惹了全宇宙','广东','2024-09-19 04:49:06','卡哇😭'),('梦里总是充满希望','其他','2024-09-18 21:07:42','好可爱'),('小天才樱桃兔饼','福建','2024-09-18 19:03:53','只要有张元英就送我好吗谢谢'),('热恋冰清','其他','2024-09-18 17:25:49','kiyo'),('发财啦好耶','安徽','2024-09-18 17:24:50','太可爱啦'),('圆兔收音机','其他','2024-09-18 17:24:38','萌[兔子]'),('甜味小蘸','江苏 连云港','2024-09-18 16:50:21','张元英？'),('Se7enrain-','湖南','2024-09-18 16:37:27','一句话 送给我[嘻嘻]'),('·夏日筏纭·','海外 芬兰','2024-09-18 16:25:32','我要我要[doge][doge]'),('littcookie','其他','2024-09-18 16:12:59','送我谢谢'),('乱缘兔','其他','2024-09-18 16:12:13','kiyo[爱你]'),('所以暂时将你的龅牙藏了起来','河南','2024-09-18 16:04:23','是什么呢？'),('不必再为你迁就','其他','2024-09-18 16:03:43','@缝合针：: 千言万语汇成一句送我[怒]'),('川井千春','其他','2024-09-18 16:01:58','好可爱[兔子]'),('缝合针','其他','2024-09-18 16:01:54',': 千言万语汇成一句送我'),('不必再为你迁就','其他','2024-09-18 16:01:18','哇塞哇塞'),('宏哥就係宏哥','其他','2024-06-17 09:25:39','当年骑单车送玻璃瓶牛奶'),('熙頭','广东 广州','2024-06-15 07:37:53','真的好耐无见了。我以为被风行收购咗'),('___我系坏人___','广东 广州','2024-06-14 17:51:18','真没喝过这个牌子的，小时候喝的是玻璃瓶装的燕塘牛奶'),('三好学生爱逃课','江苏','2024-06-14 07:42:03','第一次见[并不简单]'),('Vancouver313','北京 东城区','2024-06-14 00:09:20','佛山出的[哈哈]'),('X李很阳光','其他','2024-06-13 22:33:38','没有喝过'),('YANG-OC','广东 广州','2024-06-13 22:01:45','[并不简单]'),('妮妤不可及','广东','2024-06-13 22:00:40','我不懂'),('巨蟹座悟空','广东 广州','2024-06-13 21:58:32','记忆中的百富露，现实中的白富美。[可爱]'),('張国荣Champion','海外 法国','2024-06-13 21:56:25','哈哈哈广东特色吧，我喝的叫妙恋的小洋人[航天员]一种奶'),('朴信男','其他','2024-06-13 21:54:57','极端天气注意安全～'),('王涵漂泊在上海','其他','2024-06-13 21:54:46','表示没见过[鲜花]'),('话梅痣','湖南','2024-09-14 16:42:14','怎么没有酸奶！'),('杳江晚_','江苏 南京','2024-09-06 15:08:04','坐办公室真爽啊姐'),('文妤逸','云南 曲靖','2024-09-05 19:21:01','哈哈哈哈哈哈，你这愣是没一杯矿泉水啊[哆啦A梦害怕]'),('维他甜','重庆','2024-09-05 18:43:18','你这工位舒服了'),('维他甜','重庆','2024-09-05 18:43:05','我天天在学校喝冰水[允悲]热的我'),('维他甜','重庆','2024-09-05 18:42:54','古茗新品吗怎么样'),('星星桃7','浙江','2024-09-05 17:20:45','喝这么多哈哈哈哈哈'),('毛毛鞋和雨伞','浙江','2024-09-05 17:18:23','好好好[偷笑][偷笑][偷笑][偷笑][偷笑]宝贝不胖 随便喝'),('不爱蛋黄酥_','其他','2024-09-05 15:53:38','哈哈哈哈哈坐在那儿就是喝'),('你的小宋佳','江苏','2024-09-05 15:36:03','抹茶那个好喝吗 我刚刚喝了杯一点点[偷乐]'),('·小南星球记VvvVvV·','其他','2024-09-05 14:14:41','哪个最好喝'),('吃口小梨','其他','2024-09-05 13:59:50','我天天在公司喝热水哈哈哈哈'),('吃口小梨','其他','2024-09-05 13:59:35','我觉得这个抹茶的好喝！'),('狐狸吻我','浙江','2024-09-05 13:51:14','给我喝'),('你走慢1点','甘肃 兰州','2024-09-05 13:29:50','要不素大姨妈我也喝！'),('你走慢1点','甘肃 兰州','2024-09-05 13:29:39','好喝爱喝'),('戳心窝窝子','云南 昆明','2024-09-05 13:24:30','这个椰子汁尊的很好喝[哇][哇][哇][哇]'),('_糖醋小排骨_o','辽宁','2024-09-05 13:18:07','我们学校旁边有一家免配送费的喜茶[努力]'),('黎耶','海外','2024-09-05 13:08:08','笑死我了'),('_小魚吐泡泡_','甘肃','2024-09-05 13:02:30','渴就喝'),('_小魚吐泡泡_','甘肃','2024-09-05 13:02:19','哈哈哈'),('粥杏子','澳门','2024-09-05 12:58:24','啊啊这么喝不会拉肚子吗'),('铃昕点邢','江苏','2024-09-05 12:50:33','给我一杯呢'),('偶像色','其他','2024-09-05 12:44:29','哈哈哈哈哈哈哈哈就这么'),('烦心事_FAN','其他','2024-09-05 12:44:16','哈哈哈哈喝完就不用吃饭了[doge]'),('首席磕学部长','重庆','2024-09-05 12:41:08','我愿意帮你分担这甜蜜的负担'),('和易','浙江','2024-09-05 12:33:15','还好还好多喝水好'),('远方的枫林云海','其他','2024-10-09 16:27:59','一起努力！'),('秋晨清雨','其他','2024-10-09 16:16:18','想喝一杯奶咖。'),('我本善良心','陕西 宝鸡','2024-10-09 15:57:32','努力工作！健康生活！'),('Douglaass','浙江 宁波','2024-10-09 14:51:10','我就是典型的卷心菜！90后就是要整顿职场，左手工作，右手生活，是卷王的基本操作，如何破内卷，我下班走之前拿出小福的牛奶🥛 往桌子上一放，椅子上专门放个背包，虚晃一枪，让他们觉得我要加班，卷翻他们[阴险] http://t.cn/A6EYiiUH'),('参禅星月夜','其他','2024-10-09 13:45:43','抖擞精神，开工搬砖！[加油][加油][加油]'),('花露水佐佐木','甘肃 武威','2024-10-09 11:55:46','太喜欢加班了！[doge]卷起来有种神魂俱灭的感觉。下班变身神话悟空打怪，小孩子才做选择，我们成年人，都是做牛做马做不完的活[笑cry]目前面临想跳槽的窘境。但公司的大老板人非常好的，平时加班还会给我们带夜宵。国庆节也给我发了红包，虽然不多，可是好感动～❤️'),('无言opi','江苏 连云港','2024-10-08 19:05:27','来瓶纽麦福开启元气满满的一天[doge]'),('红酒一一玫瑰人生','香港','2024-10-08 14:43:06','刚开工，就有一大堆砖等我搬！[摊手]'),('leahamne','重庆 九龙坡区','2024-10-08 14:30:06','早就在搬砖了[加油]'),('一枚小仙仙儿','其他','2024-10-08 11:35:18','呜[衰]，小福上次的奖品6.0高蛋白纯牛奶收货了，我妈说好喝，这不国庆还没过完就剩一个了，别的奶不喝，把6.0倒数第二个给我喝掉了，我肉疼的赶紧把最后一个藏起来[抱一抱]，哎呀，太好喝咯，俺谁也不给喝了～'),('高老庄庄主_猪八戒','其他','2024-10-08 10:02:25','老猪我搬砖也要精神满满，小福加油，奶香四溢好运来~'),('托马斯炒牛股08','上海','2024-07-24 17:43:42','[good][给力][赞啊]'),('vicky来福他爹','上海 黄浦区','2024-07-24 13:54:16','哈哈'),('黎明之前zxcvbnm','天津','2024-07-23 20:05:47','尹哥今天算逗哏还是捧哏呢[笑cry]'),('用户5541225715','四川','2024-07-09 09:55:53','[good]'),('采姑的娘小蘑菇','广东 深圳','2024-07-08 22:35:07','这。。。吃饭的时候不能看！[doge]'),('钢人奥特曼','山东 青岛','2024-07-08 22:11:58','玻璃杯竟然完好无损'),('喝咖啡的大尾巴狼','上海 普陀区','2024-07-08 22:10:56','Biu biu biu～'),('丶花弄七月','重庆 南岸区','2024-06-14 23:15:38','支持博主'),('曟光书坊','湖北','2024-06-14 21:51:33','学到了[心][鲜花]晚上好'),('诗涵_Coey','广东','2024-06-14 20:19:22','鲜奶更好喝'),('冉筱铃','其他','2024-06-14 17:57:46','下午好[哇]'),('娱乐顶流日记','广东','2024-06-14 15:59:28','营养'),('兰兰的玫瑰-AAC','海外','2024-06-14 15:31:59','[鼓掌][鼓掌][鼓掌]'),('文道生aa','北京 密云区','2024-06-14 15:28:16','支持来了'),('青涩·薄荷','江苏','2024-06-14 15:18:44','因为生活值得，所以频繁记录'),('生活煮酒-','其他','2024-06-14 15:15:05','营养更丰富'),('体育避风港','湖南','2024-06-14 15:10:49','下午好'),('辉哥聊球888','其他','2024-06-14 14:56:29','低温好'),('小窗阅读','其他','2024-06-14 13:31:32','不要人夸好颜色，只流清气满乾坤'),('-公主小鸭-','其他','2024-06-14 13:25:16','感谢分享'),('浊酒史话','江西','2024-06-14 13:11:42','[good][good][good]'),('柚子豆妈','其他','2024-06-14 13:01:12','原来这样啊。很喜欢'),('安安的心灵小屋','其他','2024-06-14 13:00:05','谢谢分享[鲜花][鲜花][鲜花][给力]'),('苏打水的奶茶人生','四川','2024-06-14 12:58:47','涨知识了'),('EOS柚子之家','海南 海口','2024-06-14 12:56:14','美味不错'),('伊典花事','上海 卢湾区','2024-06-14 12:56:12','知识帖[赞][赞][赞]'),('包纸DVD','其他','2024-06-14 12:55:56','学到了'),('浮生弋盏茶','河北 保定','2024-06-14 12:53:13','原来如此'),('星辰说体育','广东','2024-06-14 12:52:52','谢谢博主的分享'),('我就是一个笑脸','湖北','2024-06-14 12:50:31','wow'),('诗路乀','江苏','2024-06-14 12:29:09','下午好[鲜花][鲜花][鲜花]'),('关于郑州的记忆_-','河南','2024-07-03 18:57:39','棒'),('pier77403','其他','2024-06-29 18:52:23','祝贺入选的孩子们[送花花][送花花][送花花]花花小牛🐮[good][good][good]'),('建业-守望','河南 郑州','2024-06-27 14:09:18','恭喜[鲜花][心][打call]'),('伊笑花开','湖北 武汉','2024-06-27 10:34:57','[允悲]'),('随便的绿色煲仔饭','其他','2024-06-26 13:06:02','宝贝入选啦，感谢花花牛[送花花][送花花]'),('大大怪大将军','河南 郑州','2024-06-26 13:00:25','俩孩子双双入围，可喜可贺🎉花花牛[给力]河南足球队[打call][打call][打call]'),('六子smile','河南','2024-06-26 12:08:35','[打call][打call][打call]'),('评论罗伯特','海外','2024-06-26 10:32:35','小朋友们的未来之星，已经在绿茵场上闪烁了！看，那是希望的种子在萌芽，未来的球星或许就藏在他们中间呢！喝口牛奶，壮壮身体，球场见咯！畜牧业也要为体育事业加油哦！'),('不受人惑','辽宁 朝阳','2024-03-21 13:12:54','对吗'),('Lazbjhn','广西 柳州','2024-03-20 15:49:30','说得好'),('就这么走走','其他','2024-03-20 15:44:07','我女儿3岁开始不喝牛奶之后胃口的确好多了'),('逗比人生才有料','北京','2024-03-20 15:15:05','豆浆 怕转基因'),('溪心洞村最靓的仔','广西 贺州','2024-03-20 14:31:24','奶粉呢'),('微博乳业','北京','2024-03-18 14:41:43','#微博公开课##微博知识手册#牛奶原来也是添加剂重灾区[汗]'),('有黑狗的黑猫','海外','2024-03-17 21:24:51','我回国时给孩子买酸奶，大润发2个大货架冰柜的酸奶，我挨个看配料表，竟然只有2种能喝[汗]回国自己吃什么都无所谓，给孩子挑吃的真是太费劲了。看完配料表啥也不想买'),('CFD林花谢了春红123','河北 唐山','2024-03-17 19:43:28','非转基因黄豆打豆浆'),('自求自得','其他','2024-03-17 09:25:37','奶奶，读的不错[good]'),('用户6291830761','其他','2024-03-17 03:10:03','你说的是调制乳的'),('北京簕杜鹃','北京 朝阳区','2024-03-17 00:06:00','[赞]'),('绝梵珊珊','山东 济宁','2024-03-16 20:37:14','国内还有啥是安全的那[允悲]'),('雪山飞猫aa','湖北','2024-03-16 14:35:47','不如喝豆浆，但是不要买转基因的'),('小柒柒猫','其他','2024-03-16 00:22:31','那纯牛奶呢？'),('吕元元bianwed','黑龙江 大庆','2024-03-15 22:24:40','这么说我想起来，小时候喝牛奶不拉肚子，现在拉肚子'),('小五花-','福建 泉州','2024-03-15 20:53:53','郭教授？哪里的教授？连个单位都没有，一般名字下面带的是就职的单位，而不是什么养生节目主持人[允悲]，如果她是什么教授那就不会是主持人，如果她是主持人那就不会是什么教授，如果又是教授又是主持人，那她肯定是骗人的神棍，这种东西也有人信……'),('Crypig','河北 石家庄','2024-03-15 17:08:28','哪来的郭教授？全名都不敢写 哪里的教授 在哪儿任职？ 养生节目是哪个 在哪个平台播放  现在是个人都敢称教授了？'),('用户6040901215','广东 湛江','2024-03-15 15:50:10','正能量传播无需怕下架。如管理人员把此类视频封杀下架那平台我就该下架了'),('山别大革命2013','安徽 合肥','2024-03-15 15:22:55','不喝！我不喝！坚决不喝！'),('臭尼的外婆','其他','2024-03-15 14:34:45','[鲜花]'),('phenixjoy','北京 朝阳区','2024-03-15 13:57:18','太对了……小时候喝牛奶不过敏，现在喝一点儿就过敏[允悲][允悲][允悲][doge][doge][doge]'),('用户v9tdoq9gwf','其他','2024-03-15 13:30:09','[good][good]'),('海哥0212','辽宁','2024-03-15 13:23:31','现在的商家良心好的太少了'),('黄泉川的摆渡人','河北 唐山','2024-02-18 20:40:37','[抱抱]'),('子鸣81','吉林 长春','2024-02-18 20:10:20','素食者的饮品[赞]'),('蓝天196509','江苏 镇江','2024-02-18 19:53:58','[鲜花][鲜花][鲜花]'),('Lili_zZzz','湖北 武汉','2024-02-18 15:53:01','学习'),('娜娜女神5376','其他','2024-02-18 11:44:23','爱您老师[心][心][心]'),('水杀_不坑的坑娘','上海 静安区','2024-02-18 10:28:24','甜杏仁应该不是图片中的那种美国大杏仁吧？'),('十六0616','山东','2024-04-12 05:36:37','点赞[鼓掌]'),('提笔落诗杭','其他','2024-04-03 17:58:23','[坏笑]'),('你好别来无恙666','山东 潍坊','2024-04-03 00:46:11','[送花花]'),('夏天太阳37度','四川 成都','2024-03-16 13:22:42','科技'),('南山坞梅落','山西','2024-03-15 10:08:55','[爱橙橙]'),('DEATHFEARPAIN','江苏','2024-03-15 06:54:09','赞'),('-哼哼哈hei','台湾','2024-03-14 19:41:03','喜欢'),('随心而动-宝妈','天津 河西区','2024-04-02 10:35:49','我今天刚好搜牛奶，同事的纽麦福全脂高钙纯牛奶，口感很好。京东上只有山姆店卖，合下来3.2一瓶200毫升的。只是有点犹豫的是这种进口牛奶怎么保质期都一年之久，不知道时间长了损失营养不，毕竟咱们伊利蒙牛才几个月'),('林淇冰2011','天津 河东区','2024-03-27 08:38:36','求酸奶排名，牛奶固定特仑苏拧盖那款了[doge]'),('不婚快乐','天津','2024-03-26 19:53:55','每日鲜语+1'),('童言妈妈生活记','其他','2024-03-26 06:44:46','最近喝东方甄选沙漠和新疆的'),('我是自信风','河北','2024-03-25 22:24:54','最近一直喝咱庄里的鲜奶。'),('防水涂层ing','其他','2024-03-25 19:45:27','我爱喝5'),('蓝色自然卷','天津 塘沽区','2024-03-24 22:13:08','试一下欧亚大理高原牛奶'),('李菲丽丶','吉林 延边朝鲜族自治州','2024-10-22 20:36:04','云朵叮叮牛奶，听起来就像是在云端品尝的美味[馋嘴]'),('用户8562333012','北京','2024-10-22 08:32:51','我昨晚买了，淘宝那边300满减50.还是可以的'),('夸夸小精灵','其他','2024-10-21 17:08:16','哇塞，这小奶猫也太萌了吧！蹭脚的样子简直让人心都化了！你们真是天使，给它吃的喝的，这小家伙真是遇到好人了！100分！'),('恢m鸿','其他','2024-10-20 18:18:24','E:/⇥ewcnwF43EMUxu⇤ 复制并打开拼夕夕APP，40.7元拼团购买【9月新日期】蒙牛特仑苏梦幻盖纯牛奶25...，仅剩2个名额'),('wy_王蓦尧','福建 龙岩','2024-10-20 11:55:05','喝牛奶有助于身体健康哦，记得每天喝一杯'),('是林嘉丽的佳','福建 泉州','2024-10-20 16:23:11','牛奶的正确喝法，你get了吗？');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 22:38:17
