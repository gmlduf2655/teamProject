-- 유저 테이블 생성
create table tbl_user(
    userid varchar2(20) primary key, -- 아이디
    userpw varchar2(20) not null, -- 비밀번호
    nickname varchar2(10) not null, -- 닉네임
    username varchar2(10) not null, -- 이름
    email varchar2(100) not null, -- 이메일
    address varchar2(200) not null, -- 주소
    cellphone char(11) not null, -- 휴대폰 번호
    point number default 0 not null , -- 포인트
    regdate date default sysdate, -- 생성일
    status char(1) default 'T' not null check(status='T' or status='F'), -- 삭제 유무
    profileimage varchar2(100)  -- 프로필 사진
);

-- 닉네임 컬럼 변경
alter table tbl_user modify (nickname varchar2(20));
-- 이름 컬럼 변경
alter table tbl_user modify (username varchar2(20));
-- 삭제유무 컬럼 변경
alter table tbl_user modify (status char(1) default '1' check(status='1' or status='0'));
-- check(status=='T' or status=='F') 제약조건 삭제
alter table tbl_user drop constraint SYS_C008499;