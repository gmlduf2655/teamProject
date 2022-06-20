// 메세지 파일 첨부 테이블 생성
create table tbl_message_attach(
	attachno number primary key,
	messageno number references tbl_message(messageno) not null,
	filename varchar2(200) not null
);

// attachno 컬럼 시퀀스 생성
create sequence seq_message_attach_attachno;