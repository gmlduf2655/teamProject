create table tbl_ticketing(
	ticketingno number primary key,
	movietitle varchar2(100),
	ticketingtime date,
	ticketingplace varchar2(20),
	ticketingseat varchar2(5),
	ticketingprice number,
	ticketingdate date
);

ALTER TABLE TBL_TICKETING  
MODIFY (TICKETINGDATE DEFAULT sysdate );

alter table tbl_ticketing
add userid references tbl_user(userid);

alter table tbl_ticketing
modify (userid not null);

alter table tbl_ticketing
add ticketstatus char(1) check(ticketstatus in('1', '0'));

alter table tbl_ticketing
add canceldate date;

create sequence seq_ticketing_ticketingno;