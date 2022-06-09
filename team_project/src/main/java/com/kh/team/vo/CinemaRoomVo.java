package com.kh.team.vo;

import java.sql.Date;

public class CinemaRoomVo {
	private int room_no;
	private int cinema_no;
	private String room_name;
	private String room_floor;
	private String room_begin_time;
	private String room_finish_time;
	private Date room_regdate;
	private Date room_chgdate;
	private boolean room_status;
	private String room_type_code;

	public CinemaRoomVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CinemaRoomVo(int cinema_no, String room_type_code, String room_name, String room_floor, String room_begin_time,
			String room_finish_time, boolean room_status) {
		super();
		this.cinema_no = cinema_no;
		this.room_type_code = room_type_code;
		this.room_name = room_name;
		this.room_floor = room_floor;
		this.room_begin_time = room_begin_time;
		this.room_finish_time = room_finish_time;
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

	public String getRoom_floor() {
		return room_floor;
	}

	public void setRoom_floor(String room_floor) {
		this.room_floor = room_floor;
	}

	public String getRoom_begin_time() {
		return room_begin_time;
	}

	public void setRoom_begin_time(String room_begin_time) {
		this.room_begin_time = room_begin_time;
	}

	public String getRoom_finish_time() {
		return room_finish_time;
	}

	public void setRoom_finish_time(String room_finish_time) {
		this.room_finish_time = room_finish_time;
	}

	public Date getRoom_regdate() {
		return room_regdate;
	}

	public void setRoom_regdate(Date room_regdate) {
		this.room_regdate = room_regdate;
	}

	public Date getRoom_chgdate() {
		return room_chgdate;
	}

	public void setRoom_chgdate(Date room_chgdate) {
		this.room_chgdate = room_chgdate;
	}

	public boolean isRoom_status() {
		return room_status;
	}

	public void setRoom_status(boolean room_status) {
		this.room_status = room_status;
	}

	public String getRoom_type_no() {
		return room_type_code;
	}

	public void setRoom_type_no(String room_type_no) {
		this.room_type_code = room_type_no;
	}

	@Override
	public String toString() {
		return "CinemaRoomVo [room_no=" + room_no + ", cinema_no=" + cinema_no + ", room_name=" + room_name
				+ ", room_floor=" + room_floor + ", room_begin_time=" + room_begin_time + ", room_finish_time="
				+ room_finish_time + ", room_regdate=" + room_regdate + ", room_chgdate=" + room_chgdate
				+ ", room_status=" + room_status + ", room_type_code=" + room_type_code + "]";
	}

}
