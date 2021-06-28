
DROP TABLE user_tbl CASCADE;
DROP TABLE wondu_tbl CASCADE;
DROP TABLE wondu_good CASCADE;
DROP TABLE content_tbl CASCADE;
DROP TABLE recos_tbl CASCADE;

SET foreign_key_checks = 0;
drop table wondu_tbl CASCADE;
SET foreign_key_checks = 1;

SET foreign_key_checks = 0;
drop table user_tbl CASCADE;
SET foreign_key_checks = 1;


create table user_tbl(
   user_id varchar(30) not null,
   password varchar(30) not null,
   user_name varchar(30) not null,
   primary key(user_id)
);
insert into recos_tbl(wondu_n, user_id) values('브라질 세하도 파인컵 NY2', 'admin');
insert into recos_tbl values('디카페인 과테말라' , 'admin');
select * from recos_tbl;

insert into user_tbl values('admin','admin','관리자');
insert into user_tbl values('min', '12345','아가형민');
insert into user_tbl values('babo', '12345','아가채원');
insert into user_tbl values('jenny','12345','하');
insert into user_tbl values('gg','12345','호');
insert into user_tbl values('hello','12345','인생');
insert into user_tbl values('gson','12345','진짜');
insert into user_tbl values('java','12345','굉장히');
insert into user_tbl values('python','12345','재밌네');
insert into user_tbl values('kaggle','12345','시밣');
insert into user_tbl values('jun','12345','준혁');

insert into user_tbl values('jenny','12345','헤으응');
insert into user_tbl values('gg','12345','쥬지');
insert into user_tbl values('hello','12345','인생쓰다');
insert into user_tbl values('gson','12345','아가준혁');
insert into user_tbl values('java','12345','아가영우');
insert into user_tbl values('python','12345','아가근아');
insert into user_tbl values('kaggle','12345','시밣');

select * from wondu_good;



select * from user_tbl;

select * from recos_tbl;
select * from review_tbl;
insert into recos_tbl(wondu_n, user_id) values('과테말라 안티구아','admin');

select * from wondu_good;




SET foreign_key_checks = 0;
drop table wondu_tbl CASCADE;
SET foreign_key_checks = 1;



create table wondu_tbl(
   wondu_idx int not null,
   wondu_n varchar(100) not null,
   wondu_c varchar(700) not null,
   price varchar(30) not null,
   Cafe int(100) not null,
   img varchar(2000) not null,
   primary key(wondu_n)
);

