package com.kh.team.vo;

public class VisitnumberVo {
	private int visitno; // 방문 유저 수 번호
	private int year; // 방문년도
	private int month; // 방문 월
	private int day; // 방문일
	private String day_of_week; // 요일 
	private int visit_number; // 방문자 수
	
	// 기본 생성자
	public VisitnumberVo() {
		super();
	}

	// 필드 생성자
	public VisitnumberVo(int visitno, int year, int month, int day, String day_of_week, int visit_number) {
		super();
		this.visitno = visitno;
		this.year = year;
		this.month = month;
		this.day = day;
		this.day_of_week = day_of_week;
		this.visit_number = visit_number;
	}

	// Getter & Setter(Accessor)
	public int getVisitno() {
		return visitno;
	}

	public void setVisitno(int visitno) {
		this.visitno = visitno;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public String getDay_of_week() {
		return day_of_week;
	}

	public void setDay_of_week(String day_of_week) {
		this.day_of_week = day_of_week;
	}

	public int getVisit_number() {
		return visit_number;
	}

	public void setVisit_number(int visit_number) {
		this.visit_number = visit_number;
	}

	// toString()
	@Override
	public String toString() {
		return "VisitnumberVo [visitno=" + visitno + ", year=" + year + ", month=" + month + ", day=" + day
				+ ", day_of_week=" + day_of_week + ", visit_number=" + visit_number + "]";
	}
	
}
