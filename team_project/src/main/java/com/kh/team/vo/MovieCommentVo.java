package com.kh.team.vo;

import java.sql.Date;

public class MovieCommentVo {
	private int cno;
	private String movie_code;
	private String userid;
	private String movie_comment;
	private Date regdate;
	private String profile_image;
	private String admin_delete;
	private String movie_name;
	
	
	
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

	

	
	public MovieCommentVo(String movie_code, String userid, String movie_comment, String movie_name) {
		super();
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
		this.movie_name = movie_name;
	}


	public MovieCommentVo(String movie_code, String userid, String movie_comment, String profile_image,
			String movie_name) {
		super();
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
		this.profile_image = profile_image;
		this.movie_name = movie_name;
	}


	public MovieCommentVo(int cno, String movie_code, String userid, String movie_comment) {
		super();
		this.cno = cno;
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
	}
	
	

	
	public MovieCommentVo(int cno, String movie_code, String userid, String movie_comment, Date regdate,
			String profile_image, String admin_delete) {
		super();
		this.cno = cno;
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
		this.regdate = regdate;
		this.profile_image = profile_image;
		this.admin_delete = admin_delete;
	}

	

	public MovieCommentVo(int cno, String movie_code, String userid, String movie_comment, Date regdate,
			String profile_image, String admin_delete, String movie_name) {
		super();
		this.cno = cno;
		this.movie_code = movie_code;
		this.userid = userid;
		this.movie_comment = movie_comment;
		this.regdate = regdate;
		this.profile_image = profile_image;
		this.admin_delete = admin_delete;
		this.movie_name = movie_name;
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


	public String getProfile_image() {
		return profile_image;
	}


	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}


	public String getAdmin_delete() {
		return admin_delete;
	}


	public void setAdmin_delete(String admin_delete) {
		this.admin_delete = admin_delete;
	}


	public String getMovie_name() {
		return movie_name;
	}


	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}


	@Override
	public String toString() {
		return "MovieCommentVo [cno=" + cno + ", movie_code=" + movie_code + ", userid=" + userid + ", movie_comment="
				+ movie_comment + ", regdate=" + regdate + ", profile_image=" + profile_image + ", admin_delete="
				+ admin_delete + ", movie_name=" + movie_name + "]";
	}

	
	
	
	
}
