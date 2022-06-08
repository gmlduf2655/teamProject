-- tbl_point_code 테이블 생성
create table tbl_point_code(
    point_code number primary key,
    point number default 0,
    point_name varchar2(50),
    point_desc varchar2(100)
);