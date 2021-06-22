create table user_tbl(
   user_id varchar(30) not null,
   password varchar(30) not null,
   user_name varchar(30) not null,
   primary key(user_id)
);


insert into user_tbl values('admin','admin','관리자');

select * from wondu_tbl;


create table wondu_tbl(
   wondu_n varchar(100) not null,
   wondu_c varchar(500) not null,
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

create table reco_tbl(
  reco_index int not null auto_increment,
  wondu_n varchar(100) not null,
  user_id varchar(30) not null, 
   primary key(reco_index),
   FOREIGN KEY (wondu_n) REFERENCES wondu_tbl (wondu_n),
   FOREIGN KEY (user_id) REFERENCES user_tbl (user_id)
); 

DESCRIBE review_tbl;


