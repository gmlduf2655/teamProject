-- 방문 유저 수 테이블
create table tbl_visit_number(
    visitno number primary key, -- 방문 유저 수 번호
    year number not null, -- 년도
    month number not null, -- 월
    day number not null, -- 일
    day_of_week varchar2(20), -- 요일
    visit_number number default 0 -- 방문 유저 수
);

-- 방문 유저 수 sequence
create sequence seq_visit_number_visitno;