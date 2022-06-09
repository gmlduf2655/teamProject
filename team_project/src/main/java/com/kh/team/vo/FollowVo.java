package com.kh.team.vo;

import java.sql.Date;

public class FollowVo {
	private int followno; // 팔로우 번호
	private int follower; // 팔로워(팔로우 받는 사람)
	private int follow; // 팔로우(팔로우 하는 사람)
	private Date follow_date; // 팔로우한 날짜
	
	// 기본 생성자
	public FollowVo() {
		super();
	}

	// 필드 생성자
	public FollowVo(int followno, int follower, int follow, Date follow_date) {
		super();
		this.followno = followno;
		this.follower = follower;
		this.follow = follow;
		this.follow_date = follow_date;
	}

	// Getter & Setter (Accessor)
	public int getFollowno() {
		return followno;
	}

	public void setFollowno(int followno) {
		this.followno = followno;
	}

	public int getFollower() {
		return follower;
	}

	public void setFollower(int follower) {
		this.follower = follower;
	}

	public int getFollow() {
		return follow;
	}

	public void setFollow(int follow) {
		this.follow = follow;
	}

	public Date getFollow_date() {
		return follow_date;
	}

	public void setFollow_date(Date follow_date) {
		this.follow_date = follow_date;
	}

	// toString()
	@Override
	public String toString() {
		return "FollowVo [followno=" + followno + ", follower=" + follower + ", follow=" + follow + ", follow_date="
				+ follow_date + "]";
	}
	
}
