package com.kh.team.vo;

import java.sql.Date;

public class TicketingVo {
	// 예매 번호
	private int ticketingno;

	// 영화 제목
	private String movietitle;

	// 영화 상영 시간
	private Date ticketingtime;

	// 영화 상영관
	private String ticketingplace;

	// 영화 관람 좌석
	private String ticketingseat;

	// 예매 가격
	private int ticketingprice;

	// 예매 등록일
	private Date ticketingdate;

	// 예매한 유저
	private String userid;

	// 티켓 취소 여부
	private boolean ticketstatus;

	// 티켓 취소 날짜
	private Date canceldate;

	public TicketingVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TicketingVo(int ticketingno, String movietitle, Date ticketingtime, String ticketingplace,
			String ticketingseat, int ticketingprice, Date ticketingdate, String userid, boolean ticketstatus,
			Date canceldate) {
		super();
		this.ticketingno = ticketingno;
		this.movietitle = movietitle;
		this.ticketingtime = ticketingtime;
		this.ticketingplace = ticketingplace;
		this.ticketingseat = ticketingseat;
		this.ticketingprice = ticketingprice;
		this.ticketingdate = ticketingdate;
		this.userid = userid;
		this.ticketstatus = ticketstatus;
		this.canceldate = canceldate;
	}

	public int getTicketingno() {
		return ticketingno;
	}

	public void setTicketingno(int ticketingno) {
		this.ticketingno = ticketingno;
	}

	public String getMovietitle() {
		return movietitle;
	}

	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}

	public Date getTicketingtime() {
		return ticketingtime;
	}

	public void setTicketingtime(Date ticketingtime) {
		this.ticketingtime = ticketingtime;
	}

	public String getTicketingplace() {
		return ticketingplace;
	}

	public void setTicketingplace(String ticketingplace) {
		this.ticketingplace = ticketingplace;
	}

	public String getTicketingseat() {
		return ticketingseat;
	}

	public void setTicketingseat(String ticketingseat) {
		this.ticketingseat = ticketingseat;
	}

	public int getTicketingprice() {
		return ticketingprice;
	}

	public void setTicketingprice(int ticketingprice) {
		this.ticketingprice = ticketingprice;
	}

	public Date getTicketingdate() {
		return ticketingdate;
	}

	public void setTicketingdate(Date ticketingdate) {
		this.ticketingdate = ticketingdate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public boolean isTicketstatus() {
		return ticketstatus;
	}

	public void setTicketstatus(boolean ticketstatus) {
		this.ticketstatus = ticketstatus;
	}

	public Date getCanceldate() {
		return canceldate;
	}

	public void setCanceldate(Date canceldate) {
		this.canceldate = canceldate;
	}

	@Override
	public String toString() {
		return "TicketingVo [ticketingno=" + ticketingno + ", movietitle=" + movietitle + ", ticketingtime="
				+ ticketingtime + ", ticketingplace=" + ticketingplace + ", ticketingseat=" + ticketingseat
				+ ", ticketingprice=" + ticketingprice + ", ticketingdate=" + ticketingdate + ", userid=" + userid
				+ ", ticketstatus=" + ticketstatus + ", canceldate=" + canceldate + "]";
	}

}
