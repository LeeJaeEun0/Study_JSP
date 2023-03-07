show databases;

-- 실습2 --
create table member(
	id varchar(50) not null primary key,
	passwd varchar(16) not null,
	name varchar(10) not null,
	reg_date datetime not null
)

create table test(
	num_id int not null primary key auto_increment,
	title varchar(50) not null,
	content text not null
)

desc member;
desc test;

-- drop 사용하기
show tables;
drop table test;
show tables;

-- insert문 사용하기(삽입)
insert into member(id, passwd, name, reg_date) values('kingdora@dragon.com','1234', '김개동', now());
insert into member(id, passwd, name, reg_date) values('hongkd@dragon.com','1111', '홍길동', now());
select * from member;

-- select문 사용하기(검색, 조회)
select * from member;
select id, passwd from member;
select id, passwd from member where id='hongkd@dragon.com';

-- update문 사용하기(갱신)
update member set passwd='3579' where id='hongkd@dragon.com';
select * from member;

-- delete문 사용하기(삭제)
delete from member
where id='hongkd@dragon.com';
select * from member;
delete from member;
select * from member;

