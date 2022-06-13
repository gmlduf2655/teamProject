package com.kh.team.vo;

public class MovieVo {
	private String movie_code;
	private String movie_name;
	private String movie_name_en;
	private String opening_date;
	private int runningtime;
	private int make_year;
	private String made_country;
	private String movie_genre;
	private String movie_director;
	private String made_company;
	private String movie_image_name;
	private String movie_actors;
	private String movie_audits;
	private String movie_synopsis;
	private int movie_no;
	
	
	
	public MovieVo() {
		super();
	}

	public MovieVo(String movie_code, String movie_name, String movie_name_en) {
		super();
		this.movie_code = movie_code;
		this.movie_name = movie_name;
		this.movie_name_en = movie_name_en;
	}
	
	

	public MovieVo(String movie_code, String movie_name, String movie_name_en, String opening_date, int make_year,
			String made_country, String movie_genre) {
		super();
		this.movie_code = movie_code;
		this.movie_name = movie_name;
		this.movie_name_en = movie_name_en;
		this.opening_date = opening_date;
		this.make_year = make_year;
		this.made_country = made_country;
		this.movie_genre = movie_genre;
	}

	public MovieVo(String movie_code, String movie_name, String movie_name_en, String opening_date, int runningtime,
			int make_year, String made_country, String movie_genre) {
		super();
		this.movie_code = movie_code;
		this.movie_name = movie_name;
		this.movie_name_en = movie_name_en;
		this.opening_date = opening_date;
		this.runningtime = runningtime;
		this.make_year = make_year;
		this.made_country = made_country;
		this.movie_genre = movie_genre;
	}

	public MovieVo(String movie_code, String movie_name, String movie_name_en, String opening_date, int runningtime,
			int make_year, String made_country, String movie_genre, String movie_director, String made_company) {
		super();
		this.movie_code = movie_code;
		this.movie_name = movie_name;
		this.movie_name_en = movie_name_en;
		this.opening_date = opening_date;
		this.runningtime = runningtime;
		this.make_year = make_year;
		this.made_country = made_country;
		this.movie_genre = movie_genre;
		this.movie_director = movie_director;
		this.made_company = made_company;
	}

	

	
	

	public MovieVo(String movie_code, String movie_name, String movie_name_en, String opening_date, int runningtime,
			int make_year, String made_country, String movie_genre, String movie_director, String made_company,
			String movie_image_name, String movie_actors, String movie_audits, String movie_synopsis, int movie_no) {
		super();
		this.movie_code = movie_code;
		this.movie_name = movie_name;
		this.movie_name_en = movie_name_en;
		this.opening_date = opening_date;
		this.runningtime = runningtime;
		this.make_year = make_year;
		this.made_country = made_country;
		this.movie_genre = movie_genre;
		this.movie_director = movie_director;
		this.made_company = made_company;
		this.movie_image_name = movie_image_name;
		this.movie_actors = movie_actors;
		this.movie_audits = movie_audits;
		this.movie_synopsis = movie_synopsis;
		this.movie_no = movie_no;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getMovie_name_en() {
		return movie_name_en;
	}

	public void setMovie_name_en(String movie_name_en) {
		this.movie_name_en = movie_name_en;
	}

	public String getOpening_date() {
		return opening_date;
	}

	public void setOpening_date(String opening_date) {
		this.opening_date = opening_date;
	}

	public int getRunningtime() {
		return runningtime;
	}

	public void setRunningtime(int runningtime) {
		this.runningtime = runningtime;
	}

	public int getMake_year() {
		return make_year;
	}

	public void setMake_year(int make_year) {
		this.make_year = make_year;
	}

	public String getMade_country() {
		return made_country;
	}

	public void setMade_country(String made_country) {
		this.made_country = made_country;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}

	public String getMovie_director() {
		return movie_director;
	}

	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}

	public String getMade_company() {
		return made_company;
	}

	public void setMade_company(String made_company) {
		this.made_company = made_company;
	}

	public String getMovie_image_name() {
		return movie_image_name;
	}

	public void setMovie_image_name(String movie_image_name) {
		this.movie_image_name = movie_image_name;
	}

	public String getMovie_actors() {
		return movie_actors;
	}

	public void setMovie_actors(String movie_actors) {
		this.movie_actors = movie_actors;
	}

	public String getMovie_audits() {
		return movie_audits;
	}

	public void setMovie_audits(String movie_audits) {
		this.movie_audits = movie_audits;
	}

	public String getMovie_synopsis() {
		return movie_synopsis;
	}

	public void setMovie_synopsis(String movie_synopsis) {
		this.movie_synopsis = movie_synopsis;
	}

	public int getMovie_no() {
		return movie_no;
	}

	public void setMovie_no(int movie_no) {
		this.movie_no = movie_no;
	}

	@Override
	public String toString() {
		return "MovieVo [movie_code=" + movie_code + ", movie_name=" + movie_name + ", movie_name_en=" + movie_name_en
				+ ", opening_date=" + opening_date + ", runningtime=" + runningtime + ", make_year=" + make_year
				+ ", made_country=" + made_country + ", movie_genre=" + movie_genre + ", movie_director="
				+ movie_director + ", made_company=" + made_company + ", movie_image_name=" + movie_image_name
				+ ", movie_actors=" + movie_actors + ", movie_audits=" + movie_audits + ", movie_synopsis="
				+ movie_synopsis + ", movie_no=" + movie_no + "]";
	}

	

	
	
	
}
