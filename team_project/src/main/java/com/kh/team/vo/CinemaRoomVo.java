package com.kh.team.vo;

import java.sql.Date;

public class CinemaRoomVo {
	private int room_no;
	private int cinema_no;
	private String room_name;
	private int room_seat_count;
	private String movie_code;
	private Date begin_date;
	private Date finish_date;
	private boolean room_status;

	public CinemaRoomVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CinemaRoomVo(int room_no, int cinema_no, String room_name, int room_seat_count, String movie_code,
			Date begin_date, Date finish_date, boolean room_status) {
		super();
		this.room_no = room_no;
		this.cinema_no = cinema_no;
		this.room_name = room_name;
		this.room_seat_count = room_seat_count;
		this.movie_code = movie_code;
		this.begin_date = begin_date;
		this.finish_date = finish_date;
		this.room_status = room_status;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

	public int getCinema_no() {
		return cinema_no;
	}

	public void setCinema_no(int cinema_no) {
		this.cinema_no = cinema_no;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public int getRoom_seat_count() {
		return room_seat_count;
	}

	public void setRoom_seat_count(int room_seat_count) {
		this.room_seat_count = room_seat_count;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public Date getBegin_date() {
		return begin_date;
	}

	public void setBegin_date(Date begin_date) {
		this.begin_date = begin_date;
	}

	public Date getFinish_date() {
		return finish_date;
	}

	public void setFinish_date(Date finish_date) {
		this.finish_date = finish_date;
	}

	public boolean isRoom_status() {
		return room_status;
	}

	public void setRoom_status(boolean room_status) {
		this.room_status = room_status;
	}

	@Override
	public String toString() {
		return "CinemaRoomVo [room_no=" + room_no + ", cinema_no=" + cinema_no + ", room_name=" + room_name
				+ ", room_seat_count=" + room_seat_count + ", movie_code=" + movie_code + ", begin_date=" + begin_date
				+ ", finish_date=" + finish_date + ", room_status=" + room_status + "]";
	}

}
