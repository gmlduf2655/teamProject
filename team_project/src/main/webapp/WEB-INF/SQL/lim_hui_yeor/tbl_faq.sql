-- FAQ 테이블 생성
create table tbl_faq (
    faqno number(6) primary key,
    question varchar2(200) not null,
    answer varchar2(2000) not null
    reg_date date default sysdate,
    mod_date date,
    faq_status char(1) default 'T' check(faq_status in('T', 'F'))
);