-- 유저 테이블 생성
create table tbl_user(
    userid varchar2(20) primary key, -- 아이디
    userpw varchar2(20) not null, -- 비밀번호
    nickname varchar2(10) not null, -- 닉네임
    username varchar2(10) not null, -- 이름
    email varchar2(100), -- 이메일
    address varchar2(200) not null, -- 주소
    cellphone char(11) not null, -- 휴대폰 번호
    point number default 0  , -- 포인트
    regdate date default sysdate, -- 생성일
    status char(1) default 'T' check(status='T' or status='F'), -- 삭제 유무
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
-- cellphone 컬럼 not null 제약 조건 삭제
alter table tbl_user drop constraint SYS_C008495;
-- address 컬럼 not null 제약조건 삭제
alter table tbl_user drop constraint SYS_C008496;
-- 삭제 유무 컬럼 이름 변경
alter table tbl_user rename column status to user_status;
-- 프로필 이미지 컬럼 이름 변경
alter table tbl_user rename column profileimage to profile_image;
-- 등록일 컬럼 이름 변경
alter table tbl_user rename column regdate to reg_date;
-- 닉네임 컬럼 unique 제약조건 추가
alter table tbl_user modify (nickname varchar2(20) unique);
-- userid 컬럼 primarykey 제약조건 삭제
alter table tbl_user drop constraint SYS_C008500;
-- userid 컬럼 unique 제약조건 추가
alter table tbl_user modify (userid varchar2(20) unique);
-- 회원정보 수정일 컬럼 추가
alter table add (mod_date date);
-- 유저 넘버 컬럼 추가
alter table add (userno number primary key);
-- 간편로그인 id 컬럼 추가
alter table tbl_user add (sns_id varchar2(20) );
-- 간편로그인 sns type(구글, 네이버, 카카오등) 컬럼 추가
alter table tbl_user add (sns_type varchar2(10));
-- 간편로그인 연동 날짜 컬럼 추가
alter table tbl_user add (sns_connect_date date);
-- userno sequence 생성
create sequence seq_user_userno;
-- 휴대폰 번호 컬럼 변경
alter table tbl_user modify (cellphone char(13));