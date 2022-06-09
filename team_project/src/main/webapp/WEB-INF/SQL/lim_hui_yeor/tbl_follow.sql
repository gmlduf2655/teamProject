-- tbl_follow 테이블 생성
create table tbl_follow(
    followno number primary key,
    follower number references tbl_user(userno),
    follow number references tbl_user(userno),
    follow_date date default sysdate
);

-- seq_follow_follow 시퀀스 생성
create sequence seq_follow_followno;