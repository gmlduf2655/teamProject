create table tbl_ticketing(
	ticketingno number primary key,
	movietitle varchar2(100),
	ticketingtime date,
	ticketingplace varchar2(20),
	ticketingseat varchar2(5),
	ticketingprice number,
	ticketingdate date
);

create sequence seq_ticketing_ticketingno;