<<<<<<< HEAD
--truncate wondu_tbl;
insert into wondu_tbl values('1','에티오피아 아리차 내추럴 g1','은은한 꽃향과 상큼한 베리향의 프리미엄 커피','7500','1','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_290%2F1600241498533CBul8_PNG%2F1377344176991246_1333992608.png&type=sc960_832');
insert into wondu_tbl values('2','인도 마이소르 너깃 엑스트라 볼드','견과류 특유의 향과 고소함 밀크초콜릿의 바디감 달콤하고 부드러운 산미의 커피','8000','2','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_233%2F1620807599511WiUnd_JPEG%2F21943434337742690_624569600.jpg&type=sc960_832');
insert into wondu_tbl values('3','인도네시아 만델링 g1','밀크초콜릿의 부드러움 초콜릿같은 풍미 묵직한 바디감의 커피','9500','3','https://search.pstatic.net/common/?src=https%3A%2F%2Fphinf.pstatic.net%2Fshop%2F20210226_163%2F1614291715802Cumgi_JPEG%2F054396018_0.jpg&type=sc960_832');
insert into wondu_tbl values('4','르완다 버번','감귤류의 달콤함 허브의 향 다크초콜릿의 쌉쌉름한 커피','7500','4','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20170301_9%2Fretey_1488369832843zXsVs_JPEG%2F12634657195058746_-600288463.jpg&type=sc960_832');
insert into wondu_tbl values('5','코스타리가 따라주 SHB2','청사과의 청량한 산미 사탕수수의 단맛 카카오의 쓴맛의 커피','7000','5','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('6','세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','5000','6','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200930_276%2F16013951092833KCWR_JPEG%2F2530951926463516_1287083863.JPG&type=sc960_832');
insert into wondu_tbl values('7','탄자니아 AA','적포도의 산미 향설탕의 단맛 자몽오렌지의 달콤 씁쓸함의 커피','7500','7','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDlfMjk4%2FMDAxNjE1Mjg5NTI5NDU4.UyhqiDCpC3bymkmWM9F_iTu6aOQTHsvfMvD-5gfrP1Mg.sy3wDGtVOBHBbNbarD7WU1JkVrxDSUSKYr_jNp86FYIg.JPEG.bak3054%2FKakaoTalk_20210309_195042691_02.jpg&type=sc960_832');
insert into wondu_tbl values('8','파푸아 뉴기니A','땅콩의 고소함 은은한 산미와 단맛 밀크초코의 부드러운 커피','8500','8','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210616_51%2F1623832613035kV1bB_JPEG%2F24968511722660336_1722023914.jpg&type=sc960_832');
insert into wondu_tbl values('9','엘살바도르 SHG','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','9','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMDVfMTI0%2FMDAxNjA0NTg4MjY2NDUx.KSFKyALjHLqYIVNB2b7p3MuCZSZcXT5kNRLMHlrLTTQg.f0K_NZOPunR0ejEUq7Lfad8IOLYutNXCtYEmi3XFKyEg.JPEG.orion_thothe%2FP1030603-01.jpg&type=sc960_832');
insert into wondu_tbl values('10','엘살바도르 SHG2','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','10','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTZfMzIg%2FMDAxNjIxMTYyNjM3MTM1.TrtWE78z1djXrhAyG_WB9ln5RadQgyz6uKSIWOCBPWsg.l0oF3LJalAVyK47S2dGCUkigZbsDPETHG6FaE9CWNrMg.JPEG.psm956282%2F20210511_162223.jpg&type=sc960_832');
insert into wondu_tbl values('11','파나마 에스메랄다 팔미라 에스테이트 스페셜','헤이즐럿의 느낌 바닐라향의 깨끗한 뒷맛 밀크초코의 부드러움이 어우러진 커피','12000','11','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMTZfMjM3%2FMDAxNTg0MzY3MzAxNzU4.Lpgxk1Hc0epz_c7wXL4F_iBOVY61RSHsgQOH_7nnfDYg.5hPETs-h2ZNjjr5h0ry-2bm1k6sURaovKaos2scJ1d4g.JPEG.imnoah__%2FKakaoTalk_20200316_173722220_03.jpg&type=sc960_832');
insert into wondu_tbl values('12','과테말라 안티구아','다크초콜릿의 향 향설탕의 단맛 스모키한 여운의 커피','7500','12','https://search.pstatic.net/sunny/?src=http%3A%2F%2Fthumbnail.10x10.co.kr%2Fwebimage%2Fimage%2Fbasic%2F06%2FB000069217.jpg%3Fcmd%3Dthumb%26w%3D500%26h%3D500%26fit%3Dtrue%26ws%3Dfalse&type=sc960_832');
insert into wondu_tbl values('13','멕시코 치아파스','코코아의 진한 바디감 아몬드의 고소함 잔잔한 시나몬의 향미가 어우러진 커피','8500','13','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_62%2F1620825012975zkGFv_PNG%2FCC0113096.jpg&type=sc960_832');
insert into wondu_tbl values('14','케냐AA 키암부','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','14500','14','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_275%2F1600242119412apjHw_PNG%2F1377903077702866_540100074.png&type=sc960_832');
insert into wondu_tbl values('15','과테말라 산타 모니카 SHB','복숭아향 다크초콜릿의 달콤함이 어우러진 커피','11000','15','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210621_250%2F1624253105062pK5Ii_JPEG%2F25389000746356878_193511833.jpg&type=sc960_832');
insert into wondu_tbl values('16','과테말라 싱글 오리진','카라멜향이 어우러진 커피','10000','16','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MjZfMTk3%2FMDAxNjIyMDEzMjQyODg0.P322lHmvCD5w6SwJS6Eg4tmzcpmdtY4gR6rgde9bCGsg.URHngHc2C4Ez4AXDtcYoCZb8fJSoLXtNSYOqIPE3TxAg.JPEG.sktndls337%2FIMG_5551.JPEG&type=sc960_832');
insert into wondu_tbl values('17','KENNA AA','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','16500','17','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151116_48%2Frkwk1222_1447646172003x2i25_JPEG%2F20151115_114714.jpg&type=sc960_832');
insert into wondu_tbl values('18','Brazil Cerrado','견과류의 고소한향이 어우러진 커피','7500','18','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210618_4%2F1624008342643kb4VP_JPEG%2F25144177473872300_596456445.jpg&type=sc960_832');
insert into wondu_tbl values('19','멕시코 오악사카','견과류의 고소함과 카라멜향이 어우러진 커피','8000','19','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDVfMjAy%2FMDAxNjA5ODU4MjQzNzI3.I0lDMhF60WajFkrb2sw4ioxFAL63lKjLyObQbHFlq2Qg.-fkhL_dU-Jv5EVas7-FnKOWn7uEulaXVqb8DXkJZ6Kwg.JPEG.amanbo_sw%2FIMG_6212.jpg&type=sc960_832');
insert into wondu_tbl values('20','다크 블랜드','다크초콜릿의 쌉싸름한 풍미 부드러운 고소한맛 흑설탕의 단맛이 어우러진 커피','6000','20','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMjk4%2FMDAxNjIyNDY0OTcyODk2.IKP0M5rihGDatWPxBT3FKt1USdAJNCBNPCpMC3mEsmcg.olCWCbN7yCZp3iLrG8M1Wz98Ga9Vn4WXHVRShSerub4g.JPEG.dudcjf3094%2F20210531%25A3%25DF185806.jpg&type=sc960_832');
insert into wondu_tbl values('21','플레이버 블랜드','구수한 견과류의 향과맛 카카오의 쓸쓸한 쓴맛 은은하게 느껴지는 코코아의 단맛과 풍미가 어우러진 커피','7500','21','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MjZfMTk5%2FMDAxNTkzMTczMjM4MDg4.za0RWHDVJ90GslFnkTLKVflzEGLydZVRLfOOkGMr4jMg.P8mSZlFPi-H6RIyyUPW64ZjdKAyEw6OZRvJSawPdIzIg.JPEG.nayaa64%2F1593173233423.jpg&type=sc960_832');
insert into wondu_tbl values('22','시즌골드 블랜드','깔끔한 밝은 산미 풍부한 아로마향 여운이 감도는 단맛이 어우러진 커피','8000','22','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDZfMTYw%2FMDAxNjA5OTAyODE4Mzg0.jgAqmOvudjTUUYvRT8dgF1ugH0NApMb15YU-l4n0lKIg.Jx36q0SmOgGXD_dG-uH9yjjuT63jyunXc1Qkf5L_UpAg.JPEG.inyoung1031%2F2021%25A3%25AD01%25A3%25AD06%25A3%25AD12%25A3%25AD10%25A3%25AD43%25A3%25AD893.jpg&type=sc960_832');
insert into wondu_tbl values('23','디카페인 멕시코','견과류의 고소함과 향 부드러운 바디감 흑설탕같은 풍미와 단맛 균형잡힌 밸런스가 특징인 커피','7500','23','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210610_14%2F1623297570728FF64b_JPEG%2F24433416448704746_1701361084.jpg&type=sc960_832');
insert into wondu_tbl values('24','브라질 옐로우 버번','은은한 감귤류의 단맛 견과류의 고소함 구운 토스트향이 특징인 커피','7000','24','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjExMjVfMTc1%2FMDAxNDgwMDU3OTk4NDg2.MGGUL2UI0RFAGZ4HhJ-_j3bKPOLHmQ73ySY-R6JjJ6Qg.-0XUsktgDS6d09svvSA9ilU7iUu9oCAFyGTAjSfSksgg.JPEG.elesod%2F%25BA%25EA%25B6%25F3%25C1%25FA%25BF%25BB%25B7%25CE%25BF%25EC%25B9%25F6%25B9%25F8_2.JPG&type=sc960_832');
insert into wondu_tbl values('25','오롯이 블랜드','견과류의 고소한맛 쌉싸름한 다크초코의 향미 은은한 오크통 향이 특징인 커피','7500','25','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMTQ3%2FMDAxNjE3MzgyOTUzNjQ2.Xcz6hyP5UJTz3-CGL8f8o1jD1dINgCzAD1bhuDd2c-cg.B7ShiM_GPspkKaocwVBlTa6MyyOKaWYgYLbLrhH3uRYg.JPEG.fromrami%2FIMG_7378.JPG&type=sc960_832');
insert into wondu_tbl values('26','콜롬비아 수프리모','과일향과 초콜릿의 단맛이 특징인 커피','8500','26','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140929_164%2Fesperecoffee_1411967965019XYSfl_JPEG%2F1411967966039_20140929_141438_HDR2.jpg&type=sc960_832');
insert into wondu_tbl values('27','에티오피아 예가체프 G2','초콜릿의 단맛과 과일의 산미가 특징인 커피','11000','27','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMTFfMjE4%2FMDAxNjA1MDY2MzUxMDM4.Xc07sQhoMdGOgEv6plOO6o0GkstCm_HO-9vu8ThCUnsg.Q-WP4-OkSIb4FoQagJ-Gs-4U6T9Pt1pww1G8H5YK8Scg.JPEG.dreamingruv%2F20201111%25A3%25DF120501.jpg&type=sc960_832');
insert into wondu_tbl values('28','에티오피아 시다모 G2','꽃향과 레몬의 상큼함이 특징인 커피','10500','28','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210219_70%2F1613702631647jtRym_PNG%2F14838520309814050_431625004.png&type=sc960_832');
insert into wondu_tbl values('29','코스타리가 따라주 SHB','여운의 카카오의 쓴맛 사탕수수의 단맛 청사과의 새콤달콤한 향이 특징인 커피','7000','29','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('30','에티오피아 코케허니 G1','꿀과 시트러스가 들어가 부드러운 바디감이 특징인 커피','17000','30','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjNfMjk3%2FMDAxNjE5MTY2NDQ4NDQx.9SzQDu3EqQj_Z2WExAlxFBw8z1N-9fjqkQDh1MdXJ_Ag.xVZ1BcIb3b_0f6QFSKE9Zot0YPW7dRgcit0YL2ZcRqUg.JPEG.mjone_c%2FIMG_6712.jpg&type=sc960_832');
insert into wondu_tbl values('31','디카페인 브라질','아몬드의 고소함 카카오의 여운 허브의 은은한 향이 특징인 커피','9000','31','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMzEg%2FMDAxNjIyNDE3MDkxMTQx.Fo8JxeVpOw4-AQkHjbr10O8Qcn_a-_4gS7CNSj3Ep2Eg.xoAGpk95i3YJZBFizfiWx9FCmpZ5nCSM9EWJeeIoXIgg.JPEG.0514grace%2F20210531%25A3%25DF071559.jpg&type=sc960_832');
insert into wondu_tbl values('32','인도 몬순 말라브라 AA','곡물류의 복합적인 너티향 부드러운 단맛 향신료의 스파이시함이 특징인 커피','8000','32','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTdfMjc3%2FMDAxNjIxMjIyMjIwMjAz.vin72mq80l-sD34qYBdJ7_NsCmXsF09_0HtNt6f0PT4g.pgLVtEpco7C1NwXYV_chDZhnquMQJeGMsB7ikQlKxVEg.JPEG.alsdldyddl%2FIMG_7335.jpg&type=sc960_832');
insert into wondu_tbl values('33','케냐 AA','아프리카의 레드와인 깊은 과실의 향 깊은 단맛의 밸런스가 특징인 커피','11000','33','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTVfMTQ0%2FMDAxNjIzNzU5MjY0ODI0.wGNSip7zRbaQUcuM980RKeO69KlhcFMTcVVy8vDwCxEg.vRAVUiJQuul5BmsEol4jvWqy2Djv-MGl6SrokYuVfr8g.PNG.gon8256%2F%25C1%25A6%25B8%25F1_%25BE%25F8%25C0%25BD.png&type=sc960_832');
insert into wondu_tbl values('34','디카페인 에티오피아','초콜릿같은 단맛 새콤달콤 산미 시리얼같은 고소함이 특징인 커피','9500','34','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210111_104%2F1610369584878EuhWq_JPEG%2F11505368297785866_1544594756.jpg&type=sc960_832');
insert into wondu_tbl values('35','디카페인 콜롬비아','오렌지같은 단맛 달콤하고 고소한 맛 부드러운 목넘김이 특징인 커피','9000','35','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTlfMjc4%2FMDAxNjI0MTA3MjE2NTAx.HAz4V1twUv0TehxnvQ6aTyAdx8WGyrTUhh6Ps-QH2iAg.j2mHIJrTvc-p1PCgiiXKM3BGuIQv3QKKXhwcoTjPlbAg.JPEG.osy4807%2FIMG_6037.jpg&type=sc960_832');
insert into wondu_tbl values('36','스페셜티 블랜드','과일류의 베리향 상큼한 패션후르츠 스카치캔디의 달콤함이 특징인 커피','12000','36','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjRfMjMy%2FMDAxNjI0NTA4Njc1MTQz.BukXwyd4Z4LTtuPZierZ_AD_n7C5eFLCw1YP0jT_DzQg.gl-dZLeVdD_igB2o200lIqkGOdVr4b7-Ia5ykf2X0eYg.JPEG.1224sumi%2Foutput_3880602446.jpg&type=sc960_832');
insert into wondu_tbl values('37','디카페인 과테말라','중후한 바디감 땅콩같은 고소함 부드러운 단맛 은은한 감칠맛과 풍미가 특징인 커피','9900','37','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200417_284%2F1587110469281z5NzB_JPEG%2F24473857799975790_1238652050.jpg&type=sc960_832');
insert into wondu_tbl values('38','콜롬비아 수프리모 모틸론','호두의 고소함 오렌지 향미 카카오의 쓴맛이 특징인 커피','11000','38','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150616_72%2Fbeanbalance_1434410204818WeNGJ_JPEG%2FSAM_1348.jpg&type=sc960_832');
insert into wondu_tbl values('39','페루 에스트텔라','초콜릿의 씁쓸함 견과류의 고소함이 어우러진 커피','9000','39','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDdfMSAg%2FMDAxNjE3Nzg4Nzk0NDM0.71mHZu6i1-gbQK_f2t7wTXhnYPlCxqnhb3BXjNNhIPAg.00ROC0SziWAX1h8i4z5aoiwrxrf4ajPZbAKq-vn7av0g.JPEG.aengjju%2FDSC06818.JPG&type=sc960_832');
insert into wondu_tbl values('40','르완다 카림심비','조화로운 꽃향이 특징인 커피','8500','40','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MTRfMjk2%2FMDAxNTk0NzEyNzU5Mzgz.1i7AOOuf1vtJwhYQvbL4b5Ek1tn7e-LflG_oLtkZoYkg.Z2TC3OpK-iGD4xnlIUR6F7natScCDXPlORXl3a0ydekg.JPEG.tnrud6359%2FIMG_7115.JPG&type=sc960_832');
insert into wondu_tbl values('41','코스타리카 프리미엄 따라주','깊은 아로마 향 초콜릿의 달콤함이 특징인 커피','10300','41','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210214_85%2F1613290032688sMar6_JPEG%2F14425811965532673_1347887553.jpg&type=sc960_832');
insert into wondu_tbl values('42','브라질 이글 모지아나 내추럴','견과류의 고소함 달콤한향이 어우러진 커피','7500','42','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MjRfMjk3%2FMDAxNTk1NTc3OTY1MTI2.Scm8TifSaJ0nggmlMNNheKLNsHFOzc6YeGcDJssf3Iwg.jtJw3poDPGICu4dVa6Oul3c31BkrBfgZ4vPsTu93NPkg.JPEG.coffeemachinestory%2FKakaoTalk_20200724_163412940.jpg&type=sc960_832');
insert into wondu_tbl values('43','필리핀 PCQC2019','과일향의 산미 달콤한 향이 특징인 커피','8500','45','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA2MTZfMTgy%2FMDAxNTYwNjg5MDYxNzQ2.Xryer8vKua4gfch7rNzyjyzFqepqLXAVS3-fCg5WXG4g.d978SoWwQGDiY6bHwhMBHtwgPq726JZb7KozLkP9bJcg.JPEG.deerfoot%2Foutput_1434919608.jpg&type=sc960_832');
insert into wondu_tbl values('44','르완다 이메나','견과류의 고소함 과일의 상콤함이 특징인 커피','8000','46','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200420_194%2F1587392141211GWzyA_JPEG%2F24754474778832843_1670481984.jpg&type=sc960_832');
insert into wondu_tbl values('45','르완다 카라고','강력한 초콜릿 향이 특징인 커피','9000','47','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_297%2F1608783052787CNhSc_PNG%2F9918948519564622_1413519993.png&type=sc960_832');
insert into wondu_tbl values('46','르완다 봄보','달콤함과 견과류의 고소함이 어우러진 커피','7500','48','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_43%2F1608772138391biEIS_PNG%2F9908026928495751_622186501.png&type=sc960_832');
insert into wondu_tbl values('47','르완다 키고마 허니','견과류향과 과일의 단맛이 들어가있는 커피','9000','49','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTBfMTA4%2FMDAxNTcwNjQyNzczOTgw.DvuWva4mX-C3lmaPp_2vUe7RJNFBp29Yq8jI7SZusAog.PBo3txZf-vz3lXK5I--o8u2ABZ0AIQn_icKwnQuog-Ag.JPEG.bluebluesy%2F20191004_161656.jpg&type=sc960_832');
insert into wondu_tbl values('48','르완다 임부토 블루','은은한 꽃향과 초콜릿의 달콤함이 첨가된 커피','12000','50','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDFfMjY1%2FMDAxNjE0NTY0NDgwODcz.hZoyFi7Eok3TR2yWa5oGLP3Y7nMG8_tIRXx6I9czK7Eg.3Yfe9gfFBsmnOsvdsmyw-oBiSKg8vz-7ww6dyGneVc4g.JPEG.oboessun%2FIMG_0005.JPG&type=sc960_832');
insert into wondu_tbl values('49','파푸아뉴기니 블루마운틴','카라멜향과 달콤함향 과일의 산미가 특징인 커피','9500','51','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MDZfNCAg%2FMDAxNTg2MTQyMjM0OTc1.bp1QIGu-4gzd_QC421M98l9T8-_ArfWA_XSbdwmdFigg.HGv-PlwJ9wSD576cBybLRTFKFpOLq11pzzAN--WxxFUg.JPEG.guskrhdwn94%2F%25C4%25BF%25C7%25C7%25B8%25B8%25B5%25E9%25B1%25E217.JPG&type=sc960_832');
insert into wondu_tbl values('50','디카페인 과테말라 프리마베라','견과류의 고소함과 달콤함이 조화로운 커피','8500','52','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjVfMjky%2FMDAxNjE0MjU5MTM5NDky.1--uaUQ3oIvDRTwQQgcbEQq8mMYUVrb8zz79uo-wILUg.3wrS8NYVZF_PfCVEJe_1oe7MmU9U8PB_F2mzPXq8CJ4g.JPEG.xoghek01%2FKakaoTalk_20210223_191954835.jpg&type=sc960_832');
insert into wondu_tbl values('51','파나마 앤썸 게이샤','과일의 산미와 견과류의 달달함이 조화롭게 섞인 커피','7000','53','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210107_249%2F1609983009575IkBjB_PNG%2F11118843385227686_687618374.png&type=sc960_832');
insert into wondu_tbl values('52','케냐 키리냐가','견과류의 고소함과 적당한 산미가 특징인 커피','6000','54','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210405_126%2F161762619715476F5N_JPEG%2F18762042833870485_366263514.JPG&type=sc960_832');
insert into wondu_tbl values('53','에티오피아 구지 고메로','은은 견과류향이 특징인 커피','6500','55','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210415_34%2F1618468828164nRTB8_JPEG%2F19604607885699131_1582753311.jpg&type=sc960_832');
insert into wondu_tbl values('54','브라질 세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','56','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210406_157%2F1617634852508vLMFG_JPEG%2F18770686320660597_498358612.jpg&type=sc960_832');
insert into wondu_tbl values('55','에티오피아 코케허니 G1 스페셜','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','57','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjVfNSAg%2FMDAxNjE5MzYxNzI0OTU4.3vFY3ZF2QGTjldfooWy26KQglW9N4Jw7MhPXsRc5sh4g.J9GNRK532-Qz-bCBYwdRaTou23tz9oULJSQB2Vg29Tog.JPEG.bonnie_on%2F20210425%25A3%25DF225952.jpg&type=sc960_832');
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/coffee.git


<<<<<<< HEAD
=======
--truncate wondu_tbl;
insert into wondu_tbl values('1','에티오피아 아리차 내추럴 g1','은은한 꽃향과 상큼한 베리향의 프리미엄 커피','7500','1','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_290%2F1600241498533CBul8_PNG%2F1377344176991246_1333992608.png&type=sc960_832');
insert into wondu_tbl values('2','인도 마이소르 너깃 엑스트라 볼드','견과류 특유의 향과 고소함 밀크초콜릿의 바디감 달콤하고 부드러운 산미의 커피','8000','2','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_233%2F1620807599511WiUnd_JPEG%2F21943434337742690_624569600.jpg&type=sc960_832');
insert into wondu_tbl values('3','인도네시아 만델링 g1','밀크초콜릿의 부드러움 초콜릿같은 풍미 묵직한 바디감의 커피','9500','3','https://search.pstatic.net/common/?src=https%3A%2F%2Fphinf.pstatic.net%2Fshop%2F20210226_163%2F1614291715802Cumgi_JPEG%2F054396018_0.jpg&type=sc960_832');
insert into wondu_tbl values('4','르완다 버번','감귤류의 달콤함 허브의 향 다크초콜릿의 쌉쌉름한 커피','7500','4','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20170301_9%2Fretey_1488369832843zXsVs_JPEG%2F12634657195058746_-600288463.jpg&type=sc960_832');
insert into wondu_tbl values('5','코스타리가 따라주 SHB2','청사과의 청량한 산미 사탕수수의 단맛 카카오의 쓴맛의 커피','7000','5','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('6','세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','5000','6','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200930_276%2F16013951092833KCWR_JPEG%2F2530951926463516_1287083863.JPG&type=sc960_832');
insert into wondu_tbl values('7','탄자니아 AA','적포도의 산미 향설탕의 단맛 자몽오렌지의 달콤 씁쓸함의 커피','7500','7','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDlfMjk4%2FMDAxNjE1Mjg5NTI5NDU4.UyhqiDCpC3bymkmWM9F_iTu6aOQTHsvfMvD-5gfrP1Mg.sy3wDGtVOBHBbNbarD7WU1JkVrxDSUSKYr_jNp86FYIg.JPEG.bak3054%2FKakaoTalk_20210309_195042691_02.jpg&type=sc960_832');
insert into wondu_tbl values('8','파푸아 뉴기니A','땅콩의 고소함 은은한 산미와 단맛 밀크초코의 부드러운 커피','8500','8','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210616_51%2F1623832613035kV1bB_JPEG%2F24968511722660336_1722023914.jpg&type=sc960_832');
insert into wondu_tbl values('9','엘살바도르 SHG','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','9','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMDVfMTI0%2FMDAxNjA0NTg4MjY2NDUx.KSFKyALjHLqYIVNB2b7p3MuCZSZcXT5kNRLMHlrLTTQg.f0K_NZOPunR0ejEUq7Lfad8IOLYutNXCtYEmi3XFKyEg.JPEG.orion_thothe%2FP1030603-01.jpg&type=sc960_832');
insert into wondu_tbl values('10','엘살바도르 SHG2','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','10','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTZfMzIg%2FMDAxNjIxMTYyNjM3MTM1.TrtWE78z1djXrhAyG_WB9ln5RadQgyz6uKSIWOCBPWsg.l0oF3LJalAVyK47S2dGCUkigZbsDPETHG6FaE9CWNrMg.JPEG.psm956282%2F20210511_162223.jpg&type=sc960_832');
insert into wondu_tbl values('11','파나마 에스메랄다 팔미라 에스테이트 스페셜','헤이즐럿의 느낌 바닐라향의 깨끗한 뒷맛 밀크초코의 부드러움이 어우러진 커피','12000','11','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMTZfMjM3%2FMDAxNTg0MzY3MzAxNzU4.Lpgxk1Hc0epz_c7wXL4F_iBOVY61RSHsgQOH_7nnfDYg.5hPETs-h2ZNjjr5h0ry-2bm1k6sURaovKaos2scJ1d4g.JPEG.imnoah__%2FKakaoTalk_20200316_173722220_03.jpg&type=sc960_832');
insert into wondu_tbl values('12','과테말라 안티구아','다크초콜릿의 향 향설탕의 단맛 스모키한 여운의 커피','7500','12','https://search.pstatic.net/sunny/?src=http%3A%2F%2Fthumbnail.10x10.co.kr%2Fwebimage%2Fimage%2Fbasic%2F06%2FB000069217.jpg%3Fcmd%3Dthumb%26w%3D500%26h%3D500%26fit%3Dtrue%26ws%3Dfalse&type=sc960_832');
insert into wondu_tbl values('13','멕시코 치아파스','코코아의 진한 바디감 아몬드의 고소함 잔잔한 시나몬의 향미가 어우러진 커피','8500','13','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_62%2F1620825012975zkGFv_PNG%2FCC0113096.jpg&type=sc960_832');
insert into wondu_tbl values('14','케냐AA 키암부','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','14500','14','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_275%2F1600242119412apjHw_PNG%2F1377903077702866_540100074.png&type=sc960_832');
insert into wondu_tbl values('15','과테말라 산타 모니카 SHB','복숭아향 다크초콜릿의 달콤함이 어우러진 커피','11000','15','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210621_250%2F1624253105062pK5Ii_JPEG%2F25389000746356878_193511833.jpg&type=sc960_832');
insert into wondu_tbl values('16','과테말라 싱글 오리진','카라멜향이 어우러진 커피','10000','16','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MjZfMTk3%2FMDAxNjIyMDEzMjQyODg0.P322lHmvCD5w6SwJS6Eg4tmzcpmdtY4gR6rgde9bCGsg.URHngHc2C4Ez4AXDtcYoCZb8fJSoLXtNSYOqIPE3TxAg.JPEG.sktndls337%2FIMG_5551.JPEG&type=sc960_832');
insert into wondu_tbl values('17','KENNA AA','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','16500','17','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151116_48%2Frkwk1222_1447646172003x2i25_JPEG%2F20151115_114714.jpg&type=sc960_832');
insert into wondu_tbl values('18','Brazil Cerrado','견과류의 고소한향이 어우러진 커피','7500','18','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210618_4%2F1624008342643kb4VP_JPEG%2F25144177473872300_596456445.jpg&type=sc960_832');
insert into wondu_tbl values('19','멕시코 오악사카','견과류의 고소함과 카라멜향이 어우러진 커피','8000','19','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDVfMjAy%2FMDAxNjA5ODU4MjQzNzI3.I0lDMhF60WajFkrb2sw4ioxFAL63lKjLyObQbHFlq2Qg.-fkhL_dU-Jv5EVas7-FnKOWn7uEulaXVqb8DXkJZ6Kwg.JPEG.amanbo_sw%2FIMG_6212.jpg&type=sc960_832');
insert into wondu_tbl values('20','다크 블랜드','다크초콜릿의 쌉싸름한 풍미 부드러운 고소한맛 흑설탕의 단맛이 어우러진 커피','6000','20','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMjk4%2FMDAxNjIyNDY0OTcyODk2.IKP0M5rihGDatWPxBT3FKt1USdAJNCBNPCpMC3mEsmcg.olCWCbN7yCZp3iLrG8M1Wz98Ga9Vn4WXHVRShSerub4g.JPEG.dudcjf3094%2F20210531%25A3%25DF185806.jpg&type=sc960_832');
insert into wondu_tbl values('21','플레이버 블랜드','구수한 견과류의 향과맛 카카오의 쓸쓸한 쓴맛 은은하게 느껴지는 코코아의 단맛과 풍미가 어우러진 커피','7500','21','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MjZfMTk5%2FMDAxNTkzMTczMjM4MDg4.za0RWHDVJ90GslFnkTLKVflzEGLydZVRLfOOkGMr4jMg.P8mSZlFPi-H6RIyyUPW64ZjdKAyEw6OZRvJSawPdIzIg.JPEG.nayaa64%2F1593173233423.jpg&type=sc960_832');
insert into wondu_tbl values('22','시즌골드 블랜드','깔끔한 밝은 산미 풍부한 아로마향 여운이 감도는 단맛이 어우러진 커피','8000','22','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDZfMTYw%2FMDAxNjA5OTAyODE4Mzg0.jgAqmOvudjTUUYvRT8dgF1ugH0NApMb15YU-l4n0lKIg.Jx36q0SmOgGXD_dG-uH9yjjuT63jyunXc1Qkf5L_UpAg.JPEG.inyoung1031%2F2021%25A3%25AD01%25A3%25AD06%25A3%25AD12%25A3%25AD10%25A3%25AD43%25A3%25AD893.jpg&type=sc960_832');
insert into wondu_tbl values('23','디카페인 멕시코','견과류의 고소함과 향 부드러운 바디감 흑설탕같은 풍미와 단맛 균형잡힌 밸런스가 특징인 커피','7500','23','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210610_14%2F1623297570728FF64b_JPEG%2F24433416448704746_1701361084.jpg&type=sc960_832');
insert into wondu_tbl values('24','브라질 옐로우 버번','은은한 감귤류의 단맛 견과류의 고소함 구운 토스트향이 특징인 커피','7000','24','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjExMjVfMTc1%2FMDAxNDgwMDU3OTk4NDg2.MGGUL2UI0RFAGZ4HhJ-_j3bKPOLHmQ73ySY-R6JjJ6Qg.-0XUsktgDS6d09svvSA9ilU7iUu9oCAFyGTAjSfSksgg.JPEG.elesod%2F%25BA%25EA%25B6%25F3%25C1%25FA%25BF%25BB%25B7%25CE%25BF%25EC%25B9%25F6%25B9%25F8_2.JPG&type=sc960_832');
insert into wondu_tbl values('25','오롯이 블랜드','견과류의 고소한맛 쌉싸름한 다크초코의 향미 은은한 오크통 향이 특징인 커피','7500','25','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMTQ3%2FMDAxNjE3MzgyOTUzNjQ2.Xcz6hyP5UJTz3-CGL8f8o1jD1dINgCzAD1bhuDd2c-cg.B7ShiM_GPspkKaocwVBlTa6MyyOKaWYgYLbLrhH3uRYg.JPEG.fromrami%2FIMG_7378.JPG&type=sc960_832');
insert into wondu_tbl values('26','콜롬비아 수프리모','과일향과 초콜릿의 단맛이 특징인 커피','8500','26','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140929_164%2Fesperecoffee_1411967965019XYSfl_JPEG%2F1411967966039_20140929_141438_HDR2.jpg&type=sc960_832');
insert into wondu_tbl values('27','에티오피아 예가체프 G2','초콜릿의 단맛과 과일의 산미가 특징인 커피','11000','27','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMTFfMjE4%2FMDAxNjA1MDY2MzUxMDM4.Xc07sQhoMdGOgEv6plOO6o0GkstCm_HO-9vu8ThCUnsg.Q-WP4-OkSIb4FoQagJ-Gs-4U6T9Pt1pww1G8H5YK8Scg.JPEG.dreamingruv%2F20201111%25A3%25DF120501.jpg&type=sc960_832');
insert into wondu_tbl values('28','에티오피아 시다모 G2','꽃향과 레몬의 상큼함이 특징인 커피','10500','28','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210219_70%2F1613702631647jtRym_PNG%2F14838520309814050_431625004.png&type=sc960_832');
insert into wondu_tbl values('29','코스타리가 따라주 SHB','여운의 카카오의 쓴맛 사탕수수의 단맛 청사과의 새콤달콤한 향이 특징인 커피','7000','29','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('30','에티오피아 코케허니 G1','꿀과 시트러스가 들어가 부드러운 바디감이 특징인 커피','17000','30','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjNfMjk3%2FMDAxNjE5MTY2NDQ4NDQx.9SzQDu3EqQj_Z2WExAlxFBw8z1N-9fjqkQDh1MdXJ_Ag.xVZ1BcIb3b_0f6QFSKE9Zot0YPW7dRgcit0YL2ZcRqUg.JPEG.mjone_c%2FIMG_6712.jpg&type=sc960_832');
insert into wondu_tbl values('31','디카페인 브라질','아몬드의 고소함 카카오의 여운 허브의 은은한 향이 특징인 커피','9000','31','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMzEg%2FMDAxNjIyNDE3MDkxMTQx.Fo8JxeVpOw4-AQkHjbr10O8Qcn_a-_4gS7CNSj3Ep2Eg.xoAGpk95i3YJZBFizfiWx9FCmpZ5nCSM9EWJeeIoXIgg.JPEG.0514grace%2F20210531%25A3%25DF071559.jpg&type=sc960_832');
insert into wondu_tbl values('32','인도 몬순 말라브라 AA','곡물류의 복합적인 너티향 부드러운 단맛 향신료의 스파이시함이 특징인 커피','8000','32','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTdfMjc3%2FMDAxNjIxMjIyMjIwMjAz.vin72mq80l-sD34qYBdJ7_NsCmXsF09_0HtNt6f0PT4g.pgLVtEpco7C1NwXYV_chDZhnquMQJeGMsB7ikQlKxVEg.JPEG.alsdldyddl%2FIMG_7335.jpg&type=sc960_832');
insert into wondu_tbl values('33','케냐 AA','아프리카의 레드와인 깊은 과실의 향 깊은 단맛의 밸런스가 특징인 커피','11000','33','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTVfMTQ0%2FMDAxNjIzNzU5MjY0ODI0.wGNSip7zRbaQUcuM980RKeO69KlhcFMTcVVy8vDwCxEg.vRAVUiJQuul5BmsEol4jvWqy2Djv-MGl6SrokYuVfr8g.PNG.gon8256%2F%25C1%25A6%25B8%25F1_%25BE%25F8%25C0%25BD.png&type=sc960_832');
insert into wondu_tbl values('34','디카페인 에티오피아','초콜릿같은 단맛 새콤달콤 산미 시리얼같은 고소함이 특징인 커피','9500','34','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210111_104%2F1610369584878EuhWq_JPEG%2F11505368297785866_1544594756.jpg&type=sc960_832');
insert into wondu_tbl values('35','디카페인 콜롬비아','오렌지같은 단맛 달콤하고 고소한 맛 부드러운 목넘김이 특징인 커피','9000','35','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTlfMjc4%2FMDAxNjI0MTA3MjE2NTAx.HAz4V1twUv0TehxnvQ6aTyAdx8WGyrTUhh6Ps-QH2iAg.j2mHIJrTvc-p1PCgiiXKM3BGuIQv3QKKXhwcoTjPlbAg.JPEG.osy4807%2FIMG_6037.jpg&type=sc960_832');
insert into wondu_tbl values('36','스페셜티 블랜드','과일류의 베리향 상큼한 패션후르츠 스카치캔디의 달콤함이 특징인 커피','12000','36','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjRfMjMy%2FMDAxNjI0NTA4Njc1MTQz.BukXwyd4Z4LTtuPZierZ_AD_n7C5eFLCw1YP0jT_DzQg.gl-dZLeVdD_igB2o200lIqkGOdVr4b7-Ia5ykf2X0eYg.JPEG.1224sumi%2Foutput_3880602446.jpg&type=sc960_832');
insert into wondu_tbl values('37','디카페인 과테말라','중후한 바디감 땅콩같은 고소함 부드러운 단맛 은은한 감칠맛과 풍미가 특징인 커피','9900','37','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200417_284%2F1587110469281z5NzB_JPEG%2F24473857799975790_1238652050.jpg&type=sc960_832');
insert into wondu_tbl values('38','콜롬비아 수프리모 모틸론','호두의 고소함 오렌지 향미 카카오의 쓴맛이 특징인 커피','11000','38','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150616_72%2Fbeanbalance_1434410204818WeNGJ_JPEG%2FSAM_1348.jpg&type=sc960_832');
insert into wondu_tbl values('39','페루 에스트텔라','초콜릿의 씁쓸함 견과류의 고소함이 어우러진 커피','9000','39','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDdfMSAg%2FMDAxNjE3Nzg4Nzk0NDM0.71mHZu6i1-gbQK_f2t7wTXhnYPlCxqnhb3BXjNNhIPAg.00ROC0SziWAX1h8i4z5aoiwrxrf4ajPZbAKq-vn7av0g.JPEG.aengjju%2FDSC06818.JPG&type=sc960_832');
insert into wondu_tbl values('40','르완다 카림심비','조화로운 꽃향이 특징인 커피','8500','40','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MTRfMjk2%2FMDAxNTk0NzEyNzU5Mzgz.1i7AOOuf1vtJwhYQvbL4b5Ek1tn7e-LflG_oLtkZoYkg.Z2TC3OpK-iGD4xnlIUR6F7natScCDXPlORXl3a0ydekg.JPEG.tnrud6359%2FIMG_7115.JPG&type=sc960_832');
insert into wondu_tbl values('41','코스타리카 프리미엄 따라주','깊은 아로마 향 초콜릿의 달콤함이 특징인 커피','10300','41','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210214_85%2F1613290032688sMar6_JPEG%2F14425811965532673_1347887553.jpg&type=sc960_832');
insert into wondu_tbl values('42','브라질 이글 모지아나 내추럴','견과류의 고소함 달콤한향이 어우러진 커피','7500','42','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MjRfMjk3%2FMDAxNTk1NTc3OTY1MTI2.Scm8TifSaJ0nggmlMNNheKLNsHFOzc6YeGcDJssf3Iwg.jtJw3poDPGICu4dVa6Oul3c31BkrBfgZ4vPsTu93NPkg.JPEG.coffeemachinestory%2FKakaoTalk_20200724_163412940.jpg&type=sc960_832');
insert into wondu_tbl values('43','필리핀 PCQC2019','과일향의 산미 달콤한 향이 특징인 커피','8500','45','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA2MTZfMTgy%2FMDAxNTYwNjg5MDYxNzQ2.Xryer8vKua4gfch7rNzyjyzFqepqLXAVS3-fCg5WXG4g.d978SoWwQGDiY6bHwhMBHtwgPq726JZb7KozLkP9bJcg.JPEG.deerfoot%2Foutput_1434919608.jpg&type=sc960_832');
insert into wondu_tbl values('44','르완다 이메나','견과류의 고소함 과일의 상콤함이 특징인 커피','8000','46','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200420_194%2F1587392141211GWzyA_JPEG%2F24754474778832843_1670481984.jpg&type=sc960_832');
insert into wondu_tbl values('45','르완다 카라고','강력한 초콜릿 향이 특징인 커피','9000','47','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_297%2F1608783052787CNhSc_PNG%2F9918948519564622_1413519993.png&type=sc960_832');
insert into wondu_tbl values('46','르완다 봄보','달콤함과 견과류의 고소함이 어우러진 커피','7500','48','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_43%2F1608772138391biEIS_PNG%2F9908026928495751_622186501.png&type=sc960_832');
insert into wondu_tbl values('47','르완다 키고마 허니','견과류향과 과일의 단맛이 들어가있는 커피','9000','49','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTBfMTA4%2FMDAxNTcwNjQyNzczOTgw.DvuWva4mX-C3lmaPp_2vUe7RJNFBp29Yq8jI7SZusAog.PBo3txZf-vz3lXK5I--o8u2ABZ0AIQn_icKwnQuog-Ag.JPEG.bluebluesy%2F20191004_161656.jpg&type=sc960_832');
insert into wondu_tbl values('48','르완다 임부토 블루','은은한 꽃향과 초콜릿의 달콤함이 첨가된 커피','12000','50','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDFfMjY1%2FMDAxNjE0NTY0NDgwODcz.hZoyFi7Eok3TR2yWa5oGLP3Y7nMG8_tIRXx6I9czK7Eg.3Yfe9gfFBsmnOsvdsmyw-oBiSKg8vz-7ww6dyGneVc4g.JPEG.oboessun%2FIMG_0005.JPG&type=sc960_832');
insert into wondu_tbl values('49','파푸아뉴기니 블루마운틴','카라멜향과 달콤함향 과일의 산미가 특징인 커피','9500','51','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MDZfNCAg%2FMDAxNTg2MTQyMjM0OTc1.bp1QIGu-4gzd_QC421M98l9T8-_ArfWA_XSbdwmdFigg.HGv-PlwJ9wSD576cBybLRTFKFpOLq11pzzAN--WxxFUg.JPEG.guskrhdwn94%2F%25C4%25BF%25C7%25C7%25B8%25B8%25B5%25E9%25B1%25E217.JPG&type=sc960_832');
insert into wondu_tbl values('50','디카페인 과테말라 프리마베라','견과류의 고소함과 달콤함이 조화로운 커피','8500','52','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjVfMjky%2FMDAxNjE0MjU5MTM5NDky.1--uaUQ3oIvDRTwQQgcbEQq8mMYUVrb8zz79uo-wILUg.3wrS8NYVZF_PfCVEJe_1oe7MmU9U8PB_F2mzPXq8CJ4g.JPEG.xoghek01%2FKakaoTalk_20210223_191954835.jpg&type=sc960_832');
insert into wondu_tbl values('51','파나마 앤썸 게이샤','과일의 산미와 견과류의 달달함이 조화롭게 섞인 커피','7000','53','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210107_249%2F1609983009575IkBjB_PNG%2F11118843385227686_687618374.png&type=sc960_832');
insert into wondu_tbl values('52','케냐 키리냐가','견과류의 고소함과 적당한 산미가 특징인 커피','6000','54','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210405_126%2F161762619715476F5N_JPEG%2F18762042833870485_366263514.JPG&type=sc960_832');
insert into wondu_tbl values('53','에티오피아 구지 고메로','은은 견과류향이 특징인 커피','6500','55','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210415_34%2F1618468828164nRTB8_JPEG%2F19604607885699131_1582753311.jpg&type=sc960_832');
insert into wondu_tbl values('54','브라질 세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','56','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210406_157%2F1617634852508vLMFG_JPEG%2F18770686320660597_498358612.jpg&type=sc960_832');
insert into wondu_tbl values('55','에티오피아 코케허니 G1 스페셜','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','57','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjVfNSAg%2FMDAxNjE5MzYxNzI0OTU4.3vFY3ZF2QGTjldfooWy26KQglW9N4Jw7MhPXsRc5sh4g.J9GNRK532-Qz-bCBYwdRaTou23tz9oULJSQB2Vg29Tog.JPEG.bonnie_on%2F20210425%25A3%25DF225952.jpg&type=sc960_832');


>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-Bigdata-4/coffee.git

create table content_tbl(
   content_idx int not null auto_increment,
   title varchar(100) not null,
   contents varchar(1000) not null,
   user_id varchar(30) not null, 
   primary key(content_idx),
   FOREIGN KEY (user_id) REFERENCES user_tbl (user_id)
);

select * from content_tbl;



select * from content_tbl;

insert into content_tbl(title, contents, user_id) values('서비스에 대해서', '이 프로그램 아주 좋네요 편해요','admin');
insert into content_tbl(title, contents, user_id) values('원두 추천', '원두 추천 해주신거 맛잇었어요','babo');
insert into content_tbl(title, contents, user_id) values('카페가봤어요', '추천해주신 카페 가봤는데 맛잇더라구요','jenny');
insert into content_tbl(title, contents, user_id) values('인생이', '인생이 쓴데 커피도 쓰네 후......','min');
insert into content_tbl(title, contents, user_id) values('기모찌맨', '커피를 마시면 기모찌맨이 되는 준짱','jun');

insert into content_tbl(title, contents, user_id) values('서비스에 대해서', '이 프로그램 아주 좋네요 편해요','admin');
insert into content_tbl(title, contents, user_id) values('원두 추천', '원두 추천 해주신거 맛잇었어요','babo');
insert into content_tbl(title, contents, user_id) values('카페가봤어요', '추천해주신 카페 가봤는데 맛잇더라구요','jenny');
insert into content_tbl(title, contents, user_id) values('인생이', '인생이 쓴데 커피도 쓰네 후......','min');
insert into content_tbl(title, contents, user_id) values('기모찌맨', '커피를 마시면 기모찌맨이 되는 준짱','jun');

delete from content_tbl where content_idx 
create table wondu_good(
  good_index int not null auto_increment,
  good int not null,
  wondu_n varchar(100) not null,
  user_id varchar(30) not null,
  primary key(good_index),
  FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n),
  foreign key (user_id) references user_tbl (user_id)
);


insert into wondu_good(good, wondu_n, user_id) values('2', '브라질 세하도 파인컵 NY2', 'admin');
insert into wondu_good(good, wondu_n, user_id) values('3', '코스타리카 프리미엄 따라주', 'min');
insert into wondu_good(good, wondu_n, user_id) values('4', '과테말라 안티구아', 'babo');
insert into wondu_good(good, wondu_n, user_id) values('3', '멕시코 치아파스', 'jenny');
insert into wondu_good(good, wondu_n, user_id) values('5', '브라질 옐로우 버번', 'gg');
insert into wondu_good(good, wondu_n, user_id) values('4', '에티오피아 코케허니 G1 스페셜', 'hello');
insert into wondu_good(good, wondu_n, user_id) values('2', '콜롬비아 수프리모 모틸론', 'gson');
insert into wondu_good(good, wondu_n, user_id) values('3', '케냐 AA', 'java');
insert into wondu_good(good, wondu_n, user_id) values('1', 'Brazil Cerrado', 'python');
insert into wondu_good(good, wondu_n, user_id) values('4', '코스타리가 따라주 SHB', 'kaggle');


select * from wondu_good;


select * from user_tbl;

--TRUNCATE user_tbl; --지정 테이블 데이터 초기화


--select * from wondu_tbl where wondu_n like '디%'

create table recos_tbl(
  reco_index int not null auto_increment,
  wondu_n varchar(100) not null,
  user_id varchar(30) not null, 
   primary key(reco_index),
   FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n),
   FOREIGN KEY (user_id) REFERENCES user_tbl (user_id)
); 
select * from wondu_tbl;

--insert into user_tbl values('babo', '1234','아가채원');
--insert into user_tbl values('babo2', '12345','아가채원');

select * from wondu_good;
insert into wondu_tbl values('1','에티오피아 아리차 내추럴 g1','은은한 꽃향과 상큼한 베리향의 프리미엄 커피','7500','1','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_290%2F1600241498533CBul8_PNG%2F1377344176991246_1333992608.png&type=sc960_832');
insert into wondu_tbl values('2','인도 마이소르 너깃 엑스트라 볼드','견과류 특유의 향과 고소함 밀크초콜릿의 바디감 달콤하고 부드러운 산미의 커피','8000','2','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_233%2F1620807599511WiUnd_JPEG%2F21943434337742690_624569600.jpg&type=sc960_832');
insert into wondu_tbl values('3','인도네시아 만델링 g1','밀크초콜릿의 부드러움 초콜릿같은 풍미 묵직한 바디감의 커피','9500','3','https://search.pstatic.net/common/?src=https%3A%2F%2Fphinf.pstatic.net%2Fshop%2F20210226_163%2F1614291715802Cumgi_JPEG%2F054396018_0.jpg&type=sc960_832');
insert into wondu_tbl values('4','르완다 버번','감귤류의 달콤함 허브의 향 다크초콜릿의 쌉쌉름한 커피','7500','4','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20170301_9%2Fretey_1488369832843zXsVs_JPEG%2F12634657195058746_-600288463.jpg&type=sc960_832');
insert into wondu_tbl values('5','코스타리가 따라주 SHB2','청사과의 청량한 산미 사탕수수의 단맛 카카오의 쓴맛의 커피','7000','5','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('6','세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','5000','6','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200930_276%2F16013951092833KCWR_JPEG%2F2530951926463516_1287083863.JPG&type=sc960_832');
insert into wondu_tbl values('7','탄자니아 AA','적포도의 산미 향설탕의 단맛 자몽오렌지의 달콤 씁쓸함의 커피','7500','7','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDlfMjk4%2FMDAxNjE1Mjg5NTI5NDU4.UyhqiDCpC3bymkmWM9F_iTu6aOQTHsvfMvD-5gfrP1Mg.sy3wDGtVOBHBbNbarD7WU1JkVrxDSUSKYr_jNp86FYIg.JPEG.bak3054%2FKakaoTalk_20210309_195042691_02.jpg&type=sc960_832');
insert into wondu_tbl values('8','파푸아 뉴기니A','땅콩의 고소함 은은한 산미와 단맛 밀크초코의 부드러운 커피','8500','8','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210616_51%2F1623832613035kV1bB_JPEG%2F24968511722660336_1722023914.jpg&type=sc960_832');
insert into wondu_tbl values('9','엘살바도르 SHG','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','9','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMDVfMTI0%2FMDAxNjA0NTg4MjY2NDUx.KSFKyALjHLqYIVNB2b7p3MuCZSZcXT5kNRLMHlrLTTQg.f0K_NZOPunR0ejEUq7Lfad8IOLYutNXCtYEmi3XFKyEg.JPEG.orion_thothe%2FP1030603-01.jpg&type=sc960_832');
insert into wondu_tbl values('10','엘살바도르 SHG2','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500','10','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTZfMzIg%2FMDAxNjIxMTYyNjM3MTM1.TrtWE78z1djXrhAyG_WB9ln5RadQgyz6uKSIWOCBPWsg.l0oF3LJalAVyK47S2dGCUkigZbsDPETHG6FaE9CWNrMg.JPEG.psm956282%2F20210511_162223.jpg&type=sc960_832');
insert into wondu_tbl values('11','파나마 에스메랄다 팔미라 에스테이트 스페셜','헤이즐럿의 느낌 바닐라향의 깨끗한 뒷맛 밀크초코의 부드러움이 어우러진 커피','12000','11','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMTZfMjM3%2FMDAxNTg0MzY3MzAxNzU4.Lpgxk1Hc0epz_c7wXL4F_iBOVY61RSHsgQOH_7nnfDYg.5hPETs-h2ZNjjr5h0ry-2bm1k6sURaovKaos2scJ1d4g.JPEG.imnoah__%2FKakaoTalk_20200316_173722220_03.jpg&type=sc960_832');
insert into wondu_tbl values('12','과테말라 안티구아','다크초콜릿의 향 향설탕의 단맛 스모키한 여운의 커피','7500','12','https://search.pstatic.net/sunny/?src=http%3A%2F%2Fthumbnail.10x10.co.kr%2Fwebimage%2Fimage%2Fbasic%2F06%2FB000069217.jpg%3Fcmd%3Dthumb%26w%3D500%26h%3D500%26fit%3Dtrue%26ws%3Dfalse&type=sc960_832');
insert into wondu_tbl values('13','멕시코 치아파스','코코아의 진한 바디감 아몬드의 고소함 잔잔한 시나몬의 향미가 어우러진 커피','8500','13','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210512_62%2F1620825012975zkGFv_PNG%2FCC0113096.jpg&type=sc960_832');
insert into wondu_tbl values('14','케냐AA 키암부','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','14500','14','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200916_275%2F1600242119412apjHw_PNG%2F1377903077702866_540100074.png&type=sc960_832');
insert into wondu_tbl values('15','과테말라 산타 모니카 SHB','복숭아향 다크초콜릿의 달콤함이 어우러진 커피','11000','15','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210621_250%2F1624253105062pK5Ii_JPEG%2F25389000746356878_193511833.jpg&type=sc960_832');
insert into wondu_tbl values('16','과테말라 싱글 오리진','카라멜향이 어우러진 커피','10000','16','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MjZfMTk3%2FMDAxNjIyMDEzMjQyODg0.P322lHmvCD5w6SwJS6Eg4tmzcpmdtY4gR6rgde9bCGsg.URHngHc2C4Ez4AXDtcYoCZb8fJSoLXtNSYOqIPE3TxAg.JPEG.sktndls337%2FIMG_5551.JPEG&type=sc960_832');
insert into wondu_tbl values('17','KENNA AA','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','16500','17','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20151116_48%2Frkwk1222_1447646172003x2i25_JPEG%2F20151115_114714.jpg&type=sc960_832');
insert into wondu_tbl values('18','Brazil Cerrado','견과류의 고소한향이 어우러진 커피','7500','18','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210618_4%2F1624008342643kb4VP_JPEG%2F25144177473872300_596456445.jpg&type=sc960_832');
insert into wondu_tbl values('19','멕시코 오악사카','견과류의 고소함과 카라멜향이 어우러진 커피','8000','19','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDVfMjAy%2FMDAxNjA5ODU4MjQzNzI3.I0lDMhF60WajFkrb2sw4ioxFAL63lKjLyObQbHFlq2Qg.-fkhL_dU-Jv5EVas7-FnKOWn7uEulaXVqb8DXkJZ6Kwg.JPEG.amanbo_sw%2FIMG_6212.jpg&type=sc960_832');
insert into wondu_tbl values('20','다크 블랜드','다크초콜릿의 쌉싸름한 풍미 부드러운 고소한맛 흑설탕의 단맛이 어우러진 커피','6000','20','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMjk4%2FMDAxNjIyNDY0OTcyODk2.IKP0M5rihGDatWPxBT3FKt1USdAJNCBNPCpMC3mEsmcg.olCWCbN7yCZp3iLrG8M1Wz98Ga9Vn4WXHVRShSerub4g.JPEG.dudcjf3094%2F20210531%25A3%25DF185806.jpg&type=sc960_832');
insert into wondu_tbl values('21','플레이버 블랜드','구수한 견과류의 향과맛 카카오의 쓸쓸한 쓴맛 은은하게 느껴지는 코코아의 단맛과 풍미가 어우러진 커피','7500','21','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA2MjZfMTk5%2FMDAxNTkzMTczMjM4MDg4.za0RWHDVJ90GslFnkTLKVflzEGLydZVRLfOOkGMr4jMg.P8mSZlFPi-H6RIyyUPW64ZjdKAyEw6OZRvJSawPdIzIg.JPEG.nayaa64%2F1593173233423.jpg&type=sc960_832');
insert into wondu_tbl values('22','시즌골드 블랜드','깔끔한 밝은 산미 풍부한 아로마향 여운이 감도는 단맛이 어우러진 커피','8000','22','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMDZfMTYw%2FMDAxNjA5OTAyODE4Mzg0.jgAqmOvudjTUUYvRT8dgF1ugH0NApMb15YU-l4n0lKIg.Jx36q0SmOgGXD_dG-uH9yjjuT63jyunXc1Qkf5L_UpAg.JPEG.inyoung1031%2F2021%25A3%25AD01%25A3%25AD06%25A3%25AD12%25A3%25AD10%25A3%25AD43%25A3%25AD893.jpg&type=sc960_832');
insert into wondu_tbl values('23','디카페인 멕시코','견과류의 고소함과 향 부드러운 바디감 흑설탕같은 풍미와 단맛 균형잡힌 밸런스가 특징인 커피','7500','23','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210610_14%2F1623297570728FF64b_JPEG%2F24433416448704746_1701361084.jpg&type=sc960_832');
insert into wondu_tbl values('24','브라질 옐로우 버번','은은한 감귤류의 단맛 견과류의 고소함 구운 토스트향이 특징인 커피','7000','24','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjExMjVfMTc1%2FMDAxNDgwMDU3OTk4NDg2.MGGUL2UI0RFAGZ4HhJ-_j3bKPOLHmQ73ySY-R6JjJ6Qg.-0XUsktgDS6d09svvSA9ilU7iUu9oCAFyGTAjSfSksgg.JPEG.elesod%2F%25BA%25EA%25B6%25F3%25C1%25FA%25BF%25BB%25B7%25CE%25BF%25EC%25B9%25F6%25B9%25F8_2.JPG&type=sc960_832');
insert into wondu_tbl values('25','오롯이 블랜드','견과류의 고소한맛 쌉싸름한 다크초코의 향미 은은한 오크통 향이 특징인 커피','7500','25','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMTQ3%2FMDAxNjE3MzgyOTUzNjQ2.Xcz6hyP5UJTz3-CGL8f8o1jD1dINgCzAD1bhuDd2c-cg.B7ShiM_GPspkKaocwVBlTa6MyyOKaWYgYLbLrhH3uRYg.JPEG.fromrami%2FIMG_7378.JPG&type=sc960_832');
insert into wondu_tbl values('26','콜롬비아 수프리모','과일향과 초콜릿의 단맛이 특징인 커피','8500','26','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140929_164%2Fesperecoffee_1411967965019XYSfl_JPEG%2F1411967966039_20140929_141438_HDR2.jpg&type=sc960_832');
insert into wondu_tbl values('27','에티오피아 예가체프 G2','초콜릿의 단맛과 과일의 산미가 특징인 커피','11000','27','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDExMTFfMjE4%2FMDAxNjA1MDY2MzUxMDM4.Xc07sQhoMdGOgEv6plOO6o0GkstCm_HO-9vu8ThCUnsg.Q-WP4-OkSIb4FoQagJ-Gs-4U6T9Pt1pww1G8H5YK8Scg.JPEG.dreamingruv%2F20201111%25A3%25DF120501.jpg&type=sc960_832');
insert into wondu_tbl values('28','에티오피아 시다모 G2','꽃향과 레몬의 상큼함이 특징인 커피','10500','28','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210219_70%2F1613702631647jtRym_PNG%2F14838520309814050_431625004.png&type=sc960_832');
insert into wondu_tbl values('29','코스타리가 따라주 SHB','여운의 카카오의 쓴맛 사탕수수의 단맛 청사과의 새콤달콤한 향이 특징인 커피','7000','29','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDNfMjk2%2FMDAxNjE3NDU3ODY3ODE1.jm0gVD660plHPPtcG8hUN_SvOxTqUkCzS_TvRTd08Nwg.EqohTYDYFdhjl1Zcb0N26Y3siWcssnDiVNVpRYqv8pYg.JPEG.car1358%2FIMG_0058.JPG&type=sc960_832');
insert into wondu_tbl values('30','에티오피아 코케허니 G1','꿀과 시트러스가 들어가 부드러운 바디감이 특징인 커피','17000','30','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjNfMjk3%2FMDAxNjE5MTY2NDQ4NDQx.9SzQDu3EqQj_Z2WExAlxFBw8z1N-9fjqkQDh1MdXJ_Ag.xVZ1BcIb3b_0f6QFSKE9Zot0YPW7dRgcit0YL2ZcRqUg.JPEG.mjone_c%2FIMG_6712.jpg&type=sc960_832');
insert into wondu_tbl values('31','디카페인 브라질','아몬드의 고소함 카카오의 여운 허브의 은은한 향이 특징인 커피','9000','31','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MzFfMzEg%2FMDAxNjIyNDE3MDkxMTQx.Fo8JxeVpOw4-AQkHjbr10O8Qcn_a-_4gS7CNSj3Ep2Eg.xoAGpk95i3YJZBFizfiWx9FCmpZ5nCSM9EWJeeIoXIgg.JPEG.0514grace%2F20210531%25A3%25DF071559.jpg&type=sc960_832');
insert into wondu_tbl values('32','인도 몬순 말라브라 AA','곡물류의 복합적인 너티향 부드러운 단맛 향신료의 스파이시함이 특징인 커피','8000','32','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MTdfMjc3%2FMDAxNjIxMjIyMjIwMjAz.vin72mq80l-sD34qYBdJ7_NsCmXsF09_0HtNt6f0PT4g.pgLVtEpco7C1NwXYV_chDZhnquMQJeGMsB7ikQlKxVEg.JPEG.alsdldyddl%2FIMG_7335.jpg&type=sc960_832');
insert into wondu_tbl values('33','케냐 AA','아프리카의 레드와인 깊은 과실의 향 깊은 단맛의 밸런스가 특징인 커피','11000','33','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTVfMTQ0%2FMDAxNjIzNzU5MjY0ODI0.wGNSip7zRbaQUcuM980RKeO69KlhcFMTcVVy8vDwCxEg.vRAVUiJQuul5BmsEol4jvWqy2Djv-MGl6SrokYuVfr8g.PNG.gon8256%2F%25C1%25A6%25B8%25F1_%25BE%25F8%25C0%25BD.png&type=sc960_832');
insert into wondu_tbl values('34','디카페인 에티오피아','초콜릿같은 단맛 새콤달콤 산미 시리얼같은 고소함이 특징인 커피','9500','34','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210111_104%2F1610369584878EuhWq_JPEG%2F11505368297785866_1544594756.jpg&type=sc960_832');
insert into wondu_tbl values('35','디카페인 콜롬비아','오렌지같은 단맛 달콤하고 고소한 맛 부드러운 목넘김이 특징인 커피','9000','35','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MTlfMjc4%2FMDAxNjI0MTA3MjE2NTAx.HAz4V1twUv0TehxnvQ6aTyAdx8WGyrTUhh6Ps-QH2iAg.j2mHIJrTvc-p1PCgiiXKM3BGuIQv3QKKXhwcoTjPlbAg.JPEG.osy4807%2FIMG_6037.jpg&type=sc960_832');
insert into wondu_tbl values('36','스페셜티 블랜드','과일류의 베리향 상큼한 패션후르츠 스카치캔디의 달콤함이 특징인 커피','12000','36','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA2MjRfMjMy%2FMDAxNjI0NTA4Njc1MTQz.BukXwyd4Z4LTtuPZierZ_AD_n7C5eFLCw1YP0jT_DzQg.gl-dZLeVdD_igB2o200lIqkGOdVr4b7-Ia5ykf2X0eYg.JPEG.1224sumi%2Foutput_3880602446.jpg&type=sc960_832');
insert into wondu_tbl values('37','디카페인 과테말라','중후한 바디감 땅콩같은 고소함 부드러운 단맛 은은한 감칠맛과 풍미가 특징인 커피','9900','37','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200417_284%2F1587110469281z5NzB_JPEG%2F24473857799975790_1238652050.jpg&type=sc960_832');
insert into wondu_tbl values('38','콜롬비아 수프리모 모틸론','호두의 고소함 오렌지 향미 카카오의 쓴맛이 특징인 커피','11000','38','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20150616_72%2Fbeanbalance_1434410204818WeNGJ_JPEG%2FSAM_1348.jpg&type=sc960_832');
insert into wondu_tbl values('39','페루 에스트텔라','초콜릿의 씁쓸함 견과류의 고소함이 어우러진 커피','9000','39','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDdfMSAg%2FMDAxNjE3Nzg4Nzk0NDM0.71mHZu6i1-gbQK_f2t7wTXhnYPlCxqnhb3BXjNNhIPAg.00ROC0SziWAX1h8i4z5aoiwrxrf4ajPZbAKq-vn7av0g.JPEG.aengjju%2FDSC06818.JPG&type=sc960_832');
insert into wondu_tbl values('40','르완다 카림심비','조화로운 꽃향이 특징인 커피','8500','40','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MTRfMjk2%2FMDAxNTk0NzEyNzU5Mzgz.1i7AOOuf1vtJwhYQvbL4b5Ek1tn7e-LflG_oLtkZoYkg.Z2TC3OpK-iGD4xnlIUR6F7natScCDXPlORXl3a0ydekg.JPEG.tnrud6359%2FIMG_7115.JPG&type=sc960_832');
insert into wondu_tbl values('41','코스타리카 프리미엄 따라주','깊은 아로마 향 초콜릿의 달콤함이 특징인 커피','10300','41','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210214_85%2F1613290032688sMar6_JPEG%2F14425811965532673_1347887553.jpg&type=sc960_832');
insert into wondu_tbl values('42','브라질 이글 모지아나 내추럴','견과류의 고소함 달콤한향이 어우러진 커피','7500','42','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA3MjRfMjk3%2FMDAxNTk1NTc3OTY1MTI2.Scm8TifSaJ0nggmlMNNheKLNsHFOzc6YeGcDJssf3Iwg.jtJw3poDPGICu4dVa6Oul3c31BkrBfgZ4vPsTu93NPkg.JPEG.coffeemachinestory%2FKakaoTalk_20200724_163412940.jpg&type=sc960_832');
insert into wondu_tbl values('43','필리핀 PCQC2019','과일향의 산미 달콤한 향이 특징인 커피','8500','45','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA2MTZfMTgy%2FMDAxNTYwNjg5MDYxNzQ2.Xryer8vKua4gfch7rNzyjyzFqepqLXAVS3-fCg5WXG4g.d978SoWwQGDiY6bHwhMBHtwgPq726JZb7KozLkP9bJcg.JPEG.deerfoot%2Foutput_1434919608.jpg&type=sc960_832');
insert into wondu_tbl values('44','르완다 이메나','견과류의 고소함 과일의 상콤함이 특징인 커피','8000','46','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20200420_194%2F1587392141211GWzyA_JPEG%2F24754474778832843_1670481984.jpg&type=sc960_832');
insert into wondu_tbl values('45','르완다 카라고','강력한 초콜릿 향이 특징인 커피','9000','47','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_297%2F1608783052787CNhSc_PNG%2F9918948519564622_1413519993.png&type=sc960_832');
insert into wondu_tbl values('46','르완다 봄보','달콤함과 견과류의 고소함이 어우러진 커피','7500','48','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20201224_43%2F1608772138391biEIS_PNG%2F9908026928495751_622186501.png&type=sc960_832');
insert into wondu_tbl values('47','르완다 키고마 허니','견과류향과 과일의 단맛이 들어가있는 커피','9000','49','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTEwMTBfMTA4%2FMDAxNTcwNjQyNzczOTgw.DvuWva4mX-C3lmaPp_2vUe7RJNFBp29Yq8jI7SZusAog.PBo3txZf-vz3lXK5I--o8u2ABZ0AIQn_icKwnQuog-Ag.JPEG.bluebluesy%2F20191004_161656.jpg&type=sc960_832');
insert into wondu_tbl values('48','르완다 임부토 블루','은은한 꽃향과 초콜릿의 달콤함이 첨가된 커피','12000','50','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAzMDFfMjY1%2FMDAxNjE0NTY0NDgwODcz.hZoyFi7Eok3TR2yWa5oGLP3Y7nMG8_tIRXx6I9czK7Eg.3Yfe9gfFBsmnOsvdsmyw-oBiSKg8vz-7ww6dyGneVc4g.JPEG.oboessun%2FIMG_0005.JPG&type=sc960_832');
insert into wondu_tbl values('49','파푸아뉴기니 블루마운틴','카라멜향과 달콤함향 과일의 산미가 특징인 커피','9500','51','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MDZfNCAg%2FMDAxNTg2MTQyMjM0OTc1.bp1QIGu-4gzd_QC421M98l9T8-_ArfWA_XSbdwmdFigg.HGv-PlwJ9wSD576cBybLRTFKFpOLq11pzzAN--WxxFUg.JPEG.guskrhdwn94%2F%25C4%25BF%25C7%25C7%25B8%25B8%25B5%25E9%25B1%25E217.JPG&type=sc960_832');
insert into wondu_tbl values('50','디카페인 과테말라 프리마베라','견과류의 고소함과 달콤함이 조화로운 커피','8500','52','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAyMjVfMjky%2FMDAxNjE0MjU5MTM5NDky.1--uaUQ3oIvDRTwQQgcbEQq8mMYUVrb8zz79uo-wILUg.3wrS8NYVZF_PfCVEJe_1oe7MmU9U8PB_F2mzPXq8CJ4g.JPEG.xoghek01%2FKakaoTalk_20210223_191954835.jpg&type=sc960_832');
insert into wondu_tbl values('51','파나마 앤썸 게이샤','과일의 산미와 견과류의 달달함이 조화롭게 섞인 커피','7000','53','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210107_249%2F1609983009575IkBjB_PNG%2F11118843385227686_687618374.png&type=sc960_832');
insert into wondu_tbl values('52','케냐 키리냐가','견과류의 고소함과 적당한 산미가 특징인 커피','6000','54','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210405_126%2F161762619715476F5N_JPEG%2F18762042833870485_366263514.JPG&type=sc960_832');
insert into wondu_tbl values('53','에티오피아 구지 고메로','은은 견과류향이 특징인 커피','6500','55','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210415_34%2F1618468828164nRTB8_JPEG%2F19604607885699131_1582753311.jpg&type=sc960_832');
insert into wondu_tbl values('54','브라질 세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','56','https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20210406_157%2F1617634852508vLMFG_JPEG%2F18770686320660597_498358612.jpg&type=sc960_832');
insert into wondu_tbl values('55','에티오피아 코케허니 G1 스페셜','견과류 향미 사탕수수의 달콤함과 고소함의 커피','6500','57','https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjVfNSAg%2FMDAxNjE5MzYxNzI0OTU4.3vFY3ZF2QGTjldfooWy26KQglW9N4Jw7MhPXsRc5sh4g.J9GNRK532-Qz-bCBYwdRaTou23tz9oULJSQB2Vg29Tog.JPEG.bonnie_on%2F20210425%25A3%25DF225952.jpg&type=sc960_832');


--wondu_good

insert into wondu_good(good, wondu_n, user_id) values('2', '브라질 세하도 파인컵 NY2', 'admin');
insert into wondu_good(good, wondu_n, user_id) values('3', '코스타리카 프리미엄 따라주', 'min');
insert into wondu_good(good, wondu_n, user_id) values('4', '과테말라 안티구아', 'babo');
insert into wondu_good(good, wondu_n, user_id) values('3', '멕시코 치아파스', 'jenny');
insert into wondu_good(good, wondu_n, user_id) values('5', '브라질 옐로우 버번', 'gg');
insert into wondu_good(good, wondu_n, user_id) values('4', '에티오피아 코케허니 G1 스페셜', 'hello');
insert into wondu_good(good, wondu_n, user_id) values('2', '콜롬비아 수프리모 모틸론', 'gson');
insert into wondu_good(good, wondu_n, user_id) values('3', '케냐 AA', 'java');
insert into wondu_good(good, wondu_n, user_id) values('1', 'Brazil Cerrado', 'python');
insert into wondu_good(good, wondu_n, user_id) values('4', '코스타리가 따라주 SHB', 'kaggle');
insert into wondu_good(good, wondu_n, user_id) values('3', '브라질 세하도 파인컵 NY2', 'jenny');
insert into wondu_good(good, wondu_n, user_id) values('5', '과테말라 안티구아', 'gg');
insert into wondu_good(good, wondu_n, user_id) values('4', '케냐 AA', 'hello');

select * from content_tbl;

DESCRIBE wondu_tbl;


insert into content_tbl(title, contents, user_id) values('서비스에 대해서', '이 프로그램 아주 좋네요 편해요','admin');
insert into content_tbl(title, contents, user_id) values('원두 추천', '원두 추천 해주신거 맛잇었어요','babo');
insert into content_tbl(title, contents, user_id) values('카페가봤어요', '추천해주신 카페 가봤는데 맛잇더라구요','gg');
insert into content_tbl(title, contents, user_id) values('인생이', '인생이 쓴데 커피도 쓰네 후......','min');

delete from content_tbl where user_id = 'jun';

DESCRIBE wondu_tbl;
select * from content_tbl;
commit;
