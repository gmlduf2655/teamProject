package com.kh.team.vo;

public class MovieLikeVo {

	private int gno;
	private int movie_no;
	private int gcount;
	private String userid;
	
	public MovieLikeVo() {
		super();
	}

	public MovieLikeVo(int movie_no, int gcount, String userid) {
		super();
		this.movie_no = movie_no;
		this.gcount = gcount;
		this.userid = userid;
	}

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}

	public int getGcount() {
		return gcount;
	}

	public void setGcount(int gcount) {
		this.gcount = gcount;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "MovieLikeVo [gno=" + gno + ", movie_no=" + movie_no + ", gcount=" + gcount + ", userid=" + userid + "]";
	}
	
	
	
	
}
