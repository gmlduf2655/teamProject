-- 메세지 테이블 생성
create table tbl_message(
    messageno number primary key,
    sender number references tbl_user(userno),
    receiver number references tbl_user(userno),
    message_date date default sysdate,
    message_file varchar2(200),
    groupno number,
    re_seq number default 0,
    re_level number default 0
);

-- 메세지 테이블 시퀀스 생성
create sequence seq_message_messageno;

-- 메세지 제목 컬럼 생성
alter table tbl_message add(message_title varchar2(100) not null)
-- 메세지 내용 컬럼 생성
alter table tbl_message add(message_content varchar2(2000) not null)

-- 보내는 이 외래키 제약 조건 삭제
alter table tbl_message drop constraint SYS_C008673;
-- 받는 이 외래키 제약 조건 삭제
alter table tbl_message drop constraint SYS_C008674;

-- 보내는이 컬럼 변경
alter table tbl_message modify(sender varchar2(50) references tbl_user(userid));
-- 받는이 컬럼 변경4
alter table tbl_message modify(receiver varchar2(50) references tbl_user(userid));
