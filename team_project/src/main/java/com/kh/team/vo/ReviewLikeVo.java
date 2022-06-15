package com.kh.team.vo;

public class ReviewLikeVo {
	
	private int like_no;
	private int review_no;
	private String userid;
	private int like_count;
	
	public ReviewLikeVo() {
		super();
	}

	public ReviewLikeVo(int like_no, int review_no, String userid, int like_count) {
		super();
		this.like_no = like_no;
		this.review_no = review_no;
		this.userid = userid;
		this.like_count = like_count;
	}

	public int getLike_no() {
		return like_no;
	}

	public void setLike_no(int like_no) {
		this.like_no = like_no;
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

	public int getLike_count() {
		return like_count;
	}

	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	@Override
	public String toString() {
		return "ReviewLikeVo [like_no=" + like_no + ", review_no=" + review_no + ", userid=" + userid + ", like_count="
				+ like_count + "]";
	}

}