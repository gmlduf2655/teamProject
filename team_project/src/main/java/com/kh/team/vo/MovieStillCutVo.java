package com.kh.team.vo;

public class MovieStillCutVo {

	private int sno;
	private String movie_code;
	private String still_cut_name;
	
	public MovieStillCutVo() {
		super();
	}

	public MovieStillCutVo(String movie_code, String still_cut_name) {
		super();
		this.movie_code = movie_code;
		this.still_cut_name = still_cut_name;
	}

	public MovieStillCutVo(int sno, String movie_code, String still_cut_name) {
		super();
		this.sno = sno;
		this.movie_code = movie_code;
		this.still_cut_name = still_cut_name;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public String getStill_cut_name() {
		return still_cut_name;
	}

	public void setStill_cut_name(String still_cut_name) {
		this.still_cut_name = still_cut_name;
	}

	@Override
	public String toString() {
		return "MovieStillCutVo [sno=" + sno + ", movie_code=" + movie_code + ", still_cut_name=" + still_cut_name
				+ "]";
	}
	
	
}
