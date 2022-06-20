package com.kh.team.vo;

import java.util.Date;

// 임희열 : 유저 영화 예매 정보 정보 Vo
public class TicketUserVo {
	private String ticket_no; // 티켓번호
	private int user_no; // 유저번호
	private String ticket_regdate; // 티켓 발급일
	private String movie_begin_date; // 영화 시작시간
	private String movie_finish_date; // 영화 끝나는 시간
	private String movie_code; // 영화 코드
	private String cinema_name; // 상영극장 이름
	private int seat_x; // 상영 좌석 x축
	private String seat_y; // 상영 좌석 y축
	private String room_type_name; // 상영 방식 
	private String room_name; // 상영관 이름
	private String room_floor; // 영화 상영 층
	private String movie_name; // 영화 제목
	private String movie_image_name; // 영화 이미지 
	
	// 기본 생성자
	public TicketUserVo() {
		super();
	}

	// 필드 생성자
	public TicketUserVo(String ticket_no, int user_no, String ticket_regdate, String movie_begin_date,
			String movie_finish_date, String movie_code, String cinema_name, int seat_x, String seat_y,
			String room_type_name, String room_name, String room_floor, String movie_name, String movie_image_name) {
		super();
		this.ticket_no = ticket_no;
		this.user_no = user_no;
		this.ticket_regdate = ticket_regdate;
		this.movie_begin_date = movie_begin_date;
		this.movie_finish_date = movie_finish_date;
		this.movie_code = movie_code;
		this.cinema_name = cinema_name;
		this.seat_x = seat_x;
		this.seat_y = seat_y;
		this.room_type_name = room_type_name;
		this.room_name = room_name;
		this.room_floor = room_floor;
		this.movie_name = movie_name;
		this.movie_image_name = movie_image_name;
	}

	

	// Getter & Setter (Accessor)
	

	public int getUser_no() {
		return user_no;
	}

	public String getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getTicket_regdate() {
		return ticket_regdate;
	}

	public void setTicket_regdate(String ticket_regdate) {
		this.ticket_regdate = ticket_regdate;
	}

	public String getMovie_begin_date() {
		return movie_begin_date;
	}

	public void setMovie_begin_date(String movie_begin_date) {
		this.movie_begin_date = movie_begin_date;
	}

	public String getMovie_finish_date() {
		return movie_finish_date;
	}

	public void setMovie_finish_date(String movie_finish_date) {
		this.movie_finish_date = movie_finish_date;
	}

	public int getSeat_x() {
		return seat_x;
	}

	public void setSeat_x(int seat_x) {
		this.seat_x = seat_x;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public String getCinema_name() {
		return cinema_name;
	}

	public void setCinema_name(String cinema_name) {
		this.cinema_name = cinema_name;
	}


	public String getSeat_y() {
		return seat_y;
	}

	public void setSeat_y(String seat_y) {
		this.seat_y = seat_y;
	}

	public String getRoom_type_name() {
		return room_type_name;
	}

	public void setRoom_type_name(String room_type_name) {
		this.room_type_name = room_type_name;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_floor() {
		return room_floor;
	}

	public void setRoom_floor(String room_floor) {
		this.room_floor = room_floor;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getMovie_image_name() {
		return movie_image_name;
	}

	public void setMovie_image_name(String movie_image_name) {
		this.movie_image_name = movie_image_name;
	}

	// toString()
	@Override
	public String toString() {
		return "TicketUserVo [ticket_no=" + ticket_no + ", user_no=" + user_no + ", ticket_regdate=" + ticket_regdate
				+ ", movie_begin_date=" + movie_begin_date + ", movie_finish_date=" + movie_finish_date
				+ ", movie_code=" + movie_code + ", cinema_name=" + cinema_name + ", seat_x=" + seat_x + ", seat_y="
				+ seat_y + ", room_type_name=" + room_type_name + ", room_name=" + room_name + ", room_floor="
				+ room_floor + ", movie_name=" + movie_name + ", movie_image_name=" + movie_image_name + "]";
	}
	
}
