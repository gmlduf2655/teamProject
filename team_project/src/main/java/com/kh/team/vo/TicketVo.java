package com.kh.team.vo;

public class TicketVo {
	String ticket_no;
	int user_no;
	int timeline_no;
	int seat_no;
	String ticket_regdate;
	boolean ticket_status;

	public TicketVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketVo(int user_no, int timeline_no, int seat_no, boolean ticket_status) {
		super();
		this.user_no = user_no;
		this.timeline_no = timeline_no;
		this.seat_no = seat_no;
		this.ticket_status = ticket_status;
	}

	public String getTicket_no() {
		return ticket_no;
	}

	public void setTicket_no(String ticket_no) {
		this.ticket_no = ticket_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getTimeline_no() {
		return timeline_no;
	}

	public void setTimeline_no(int timeline_no) {
		this.timeline_no = timeline_no;
	}

	public int getSeat_no() {
		return seat_no;
	}

	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}

	public String getTicket_regdate() {
		return ticket_regdate;
	}

	public void setTicket_regdate(String ticket_regdate) {
		this.ticket_regdate = ticket_regdate;
	}

	public boolean isTicket_status() {
		return ticket_status;
	}

	public void setTicket_status(boolean ticket_status) {
		this.ticket_status = ticket_status;
	}

	@Override
	public String toString() {
		return "TicketVo [ticket_no=" + ticket_no + ", user_no=" + user_no + ", timeline_no=" + timeline_no
				+ ", seat_no=" + seat_no + ", ticket_regdate=" + ticket_regdate + ", ticket_status=" + ticket_status
				+ "]";
	}

}
