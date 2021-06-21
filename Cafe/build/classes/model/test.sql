create table userTbl(
	user_id varchar(30) not null,
	user_name varchar(30) not null,
	password varchar(30) not null,
	primary key(user_id)
);

insert into userTbl values('admin', '관리자', 'admin');
insert into userTbl values('jun', '이준혁', '12345');
insert into userTbl values('guest', '사용자', '12345');

DROP TABLE userTbl CASCADE;
DROP TABLE tbl_user2 CASCADE;
DROP TABLE user_tbl CASCADE;

-- 여기서부터 시작! 위에는 무시!
create table user_tbl(
   user_id varchar(30) not null,
   password varchar(30) not null,
   user_name varchar(30) not null,
   gender varchar(30) not null,
   primary key(user_id)
);



insert into user_tbl values('admin','admin','관리자','female');
select * from user_tbl;

select * from tbl_user2;