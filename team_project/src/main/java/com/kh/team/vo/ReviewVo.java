package com.kh.team.vo;

import java.sql.Date;

public class ReviewVo {
	private int review_no;
	private String review_writer;
	private String review_title;
	private String review_content;
	private int review_star;
	private Date review_reg_date;
	private int review_viewcnt;
	private int userno;
	private String admin_delete;
	private String movie_code;
	private String movie_image_name;
	private String movie_name;
	
	public ReviewVo() {
		super();
	}
	
	public ReviewVo(int review_no, String review_writer, String review_title, String review_content, int review_star,
			Date review_reg_date, int review_viewcnt, int userno, String admin_delete) {
		super();
		this.review_no = review_no;
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_star = review_star;
		this.review_reg_date = review_reg_date;
		this.review_viewcnt = review_viewcnt;
		this.userno = userno;
		this.admin_delete = admin_delete;
	}

	public ReviewVo(int review_no, String review_writer, String review_title, String review_content, int review_star,
			Date review_reg_date, int review_viewcnt) {
		super();
		this.review_no = review_no;
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_star = review_star;
		this.review_reg_date = review_reg_date;
		this.review_viewcnt = review_viewcnt;
	}

	public ReviewVo(String review_writer, String review_title, String review_content, int review_star) {
		super();
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_star = review_star;
		this.userno = userno;
	}
	
	public ReviewVo(String review_writer, String review_title, String review_content, int review_star, int userno,
			String admin_delete) {
		super();
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_star = review_star;
		this.userno = userno;
		this.admin_delete = admin_delete;
	}
	
	public ReviewVo(String review_writer, String review_title, String review_content, int review_star, int userno,
			String movie_code, String movie_image_name, String movie_name) {
		super();
		this.review_writer = review_writer;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_star = review_star;
		this.userno = userno;
		this.movie_code = movie_code;
		this.movie_image_name = movie_image_name;
		this.movie_name = movie_name;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public String getMovie_image_name() {
		return movie_image_name;
	}

	public void setMovie_image_name(String movie_image_name) {
		this.movie_image_name = movie_image_name;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getAdmin_delete() {
		return admin_delete;
	}

	public void setAdmin_delete(String admin_delete) {
		this.admin_delete = admin_delete;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_writer() {
		return review_writer;
	}

	public void setReview_writer(String review_writer) {
		this.review_writer = review_writer;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_star() {
		return review_star;
	}

	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}

	public Date getReview_reg_date() {
		return review_reg_date;
	}

	public void setReview_reg_date(Date review_reg_date) {
		this.review_reg_date = review_reg_date;
	}


	public int getReview_viewcnt() {
		return review_viewcnt;
	}


	public void setReview_viewcnt(int review_viewcnt) {
		this.review_viewcnt = review_viewcnt;
	}

	@Override
	public String toString() {
		return "ReviewVo [review_no=" + review_no + ", review_writer=" + review_writer + ", review_title="
				+ review_title + ", review_content=" + review_content + ", review_star=" + review_star
				+ ", review_reg_date=" + review_reg_date + ", review_viewcnt=" + review_viewcnt + ", userno=" + userno
				+ ", admin_delete=" + admin_delete + ", movie_code=" + movie_code + ", movie_image_name="
				+ movie_image_name + ", movie_name=" + movie_name + "]";
	}

}
