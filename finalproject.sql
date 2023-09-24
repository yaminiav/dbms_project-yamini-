create database social_media1;
DROP DATABASE social_media1;
CREATE TABLE user_1 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    full_name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE,
    last_login DATETIME,
);
drop  table user_1;
CREATE TABLE Video_2(
    video_id INT PRIMARY KEY,
    user_id INT,
    video_title VARCHAR(100),
    video_description TEXT,
    upload_time DATETIME,
    view_count INT,
    
    FOREIGN KEY (user_id) REFERENCES user_1(user_id)
);
CREATE TABLE Comment_1(
    comment_id INT PRIMARY KEY,
    user_id INT,
    video_id INT,
    comment_text TEXT,
    comment_time DATETIME,
	like_count int ,
	dislike_count int,
    FOREIGN KEY (user_id) REFERENCES user_1(user_id),
    FOREIGN KEY (video_id) REFERENCES Video_2(video_id)
);
CREATE TABLE like_us (
    like_id INT PRIMARY KEY,
    user_id INT,
    video_id INT,
    comment_id INT,
    like_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES user_1(user_id),
    FOREIGN KEY (video_id) REFERENCES Video_2(video_id),
    FOREIGN KEY (comment_id) REFERENCES Comment_1(comment_id)
);
drop table like_us;
CREATE TABLE Subscription (
    subscription_id INT PRIMARY KEY,
    subscriber_id INT,
    channel_id INT,
    subscription_time DATETIME,
	
    FOREIGN KEY (subscriber_id) REFERENCES user_1(user_id),

);
drop table Subscription;
CREATE TABLE Tag (
    tag_id INT PRIMARY KEY,
    video_id INT,
    tag_text VARCHAR(255),
	 FOREIGN KEY (video_id) REFERENCES Video_2(video_id)
   
);
drop table Tag;
CREATE TABLE Channel (
    channel_id INT PRIMARY KEY,
    user_id INT,
    channel_name VARCHAR(100),
    channel_description TEXT,
    creation_date DATE,
    subscriber_count INT,
    FOREIGN KEY (user_id) REFERENCES user_1(user_id)
);
CREATE TABLE Playlist (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_title VARCHAR(100),
    creation_date DATE,
    last_updated date,
    
);
drop table Playlist;
select * from user_1;
select * from Video_2;
select * from comment_1;
select * from like_us;
select * from Subscription;
select * from Tag;
select *from Playlist;
INSERT INTO user_1  values(1501,'Yamini','Avula Yamini','avulayamini233@gmail.com','2022-09-10','2022-11-10');
INSERT INTO user_1  values(1502,'vandana','Vandana','gvandana233@gmail.com','2022-08-10','2022-09-10');
INSERT INTO user_1  values(1503,'joshika','Avula joshika','avulajoshika233@gmail.com','2022-07-10','2022-08-10');
INSERT INTO user_1  values(1504,'sailaja','kamsani Sailaja','ksailaja1999@gmail.com','2022-05-10','2022-06-10');
INSERT INTO user_1  values(1505,'trisha','A Trisha','atrisha1703@gmail.com','2022-04-10','2022-05-10');
INSERT INTO user_1  values(1506,'ruchita','Kamsani Ruchita','kruchitha2004@gmail.com','2022-02-10','2022-07-10');
INSERT INTO user_1  values(1507,'lokesh','lokesh devarkonda','lokeshdevarkonda143@gmail.com','2022-08-10','2022-09-10');
INSERT INTO user_1  values(1508,'prasad','chtika Prasad','chitkaprasad233@gmail.com','2022-09-10','2022-11-10');
INSERT INTO user_1  values(1509,'vishnu','kalapati Vishnu','kvishnu233@gmail.com','2021-09-10','2022-10-9');
INSERT INTO user_1  values(1510,'Seenu','Singham Seenu','SSSennu233@gmail.com','2022-09-10','2022-11-10');
INSERT INTO user_1  values(1511,'Vamshi','Varam Vamshi','Varamvamshi233@gmail.com','2021-09-10','2022-06-10');
INSERT INTO user_1  values(1512,'prasanna','puteki Prasanna','pprasanna233@gmail.com','2022-09-10','2022-11-10');
INSERT INTO user_1  values(1513,'kaveri','kanakam Kaveri','kanakamkaveri3@gmail.com','2022-03-10','2022-11-06');
INSERT INTO user_1  values(1514,'latha','Avula Latha','avulalatha233@gmail.com','2022-06-10','2022-08-10');
INSERT INTO user_1  values(1515,'Raghu','Avula Raghu','avularaghu233@gmail.com','2022-08-10','2022-12-10');
INSERT INTO user_1  values(1516,'rohan','rohanrami reddy','rohanramireddy@gmail.com','2022-09-09','2022-10-09');
INSERT INTO user_1  values(1517,'rishabh','Rishabh shetty','rishabhshetty@gmail.com','2022-03-05','2022-04-03');
INSERT INTO user_1  values(1518,'pragathi','pragathi shetty','pragathirishabhshetty@gmail.com','2022-08-05','2022-09-03');
INSERT INTO user_1  values(1519,'aryan','karthik aryan','karthikaryan08@gmail.com','2022-01-05','2022-05-03');
INSERT INTO user_1  values(1520,'bunny','alluarjun','alluarjunonline@gmail.com','2022-05-05','2022-06-23');
INSERT INTO user_1  values(1521,'priya','priyashetty','priyashetty@gmail.com','2021-03-05','2021-04-03');
INSERT INTO user_1  values(1522,'krithika','krithikashetty','krithikashetty@gmail.com','2020-03-05','2022-04-03');
INSERT INTO user_1  values(1523,'esha','eshasharma','eshasharma245@gmail.com','2020-04-05','2022-05-03');
INSERT INTO user_1  values(1524,'sushritha','sushrithamudiraj','sushrithamudiraj654@gmail.com','2021-03-05','2022-03-03');
INSERT INTO user_1  values(1525,'vatsalya','vatsalyareddy','vatsalyareddy990@gmail.com','2013-03-05','2014-04-03');
INSERT INTO user_1  values(1526,'shivani','shivanireddy','shivanireddy787@gmail.com','2017-03-06','2021-02-09');
INSERT INTO user_1  values(1527,'devanandh','devanandhreddy','devanandhreddy@gmail.com','2018-03-05','2019-04-03');
INSERT INTO user_1  values(1528,'disha','dishapatani','dishapatani246@gmail.com','2016-03-05','2018-04-30');
INSERT INTO user_1  values(1529,'lathifa','lathifacheppali','lathangel899@gmail.com','2022-03-15','2023-04-23');
INSERT INTO user_1  values(1530,'radhakrishna','shriradhakrishna','shriradhakrishna143@gmail.com','2021-04-05','2022-04-27');

