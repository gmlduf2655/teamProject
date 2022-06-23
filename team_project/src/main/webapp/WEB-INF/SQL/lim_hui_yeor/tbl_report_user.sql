-- 신고유저 테이블 생성
create table tbl_report_user (
	reportno number primary key, -- 신고번호
	reporter varchar2(50) references tbl_user(userid) not null, -- 신고자
	reported_user varchar2(50) references tbl_user(userid) not null,
	report_type varchar2(100) not null, -- 신고 사유
	report_desc varchar2(2000), -- 신고 상세 내용
	report_date date default sysdate, -- 신고 날짜
	report_accept_date date -- 신고 접수 날짜
);

-- 신고번호 시퀀스 생성
create sequence seq_report_user_reportno;

-- 신고 해결여부 컬럼 추가
alter table tbl_report_user add (report_resolved char(1) default 'F' Check( report_resolved in ('T', 'F')));