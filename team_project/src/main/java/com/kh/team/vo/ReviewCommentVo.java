package com.kh.team.vo;

import java.sql.Date;

public class ReviewCommentVo {
	
	private int comment_no;
	private int review_no;
	private String userid;
	private String comment_content;
	private Date comment_reg_date;
	private String profile_image;
	
	public ReviewCommentVo() {
		super();
	}

	public ReviewCommentVo(int comment_no, int review_no, String userid, String comment_content,
			Date comment_reg_date) {
		super();
		this.comment_no = comment_no;
		this.review_no = review_no;
		this.userid = userid;
		this.comment_content = comment_content;
		this.comment_reg_date = comment_reg_date;
	}

	public ReviewCommentVo(int review_no, String userid, String comment_content) {
		super();
		this.review_no = review_no;
		this.userid = userid;
		this.comment_content = comment_content;
	}

	public ReviewCommentVo(int review_no, String userid, String comment_content, String profile_image) {
		super();
		this.review_no = review_no;
		this.userid = userid;
		this.comment_content = comment_content;
		this.profile_image = profile_image;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}

	public int getComment_no() {
		return comment_no;
	}

	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getComment_content() {
		return comment_content;
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public Date getComment_reg_date() {
		return comment_reg_date;
	}

	public void setComment_reg_date(Date comment_reg_date) {
		this.comment_reg_date = comment_reg_date;
	}

	@Override
	public String toString() {
		return "ReviewCommentVo [comment_no=" + comment_no + ", review_no=" + review_no + ", userid=" + userid
				+ ", comment_content=" + comment_content + ", comment_reg_date=" + comment_reg_date + ", profile_image="
				+ profile_image + "]";
	}

}