INSERT INTO  Video_2 values(1,1501,'India Art','learn design','2022-09-11',2323);
insert into Video_2 values(2,1502,'neso academy','spread knowlege','2022-08-11',201);
insert into Video_2 values(3,1503,'edureka','spread knowlege','2022-06-11',2252);
insert into Video_2 values(4,1504,'simple learn ','spread knowlege','2021-08-11',245);
insert into Video_2 values(5,1505,'jenny lectures','spread knowlege','2019-08-11',256);
insert into Video_2 values(6,1506,'apna college','spread knowlege','2020-08-11',267);
insert into Video_2 values(7,1507,'voice of telugu','knoe ethics and human values','2000-08-11',2784);
insert into Video_2 values(8,1508,'Indian Kitchen','welcome to indian Kitchen','2003-08-11',2785);
insert into Video_2 values(9,1509,'Sravani kitchen','amma chetti vanta','2007-09-11',278);
insert into Video_2 values(10,1510,'Telugu badi','spread knowlege','2000-08-11',278);
insert into Video_2 values(11,1511,'indian Express','Know new things','2006-08-11',27812);
insert into Video_2 values(12,1512,'Aditya Music','Enjoy the beauty of music','2000-08-11',2782);
insert into Video_2 values(13,1513,'ETV cinema','pass the time by movies','1991-08-11',278);
insert into Video_2 values(14,1514,'World Tour','Explore the World','2000-08-11',2681);
insert into Video_2 values(15,1515,'photo Shoot','beauty of world','2000-08-11',2783);
insert into Video_2 values(16,1516,'newton schools','spread knowlege','2000-08-11',278);
insert into Video_2 values(17,1517,'education4u','spread knowlege','2000-08-11',278);
insert into Video_2 values(18,1518,'achitha vlogs','blogger','2000-08-11',278);
insert into Video_2 values(19,1519,'dailyhunt','spread knowlege','2000-08-11',278);
insert into Video_2 values(20,1520,'kitchenvlogs','kitchen organising videos','2000-08-11',278);
insert into Video_2 values(21,1521,'AmmaChethiVanta','gives simple cooking tips','2000-08-11',278);
insert into Video_2 values(22,1522,'Shravanis kitchen','helps in cooking','2000-08-11',278);
insert into Video_2 values(23,1523,'T series','sharing knowledge with ','2000-08-11',278);
insert into Video_2 values(24,1524,'Telugu foodie','enjoy the food world ','2000-08-11',278);
insert into Video_2 values(25,1525,'kurnool vlogs','tirugudham thindham','2000-08-11',278);
insert into Video_2 values(26,1526,'Science Stupids','become stupid with science','2000-08-11',278);
insert into Video_2 values(27,1527,'magic World','welcome to the world  of magic','2000-08-11',278);
insert into Video_2 values(28,1528,'Bangkok pilla','bangkok motham me mundu','2000-08-11',278);
insert into Video_2 values(29,1529,'Sunitha vlogs','ma ente vishyaluu','2000-08-11',278);
insert into Video_2 values(30,1530,'Mehindi Arabic','art and design mukyam','2000-08-11',278);

