
DROP TABLE user_tbl CASCADE;
DROP TABLE wondu_tbl CASCADE;
DROP TABLE wondu_good CASCADE;
DROP TABLE review_tbl CASCADE;
DROP TABLE reco_tbl CASCADE;

create table user_tbl(
   user_id varchar(30) not null,
   password varchar(30) not null,
   user_name varchar(30) not null,
   primary key(user_id)
);

insert into user_tbl values('admin','admin','관리자');
insert into user_tbl values('min', '12345','아가형민');


select * from review_tbl;

select * from user_tbl;
select * from reco_tbl;
select * from review_tbl;
insert into reco_tbl(wondu_n, user_id) values('과테말라 안티구아','admin')

select * from reco_tbl

create table wondu_tbl(
   wondu_n varchar(100) not null,
   wondu_c varchar(500) not null,
   price varchar(30) not null,
   primary key(wondu_n)
);

create table review_tbl(
   r_idx int not null auto_increment,
   wondu_r varchar(500) not null,
   wondu_n varchar(100) not null,
   user_id varchar(30) not null, 
   primary key(r_idx),
   FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n),
   FOREIGN KEY (user_id) REFERENCES user_tbl (user_id)
);

create table wondu_good(
  good_index int not null auto_increment,
  good int not null,
  wondu_n varchar(100) not null,
  primary key(good_index),
  FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n)
);
select * from reco_tbl;

TRUNCATE reco_tbl;



create table reco_tbl(
  reco_index int not null auto_increment,
  wondu_n varchar(100) not null,
  user_id varchar(30) not null, 
   primary key(reco_index),
   FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n),
   FOREIGN KEY (user_id) REFERENCES user_tbl (user_id)
); 
select * from wondu_tbl;

insert into user_tbl values('babo', '1234','아가채원');
insert into user_tbl values('babo2', '12345','아가채원');


