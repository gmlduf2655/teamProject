package com.kh.team.vo;

import java.sql.Date;

public class AttendanceVo {
	private int attend_no;
	private Date attend_date;
	private String attend_check;
	private int userno;
	
	public AttendanceVo() {
		super();
	}

	public AttendanceVo(int attend_no, Date attend_date, String attend_check, int userno) {
		super();
		this.attend_no = attend_no;
		this.attend_date = attend_date;
		this.attend_check = attend_check;
		this.userno = userno;
	}

	public AttendanceVo(Date attend_date, String attend_check, int userno) {
		super();
		this.attend_date = attend_date;
		this.attend_check = attend_check;
		this.userno = userno;
	}

	public int getAttend_no() {
		return attend_no;
	}

	public void setAttend_no(int attend_no) {
		this.attend_no = attend_no;
	}

	public Date getAttend_date() {
		return attend_date;
	}

	public void setAttend_date(Date attend_date) {
		this.attend_date = attend_date;
	}

	public String getAttend_check() {
		return attend_check;
	}

	public void setAttend_check(String attend_check) {
		this.attend_check = attend_check;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	@Override
	public String toString() {
		return "AttendanceVo [attend_no=" + attend_no + ", attend_date=" + attend_date + ", attend_check="
				+ attend_check + ", userno=" + userno + "]";
	}
	
}
