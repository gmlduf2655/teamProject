package com.kh.team.vo;

import java.sql.Date;

public class MovieCommentVo {
	private int cno;
	private String movie_code;
	private String userid;
	private String movie_comment;
	private Date regdate;
	
	
	public MovieCommentVo() {
		super();
	}


	public MovieCommentVo(int cno, String movie_code, String userid, String movie_comment, Date regdate) {
		super();
		this.cno = cno;
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
		this.regdate = regdate;
	}


	public MovieCommentVo(String movie_code, String userid, String movie_comment) {
		super();
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
	}

	

	public MovieCommentVo(int cno, String movie_code, String userid, String movie_comment) {
		super();
		this.cno = cno;
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
	}


	public int getCno() {
		return cno;
	}


	public void setCno(int cno) {
		this.cno = cno;
	}


	public String getMovie_code() {
		return movie_code;
	}


	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getMovie_comment() {
		return movie_comment;
	}


	public void setMovie_comment(String movie_comment) {
		this.movie_comment = movie_comment;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	@Override
	public String toString() {
		return "MovieCommentVo [cno=" + cno + ", movie_code=" + movie_code + ", userid=" + userid + ", movie_comment="
				+ movie_comment + ", regdate=" + regdate + "]";
	}
	
	
}