insert into wondu_tbl values('에티오피아 아리차 내추럴 g1','은은한 꽃향과 상큼한 베리향의 프리미엄 커피','7500');
insert into wondu_tbl values('인도 마이소르 너깃 엑스트라 볼드','견과류 특유의 향과 고소함 밀크초콜릿의 바디감 달콤하고 부드러운 산미의 커피','8000');
insert into wondu_tbl values('인도네시아 만델링 g1','밀크초콜릿의 부드러움 초콜릿같은 풍미 묵직한 바디감의 커피','9500');
insert into wondu_tbl values('르완다 버번','감귤류의 달콤함 허브의 향 다크초콜릿의 쌉쌉름한 커피','7500');
insert into wondu_tbl values('코스타리가 따라주 SHB','청사과의 청량한 산미 사탕수수의 단맛 카카오의 쓴맛의 커피','7000');
insert into wondu_tbl values('세하도 파인컵 NY2','견과류 향미 사탕수수의 달콤함과 고소함의 커피','5000');
insert into wondu_tbl values('탄자니아 AA','적포도의 산미 향설탕의 단맛 자몽오렌지의 달콤 씁쓸함의 커피','7500');
insert into wondu_tbl values('파푸아 뉴기니A','땅콩의 고소함 은은한 산미와 단맛 밀크초코의 부드러운 커피','8500');
insert into wondu_tbl values('엘살바도르 SHG','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 어우러진 커피','7500');
insert into wondu_tbl values('파나마 에스메랄다 팔미라 에스테이트 스페셜','헤이즐럿의 느낌 바닐라향의 깨끗한 뒷맛 밀크초코의 부드러움이 어우러진 커피','12000');
insert into wondu_tbl values('과테말라 안티구아','다크초콜릿의 향 향설탕의 단맛 스모키한 여운의 커피','7500');
insert into wondu_tbl values('멕시코 치아파스','코코아의 진한 바디감 아몬드의 고소함 잔잔한 시나몬의 향미가 어우러진 커피','8500');
insert into wondu_tbl values('케냐AA 키암부','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','14500');
insert into wondu_tbl values('과테말라 산타 모니카 SHB','복숭아향 다크초콜릿의 달콤함이 어우러진 커피','11000');
insert into wondu_tbl values('과테말라 싱글 오리진','카라멜향이 어우러진 커피','10000');
insert into wondu_tbl values('KENNA AA','레몬의 산미 자스민의 향 완벽한 바디감이 어우러진 커피','16500');
insert into wondu_tbl values('Brazil Cerrado','견과류의 고소한향이 어우러진 커피','7500');
insert into wondu_tbl values('멕시코 오악사카','견과류의 고소함과 카라멜향이 어우러진 커피','8000');
insert into wondu_tbl values('다크 블랜드','다크초콜릿의 쌉싸름한 풍미 부드러운 고소한맛 흑설탕의 단맛이 어우러진 커피','6000');
insert into wondu_tbl values('플레이버 블랜드','구수한 견과류의 향과맛 카카오의 쓸쓸한 쓴맛 은은하게 느껴지는 코코아의 단맛과 풍미가 어우러진 커피','7500');
insert into wondu_tbl values('시즌골드 블랜드','깔끔한 밝은 산미 풍부한 아로마향 여운이 감도는 단맛이 어우러진 커피','8000');
insert into wondu_tbl values('디카페인 멕시코','견과류의 고소함과 향 부드러운 바디감 흑설탕같은 풍미와 단맛 균형잡힌 밸런스가 특징인 커피','7500');
insert into wondu_tbl values('브라질 옐로우 버번','은은한 감귤류의 단맛 견과류의 고소함 구운 토스트향이 특징인 커피','7000');
insert into wondu_tbl values('오롯이 블랜드','견과류의 고소한맛 쌉싸름한 다크초코의 향미 은은한 오크통 향이 특징인 커피','7500');
insert into wondu_tbl values('콜롬비아 수프리모','과일향과 초콜릿의 단맛이 특징인 커피','8500');
insert into wondu_tbl values('에티오피아 예가체프 G2','초콜릿의 단맛과 과일의 산미가 특징인 커피','11000');
insert into wondu_tbl values('에티오피아 시다모 G2','꽃향과 레몬의 상큼함이 특징인 커피','10500');
insert into wondu_tbl values('코스타리가 따라주 SHB','여운의 카카오의 쓴맛 사탕수수의 단맛 청사과의 새콤달콤한 향이 특징인 커피','7000');
insert into wondu_tbl values('에티오피아 코케허니 G1','꿀과 시트러스가 들어가 부드러운 바디감이 특징인 커피','17000');
insert into wondu_tbl values('디카페인 브라질','아몬드의 고소함 카카오의 여운 허브의 은은한 향이 특징인 커피','9000');
insert into wondu_tbl values('인도 몬순 말라브라 AA','곡물류의 복합적인 너티향 부드러운 단맛 향신료의 스파이시함이 특징인 커피','8000');
insert into wondu_tbl values('케냐 AA','아프리카의 레드와인 깊은 과실의 향 깊은 단맛의 밸런스가 특징인 커피','11000');
insert into wondu_tbl values('엘살바도르 SHG','자몽의 씁쓸함 오렌지의 은은한 산미 다크초콜릿의 조화가 특징인 커피','7500');
insert into wondu_tbl values('디카페인 에티오피아','초콜릿같은 단맛 새콤달콤 산미 시리얼같은 고소함이 특징인 커피','9500');
insert into wondu_tbl values('디카페인 콜롬비아','오렌지같은 단맛 달콤하고 고소한 맛 부드러운 목넘김이 특징인 커피','9000');
insert into wondu_tbl values('스페셜티 블랜드','과일류의 베리향 상큼한 패션후르츠 스카치캔디의 달콤함이 특징인 커피','12000');
insert into wondu_tbl values('디카페인 과테말라','중후한 바디감 땅콩같은 고소함 부드러운 단맛 은은한 감칠맛과 풍미가 특징인 커피','9900');
insert into wondu_tbl values('콜롬비아 수프리모 모틸론','호두의 고소함 오렌지 향미 카카오의 쓴맛이 특징인 커피','11000');
insert into wondu_tbl values('페루 에스트텔라','초콜릿의 씁쓸함 견과류의 고소함이 어우러진 커피','9000');
insert into wondu_tbl values('르완다 카림심비','조화로운 꽃향이 특징인 커피','8500');
insert into wondu_tbl values('코스타리카 프리미엄 따라주','깊은 아로마 향 초콜릿의 달콤함이 특징인 커피','10300');
insert into wondu_tbl values('브라질 이글 모지아나 내추럴','견과류의 고소함 달콤한향이 어우러진 커피','7500');
insert into wondu_tbl values('필리핀 PCQC2019','과일향의 산미 달콤한 향이 특징인 커피','8500');
insert into wondu_tbl values('르완다 이메나','견과류의 고소함 과일의 상콤함이 특징인 커피','8000');
insert into wondu_tbl values('르완다 카라고','강력한 초콜릿 향이 특징인 커피','9000');
insert into wondu_tbl values('르완다 봄보','달콤함과 견과류의 고소함이 어우러진 커피','7500');
insert into wondu_tbl values('르완다 키고마 허니','견과류향과 과일의 단맛이 들어가있는 커피','9000');
insert into wondu_tbl values('르완다 임부토 블루','은은한 꽃향과 초콜릿의 달콤함이 첨가된 커피','12000');
insert into wondu_tbl values('파푸아뉴기니 블루마운틴','카라멜향과 달콤함향 과일의 산미가 특징인 커피','9500');
insert into wondu_tbl values('디카페인 과테말라 프리마베라','견과류의 고소함과 달콤함이 조화로운 커피','8500');
insert into wondu_tbl values('파나마 앤썸 게이샤','과일의 산미와 견과류의 달달함이 조화롭게 섞인 커피','7000');
insert into wondu_tbl values('케냐 키리냐가','견과류의 고소함과 적당한 산미가 특징인 커피','6000');
insert into wondu_tbl values('에티오피아 구지 고메로','은은 견과류향이 특징인 커피','6500');

DESCRIBE reco_tbl;


