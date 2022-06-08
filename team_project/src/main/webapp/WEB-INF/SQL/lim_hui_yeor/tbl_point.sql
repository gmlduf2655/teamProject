-- tbl_point 테이블 생성
create table tbl_point(
    pointno number primary key,
    point number default 0,
    userno number references tbl_user(userno),
    point_date date default sysdate,
    point_code number references tbl_point_code(point_code)
);

-- seq_point_pointno 시퀀스 생성
create sequence seq_point_pointno;
