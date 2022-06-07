-- 영화관
create table tbl_cinema(
    -- 영화관 고유 번호
    cinema_no number primary key,
    -- 영화관 이름
    cinema_name varchar2(100) not null,
    -- 영화관 주소 (울산/남구/나머지 주소) - toString
    cinema_address varchar2(500) not null,
    -- 영화관 등록일
    cinema_regdate date default sysdate not null,
    -- 영화관 수정일
    cinema_chgdate date default sysdate not null,
    -- 영화관 오픈 상태(오픈준비중 : null, 오픈 : 1, 폐점 : 0)
    cinema_status char(1) check(cinema_status in (1, 0)) 
);
-- 영화관 고유 번호 시퀀스
create sequence seq_cinema_no;
--------------------------------------------------------------------------------
-- 영화관 테이블 제거
drop table tbl_cinema;
-- 영화관 고유 번호 시퀀스 제거
drop sequence seq_cinema_no;
--------------------------------------------------------------------------------


    -- 상영관
    create table tbl_cinema_room(
        -- 상영관 고유 번호
        room_no number primary key,
        -- 영화관 참조 번호
        cinema_no references tbl_cinema(cinema_no) not null,
        -- 상영관 이름[ex)10관]
        room_name varchar2(100) not null,
        -- 상영관 위치[ex)1층]
        room_floor varchar2(20) not null,
        -- 상영실 운영 : 시작 시간(날짜를 제외한 시간값만 사용)
        room_begin_time timestamp not null,
        -- 상영실 운영 : 종료 시간(날짜를 제외한 시간값만 사용)
        room_finish_time timestamp not null,
        -- 상영관 등록일
        room_regdate date default sysdate not null,
        -- 상영실 정보 수정일
        room_chgdate date,
        -- 상영관 운영 상태(운영중 : 1, 운영종료 : 0)
        room_status char(1) default 1 check(room_status in(1,0)) not null 
    );
    -- 상영관 고유 번호 시퀀스
    create sequence seq_room_no;
--------------------------------------------------------------------------------
    -- 상영관 테이블 제거
    drop table tbl_cinema_room;
    -- 상영관 고유 번호 시퀀스 제거
    drop sequence seq_room_no;
--------------------------------------------------------------------------------
    




        -- 상영관 별 영화 운영 시간표
        create table tbl_room_timeline(
            -- 운영시간표 고유 번호
            timeline_no number primary key,
            -- 영화관 참조 번호
            cinema_no references tbl_cinema(cinema_no) not null,
            -- 상영관 참조 번호
            room_no references tbl_cinema_room(room_no) not null,
            -- 상영 영화
            movie_code references tbl_movie(movie_code) not null,
            -- 영화 시작 시간
            movie_begin_date timestamp not null,
            -- 영화 종료 시간
            movie_finish_date timestamp not null,
            -- 상영상태(상영 예정 : 0, 상영중 : 1)
            movie_status char(1) default 1 check(movie_status in (1, 0)) not null
        );
        -- 상영관 상영 스케쥴 고유 번호
        create sequence seq_timeline_no;
--------------------------------------------------------------------------------
        -- 상영관 상영 스케줄 테이블 제거
        drop table tbl_room_timeline;
        -- 상영관 상영 스케줄 고유번호 시퀀스 제거
        drop sequence seq_timeline_no;
--------------------------------------------------------------------------------
        





            -- 좌석
            create table tbl_room_seat(
                -- 좌석 고유 번호
                seat_no number primary key,
                -- 상영관 참조 번호
                room_no references tbl_cinema_room(room_no) not null,
                -- 좌석 위치 (X)
                seat_x number not null,
                -- 좌석 위치 (Y)
                seat_y varchar(1) not null,
                -- 좌석 활성화 여부
                seat_status char(1) default 1 check(seat_status in(1, 0)) not null,
                -- 예약 상태(티켓 번호) (예약 완료 = userid값이 있음, 예약가능 = null)
                ticket_no references tbl_ticket(ticket_no) not null
            );
            -- 좌석 고유번호 시퀀스 생성
            create sequence seq_seat_no;
--------------------------------------------------------------------------------
            -- 좌석 테이블 제거
            drop table tbl_room_seat;
            -- 좌석 고유 번호 시퀀스 제거
            drop sequence seq_seat_no;
--------------------------------------------------------------------------------





            
                -- 예매
                create table tbl_ticket(
                    -- 예매 고유 번호(UUID 사용)
                    ticket_no varchar2(32) primary key,
                    -- 유저 참조 번호
                    user_no references tbl_user(userno) not null,
                    -- 상영 스케줄 참조 번호
                    timeline_no references tbl_room_timeline(timeline_no) not null,
                    -- 좌석 참조 번호
                    seat_no references tbl_room_seat(seat_no),
                    -- 예약 시간
                    ticket_regdate timestamp default sysdate not null,
                    -- 예약 상태(예약 완료 : 1, 예약 취소 : 0)
                    ticket_status char(1) default 1 check(seat_status in(1, 0)) not null
                );
--------------------------------------------------------------------------------
                -- 예매 테이블 제거
                drop table tbl_ticket;
                
                
                
                
                
                
                
                
                
