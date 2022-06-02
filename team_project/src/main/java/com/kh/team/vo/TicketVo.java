package com.kh.team.vo;

import java.sql.Date;

public class TicketVo {
	private int ticket_no;
	private String user_id;
	private int cinema_no;
	private int room_no;
	private String movie_code;
	private Date regdate;
	private String seat_x_code;
	private int seat_y_code;
	private boolean ticket_status;

	public TicketVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketVo(int ticket_no, String user_id, int cinema_no, int room_no, String movie_code, Date regdate,
			String seat_x_code, int seat_y_code, boolean ticket_status) {
		super();
		this.ticket_no = ticket_no;
		this.user_id = user_id;
		this.cinema_no = cinema_no;
		this.room_no = room_no;
		this.movie_code = movie_code;
		this.regdate = regdate;
		this.seat_x_code = seat_x_code;
		this.seat_y_code = seat_y_code;
		this.ticket_status = ticket_status;
	}

	public int getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getCinema_no() {
		return cinema_no;
	}

	public void setCinema_no(int cinema_no) {
		this.cinema_no = cinema_no;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
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

	public boolean isTicket_status() {
		return ticket_status;
	}

	public void setTicket_status(boolean ticket_status) {
		this.ticket_status = ticket_status;
	}

	@Override
	public String toString() {
		return "TicketVo [ticket_no=" + ticket_no + ", user_id=" + user_id + ", cinema_no=" + cinema_no + ", room_no="
				+ room_no + ", movie_code=" + movie_code + ", regdate=" + regdate + ", seat_x_code=" + seat_x_code
				+ ", seat_y_code=" + seat_y_code + ", ticket_status=" + ticket_status + "]";
	}

}
