package com.kh.team.vo;

import java.sql.Date;

public class PointVo {
	private int pointno; // 포인트 번호
	private int point; // 적립 포인트
	private int userno; // 유저 번호
	private Date point_date; // 포인트 적립날짜
	private int point_code; // 포인트 코드
	private String point_name; // 포인트 이름
	private String point_desc; // 포인트 설명
	
	// 기본 생성자
	public PointVo() {
		super();
	}

	// 필드 생성자
	public PointVo(int pointno, int point, int userno, Date point_date, int point_code, String point_name,
			String point_desc) {
		super();
		this.pointno = pointno;
		this.point = point;
		this.userno = userno;
		this.point_date = point_date;
		this.point_code = point_code;
		this.point_name = point_name;
		this.point_desc = point_desc;
	}

	public PointVo(int point, int userno, int point_code) {
		super();
		this.point = point;
		this.userno = userno;
		this.point_code = point_code;
	}

	// Getter & Setter (Accessor)
	public int getPointno() {
		return pointno;
	}

	public void setPointno(int pointno) {
		this.pointno = pointno;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public Date getPoint_date() {
		return point_date;
	}

	public void setPoint_date(Date point_date) {
		this.point_date = point_date;
	}

	public int getPoint_code() {
		return point_code;
	}

	public void setPoint_code(int point_code) {
		this.point_code = point_code;
	}

	public String getPoint_name() {
		return point_name;
	}

	public void setPoint_name(String point_name) {
		this.point_name = point_name;
	}

	public String getPoint_desc() {
		return point_desc;
	}

	public void setPoint_desc(String point_desc) {
		this.point_desc = point_desc;
	}

	// toString()
	@Override
	public String toString() {
		return "PointVo [pointno=" + pointno + ", point=" + point + ", userno=" + userno + ", point_date=" + point_date
				+ ", point_code=" + point_code + ", point_name=" + point_name + ", point_desc=" + point_desc + "]";
	}
	
}
