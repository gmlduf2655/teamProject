package com.kh.team.vo;

public class RoomSeatVo {
	private int seat_no;
	private int room_no;
	private int seat_x;
	private String seat_y;
	private boolean seat_status;
	private String ticket_no;

	public RoomSeatVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RoomSeatVo(int seat_no, int room_no, int seat_x, String seat_y, boolean seat_status, String ticket_no) {
		super();
		this.seat_no = seat_no;
		this.room_no = room_no;
		this.seat_x = seat_x;
		this.seat_y = seat_y;
		this.seat_status = seat_status;
		this.ticket_no = ticket_no;
	}

	public int getSeat_no() {
		return seat_no;
	}

	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

	public int getSeat_x() {
		return seat_x;
	}

	public void setSeat_x(int seat_x) {
		this.seat_x = seat_x;
	}

	public String getSeat_y() {
		return seat_y;
	}

	public void setSeat_y(String seat_y) {
		this.seat_y = seat_y;
	}

	public boolean isSeat_status() {
		return seat_status;
	}

	public void setSeat_status(boolean seat_status) {
		this.seat_status = seat_status;
	}

	public String getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}

	@Override
	public String toString() {
		return "RoomSeatVo [seat_no=" + seat_no + ", room_no=" + room_no + ", seat_x=" + seat_x + ", seat_y=" + seat_y
				+ ", seat_status=" + seat_status + ", ticket_no=" + ticket_no + "]";
	}

}