INSERT INTO Comment_1 values (101, '1501', 1, 'Great video, keep up the good work!', '2022-01-02 12:30:00', 2, 0);
 insert into comment_1 values(102, 1502, 2, 'Nice video, I enjoyed watching it', '2022-01-01 13:00:00', 3, 1);
 insert into comment_1 values(103, 1503, 3, 'the concept of this video is explained clearly', '2022-01-01 13:00:00', 4, 3);
 insert into comment_1 values(104, 1504, 4, 'please produce more videos', '2022-01-01 13:00:00', 2, 4);
 insert into comment_1 values(105, 1505, 5, 'it helped me a lot during examinations', '2022-01-01 13:00:00', 5, 4);
 insert into comment_1 values(106, 1506, 6, 'I passed because of your videos in my sem examinations', '2022-01-01 13:00:00', 3, 1);
insert into comment_1 values(107, 1507, 7, 'my full support to u only bro', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(108, 1508, 8, 'still more videos', '2022-01-01 13:00:00', 8, 4);
insert into comment_1 values(109, 1509, 9, 'excellent Explanation', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(110, 1510, 10, 'my full support to your channel', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(111, 1511, 11, 'nice voice ', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(112, 1512, 12, 'still more videos please', '2022-01-01 13:00:00', 8, 4);
insert into comment_1 values(113, 1513, 13, 'you are helping a lot in our semisters sir', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(114, 1514, 14, 'super energy bro', '2022-01-01 13:00:00', 7, 4);
insert into comment_1 values(115, 1515, 15, 'my full support to u only bro', '2022-01-01 13:00:00', 9, 4);
insert into comment_1 values(116, 1516, 16, 'my full support to u only bro', '2022-01-01 13:00:00', 6, 4);
insert into comment_1 values(117, 1517,17, 'my full support to u only bro', '2021-01-01 13:00:00', 7, 4);
insert into comment_1 values(118, 1518, 18, 'my full support to u only bro', '2022-01-01 13:00:00', 3, 4);
insert into comment_1 values(119, 1519, 19, 'my full support to u only bro', '2020-01-01 13:00:00', 5, 4);
insert into comment_1 values(120, 1520, 20, 'my full support to u only bro', '2022-01-01 13:00:00', 11, 4);

 insert into like_us values(1111,1501,1,101,'2022-08-09');
 insert into like_us values(1112,1502,2,102,'2021-07-09');
 insert into like_us values(1113,1503,3,103,'2022-08-08');
 insert into like_us values(1114,1504,4,104,'2019-08-02');
 insert into like_us values(1115,1505,5,105,'2003-05-09');
 insert into like_us values(1116,1506,6,106,'2018-07-09');
 insert into like_us values(1117,1507,7,107,'2022-02-09');
 insert into like_us values(1118,1508,7,107,'2022-07-09');
 insert into like_us values(1119,1509,7,107,'2012-05-09');
 insert into like_us values(1120,1510,7,107,'2022-04-09');
insert into like_us values(1121,1511,7,107,'2021-03-09');
 insert into like_us values(1122,1512,7,107,'2022-02-09');
insert into like_us values(1123,1513,7,107,'2022-02-09');
 insert into like_us values(1124,1514,7,107,'2023-02-09');
 insert into like_us values(1125,1515,7,107,'2022-02-09');
 insert into like_us values(1126,1516,7,107,'2020-02-09');
 insert into like_us values(1127,1517,7,107,'2022-02-09');
 insert into like_us values(1128,1518,7,107,'2018-02-09');
  insert into like_us values(1129,1519,7,107,'2020-02-09');
  insert into like_us values(1130,1520,7,107,'2021-02-09');
insert into like_us values(1131,1521,7,107,'2021-02-09');
insert into like_us values(1132,1522,7,107,'2018-02-09');
 insert into like_us values(1133,1523,7,107,'2019-08-09');
 insert into like_us values(1134,1524,7,107,'2021-02-09');
 insert into like_us values(1135,1525,7,107,'2020-03-09');
  insert into like_us values(1136,1526,7,107,'2021-02-09');
   insert into like_us values(1137,1527,7,107,'2021-08-09');
    insert into like_us values(1138,1528,7,107,'2018-02-09');
	 insert into like_us values(1139,1529,7,107,'2019-02-09');
	  insert into like_us values(1140,1530,7,107,'2020-02-09');



 insert into Subscription values(2000,1501,20,'2022-03-01 13:00:00');
 insert into Subscription values(2001,1502,21,'2022-01-05 12:00:00');
insert into Subscription values(2002,1503,22,'2022-02-01 16:00:00');
insert into Subscription values(2003,1504,23,'2022-04-01 15:00:00');
insert into Subscription values(2004,1505,24,'2022-06-01 14:00:00');
insert into Subscription values(2005,1506,25,'2022-01-03 23:00:00');
insert into Subscription values(2006,1507,26,'2021-01-03 23:00:00');
insert into Subscription values(2007,1508,27,'2022-02-03 23:00:00');
insert into Subscription values(2008,1509,28,'2022-01-03 24:00:00');
insert into Subscription values(2009,1510,29,'2022-03-04 23:00:00');
insert into Subscription values(2010,1511,30,'2022-01-03 23:00:00');
insert into Subscription values(2011,1512,31,'2016-01-03 26:00:00');
insert into Subscription values(2012,1513,32,'2020-01-09 24:00:00');
insert into Subscription values(2013,1514,33,'2022-06-03 23:00:00');
insert into Subscription values(2014,1515,34,'2022-01-03 23:00:00');
insert into Subscription values(2015,1516,35,'2017-01-03 28:00:00');
insert into Subscription values(2016,1517,36,'2022-01-03 23:00:00');
insert into Subscription values(2017,1518,37,'2022-01-08 23:00:00');
insert into Subscription values(2018,1519,38,'2022-01-03 29:00:00');
insert into Subscription values(2019,1520,39,'2022-01-03 23:00:00');
insert into Subscription values(2020,1521,40,'2022-01-03 23:00:00');
insert into Subscription values(2021,1522,41,'2022-01-03 23:00:00');
insert into Subscription values(2022,1523,42,'2021-01-03 23:00:00');
insert into Subscription values(2023,1524,43,'2022-05-03 24:00:00');
insert into Subscription values(2024,1525,44,'2021-01-03 23:00:00');
insert into Subscription values(2025,1526,45,'2022-03-06 23:00:00');
insert into Subscription values(2026,1527,46,'2021-01-03 26:00:00');
insert into Subscription values(2027,1528,47,'2022-01-03 23:00:00');
insert into Subscription values(2028,1529,48,'2021-05-03 25:00:00');
insert into Subscription values(2029,1530,49,'2022-01-03 23:00:00');






insert into Tag values(601,1,'super anna pls produce more videos');
insert into Tag values(602,2,'Nice content ');
 insert into Tag values(603,3,'it is more useful');
 insert into Tag values(604,4,'nice content');
insert into Tag values(605,5,'super  bro');
insert into Tag values(606,6,'still produce more we are waiting for next episode');
insert into Tag values(607,7,'nice videos');
insert into Tag values(608,8,'more informative');
insert into Tag values(609,9,'super playlist');
insert into Tag values(610,10,'super voice');
insert into Tag values(611,11,'ours support always to you');
insert into Tag values(612,12,'helpful to all bro thank you');
insert into Tag values(613,13,'super anna pls produce more videos');
insert into Tag values(614,14,'super anna pls produce more videos');
insert into Tag values(615,15,'super anna pls produce more videos');
insert into Tag values(616,16,'super explaination');
insert into Tag values(617,17,'super anna pls produce more videos');
insert into Tag values(618,18,'super anna pls produce more videos');
insert into Tag values(619,19,'super anna pls produce more videos');
insert into Tag values(620,20,'super anna pls produce more videos');
insert into Tag values(621,21,'super anna pls produce more videos');
insert into Tag values(622,22,'super anna pls produce more videos');
insert into Tag values(623,23,'super anna pls produce more videos');
insert into Tag values(624,24,'super anna pls produce more videos');
insert into Tag values(625,25,'super anna pls produce more videos');
insert into Tag values(626,26,'super anna pls produce more videos');
insert into Tag values(627,27,'super anna pls produce more videos');
insert into Tag values(628,28,'super anna pls produce more videos');
insert into Tag values(629,29,'super anna pls produce more videos');
insert into Tag values(630,30,'super anna pls produce more videos');



insert into Channel values(109,1501,'Achita vlogs','we produce vlogs on our college','2020-09-12',20920);
insert into Channel values(209,1502,'shravani Kitchen','we produce tasty food try in ur home','2020-09-12',20920);
insert into Channel values(309,1503,'Amma chete vanta','amma laga chese vanta amma ne gurtuchestunde','2020-09-12',20920);
insert into Channel values(409,1504,'Simple learn','we share knowlege ur share too','2020-09-12',209223);
insert into Channel values(509,1505,'intellipaat''provide best education tips','2020-09-12',20921);
insert into Channel values(609,1506,'neet code','updated with Trending Technologies','2020-09-12',20923);
insert into Channel values(709,1507,'Star Maa','Entertainment here only...','2020-09-12',20922);
insert into Channel values(809,1508,'Etv cinema','Entertainment here only...','2020-09-12',20922);
insert into Channel values(909,1509,'Star Maa','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1009,1510,'star+','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1109,1511,'intellipaat','Education+...','2020-09-12',20922);
insert into Channel values(1209,1512,'aditya music','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1309,1513,'mehindi arabic','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1409,1514,'amma cheti vanta','we memorize ur mother..','2020-09-12',20922);
insert into Channel values(1509,1515,'Kurnool vlogs','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1609,1516,'bangkok pilla','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1709,1517,'vantalu vindulu','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1809,1518,'tech world','Entertainment here only...','2020-09-12',20922);
insert into Channel values(1909,1519,'cinema worlds','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2009,1520,'water vlogs','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2109,1521,'daily hunt ','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2209,1522,'Science Stupids','trendings here only...','2020-09-12',20922);
insert into Channel values(2309,1523,'attidi vlogs','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2409,1524,'ct videos','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2509,1525,'vomkar world','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2609,1526,'Techy videos','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2709,1527,'Star Disney','disney world...','2020-09-12',20922);
insert into Channel values(2809,1528,'Science stories','Entertainment here only...','2020-09-12',20922);
insert into Channel values(2909,1529,'zero to infinity','Entertainment here only...','2020-09-12',20922);
insert into Channel values(3009,1530,'Star gold','Entertainment here only...','2020-09-12',20922);
insert into Playlist values(1601,'1501','Telugu Badi Technologies','2020-02-06','2022-02-08');
insert into Playlist values(1602,'1502','Alux.com Bussiness skills','2019-02-06','2022-02-02');
insert into Playlist values(1603,'1503','voice of telugu 2.0 Bahabharatam series','2021-02-06','2022-01-08');
insert into Playlist values(1604,'1504','neso academy DBMS course','2020-02-06','2022-02-08');
insert into Playlist values(1605,'1505','edureka saleforce complete tutorial','2020-09-06','2022-06-08');
insert into Playlist values(1606,'1506','Crisna Chaitanya daily motivation','2017-03-06','2022-04-08');
insert into Playlist values(1607,'1507','intricity101 hadoop playlist','2016-02-06','2022-02-07');
insert into Playlist values(1608,'1508','josh talks daily speeches','2012-02-06','2022-06-08');
insert into Playlist values(1609,'1509','Website learner complete explanation about website','2021-02-06','2022-02-23');
insert into Playlist values(1610,'1510','devops technologies','2021-02-06','2022-02-23');
insert into Playlist values(1611,'1511','hadoop explanation','2021-02-06','2022-02-23');
insert into Playlist values(1612,'1512','bigdata tools','2021-02-06','2022-02-23');
insert into Playlist values(1613,'1513','cloud computing','2021-02-06','2022-02-23');
insert into Playlist values(1614,'1514','harshavadhan motivations','2021-02-06','2022-02-23');
insert into Playlist values(1615,'1515','web technologies','2020-02-06','2022-02-23');
insert into Playlist values(1616,'1516','Website learner complete explanation about website','2021-02-06','2022-02-23');
insert into Playlist values(1617,'1517','pseudo learnings','2019-02-06','2022-02-23');
insert into Playlist values(1618,'1518','blockchain technologies ','2020-02-06','2022-02-23');
insert into Playlist values(1619,'1519','Sweeden beauties','2021-02-06','2022-02-23');
insert into Playlist values(1620,'1520','Website learner ','2020-02-06','2022-02-23');
insert into Playlist values(1621,'1521','philosophical minds','2021-02-06','2022-02-23');
insert into Playlist values(1622,'1522','one day batings','2017-02-06','2022-02-23');
insert into Playlist values(1623,'1523','complete explanation about website','2021-02-06','2022-02-23');
insert into Playlist values(1624,'1524','trending techs','2018-02-06','2022-08-23');
insert into Playlist values(1625,'1525','trending technologies','2021-02-06','2022-02-23');
insert into Playlist values(1626,'1526','via to banglore','2021-02-06','2022-02-23');
