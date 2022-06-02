package com.kh.team.vo;

import java.sql.Date;

public class CinemaVo {
	private int cinema_no;
	private String cinema_name;
	private String cinema_address;
	private int cinema_seat_count;
	private String cinema_status;
	private Date cinema_begin_date;
	private Date cinema_finish_date;
	private Date regdate;
	private Date chgdate;

	public CinemaVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CinemaVo(String cinema_name, String cinema_address, int cinema_seat_count, String cinema_status,
			Date cinema_begin_date, Date cinema_finish_date, Date chgdate) {
		super();
		this.cinema_name = cinema_name;
		this.cinema_address = cinema_address;
		this.cinema_seat_count = cinema_seat_count;
		this.cinema_status = cinema_status;
		this.cinema_begin_date = cinema_begin_date;
		this.cinema_finish_date = cinema_finish_date;
		this.chgdate = chgdate;
	}

	public CinemaVo(String cinema_name, String cinema_address, int cinema_seat_count, String cinema_status,
			Date cinema_begin_date, Date cinema_finish_date, Date regdate, Date chgdate) {
		super();
		this.cinema_name = cinema_name;
		this.cinema_address = cinema_address;
		this.cinema_seat_count = cinema_seat_count;
		this.cinema_status = cinema_status;
		this.cinema_begin_date = cinema_begin_date;
		this.cinema_finish_date = cinema_finish_date;
		this.regdate = regdate;
		this.chgdate = chgdate;
	}

	public CinemaVo(int cinema_no, String cinema_name, String cinema_address, int cinema_seat_count,
			String cinema_status, Date cinema_begin_date, Date cinema_finish_date, Date regdate, Date chgdate) {
		super();
		this.cinema_no = cinema_no;
		this.cinema_name = cinema_name;
		this.cinema_address = cinema_address;
		this.cinema_seat_count = cinema_seat_count;
		this.cinema_status = cinema_status;
		this.cinema_begin_date = cinema_begin_date;
		this.cinema_finish_date = cinema_finish_date;
		this.regdate = regdate;
		this.chgdate = chgdate;
	}

	public int getCinema_no() {
		return cinema_no;
	}

	public void setCinema_no(int cinema_no) {
		this.cinema_no = cinema_no;
	}

	public String getCinema_name() {
		return cinema_name;
	}

	public void setCinema_name(String cinema_name) {
		this.cinema_name = cinema_name;
	}

	public String getCinema_address() {
		return cinema_address;
	}

	public void setCinema_address(String cinema_address) {
		this.cinema_address = cinema_address;
	}

	public int getCinema_seat_count() {
		return cinema_seat_count;
	}

	public void setCinema_seat_count(int cinema_seat_count) {
		this.cinema_seat_count = cinema_seat_count;
	}

	public String getCinema_status() {
		return cinema_status;
	}

	public void setCinema_status(String cinema_status) {
		this.cinema_status = cinema_status;
	}

	public Date getCinema_begin_date() {
		return cinema_begin_date;
	}

	public void setCinema_begin_date(Date cinema_begin_date) {
		this.cinema_begin_date = cinema_begin_date;
	}

	public Date getCinema_finish_date() {
		return cinema_finish_date;
	}

	public void setCinema_finish_date(Date cinema_finish_date) {
		this.cinema_finish_date = cinema_finish_date;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getChgdate() {
		return chgdate;
	}

	public void setChgdate(Date chgdate) {
		this.chgdate = chgdate;
	}

	@Override
	public String toString() {
		return "CinemaVo [cinema_no=" + cinema_no + ", cinema_name=" + cinema_name + ", cinema_address="
				+ cinema_address + ", cinema_seat_count=" + cinema_seat_count + ", cinema_status=" + cinema_status
				+ ", cinema_begin_date=" + cinema_begin_date + ", cinema_finish_date=" + cinema_finish_date
				+ ", regdate=" + regdate + ", chgdate=" + chgdate + "]";
	}

}
