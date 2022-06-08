package com.kh.team.vo;

import java.sql.Date;

public class CinemaVo {
	private int cinema_no;
	private String cinema_name;
	private String cinema_address;
	private Date cinema_regdate;
	private Date cinema_chgdate;
	private String cinema_status;
	private String cinema_code;

	public CinemaVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CinemaVo(String cinema_name, String cinema_address, String cinema_status) {
		super();
		this.cinema_name = cinema_name;
		this.cinema_address = cinema_address;
		this.cinema_status = cinema_status;
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

	public Date getCinema_regdate() {
		return cinema_regdate;
	}

	public void setCinema_regdate(Date cinema_regdate) {
		this.cinema_regdate = cinema_regdate;
	}

	public Date getCinema_chgdate() {
		return cinema_chgdate;
	}

	public void setCinema_chgdate(Date cinema_chgdate) {
		this.cinema_chgdate = cinema_chgdate;
	}

	public String getCinema_status() {
		return cinema_status;
	}

	public void setCinema_status(String cinema_status) {
		this.cinema_status = cinema_status;
	}

	public String getCinema_code() {
		return cinema_code;
	}

	public void setCinema_code(String cinema_code) {
		this.cinema_code = cinema_code;
	}

	@Override
	public String toString() {
		return "CinemaVo [cinema_no=" + cinema_no + ", cinema_name=" + cinema_name + ", cinema_address="
				+ cinema_address + ", cinema_regdate=" + cinema_regdate + ", cinema_chgdate=" + cinema_chgdate
				+ ", cinema_status=" + cinema_status + ", cinema_code=" + cinema_code + "]";
	}

}
