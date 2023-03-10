show tables;

create table board(
	num int not null primary key auto_increment,-- 글 번호
	writer varchar(10) not null,				-- 글쓴이 
	email varchar(30),							-- 이메일
	subject varchar(50) not null, 				-- 글 제목
	passwd varchar(12) not null,				-- 비밀번호
	reg_date datetime not null,					-- 글쓴 날짜
	readcount int default 0,					-- 조회수 저장
	ref int not null,							-- 글을 작성한 날짜
	re_step smallint not null,					--	제목글과 답변을 순서를 정리
	re_level smallint not null,					-- 글의 레벨을 정리
	content text not null,						-- 글의 내용
	ip varchar(20) not null						-- 글쓴이의 ip를 저장
);

select * from board;

