package com.kh.team.vo;

public class CinemaRoomSeatVo {
	private int room_no;
	private String seat_x_code;
	private int seat_y_code;

	public CinemaRoomSeatVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CinemaRoomSeatVo(int room_no, String seat_x_code, int seat_y_code) {
		super();
		this.room_no = room_no;
		this.seat_x_code = seat_x_code;
		this.seat_y_code = seat_y_code;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

	public String getSeat_x_code() {
		return seat_x_code;
	}

	public void setSeat_x_code(String seat_x_code) {
		this.seat_x_code = seat_x_code;
	}

	public int getSeat_y_code() {
		return seat_y_code;
	}

	public void setSeat_y_code(int seat_y_code) {
		this.seat_y_code = seat_y_code;
	}

	@Override
	public String toString() {
		return "CinemaRoomSeatVo [room_no=" + room_no + ", seat_x_code=" + seat_x_code + ", seat_y_code=" + seat_y_code
				+ "]";
	}

}
