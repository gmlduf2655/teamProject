package com.kh.team.vo;

import java.sql.Date;

public class WinnerVo {
	
	private int winner_no;
	private String winner_title;
	private String winner_content;
	private String winner_image;
	private int winner_count;
	private Date winner_sysdate;
	
	public WinnerVo() {
		super();
	}

	public WinnerVo(int winner_no, String winner_title, String winner_content, String winner_image, int winner_count,
			Date winner_sysdate) {
		super();
		this.winner_no = winner_no;
		this.winner_title = winner_title;
		this.winner_content = winner_content;
		this.winner_image = winner_image;
		this.winner_count = winner_count;
		this.winner_sysdate = winner_sysdate;
	}

	public WinnerVo(String winner_title, String winner_content, String winner_image) {
		super();
		this.winner_title = winner_title;
		this.winner_content = winner_content;
		this.winner_image = winner_image;
		
	}

	public int getWinner_no() {
		return winner_no;
	}

	public void setWinner_no(int winner_no) {
		this.winner_no = winner_no;
	}

	public String getWinner_title() {
		return winner_title;
	}

	public void setWinner_title(String winner_title) {
		this.winner_title = winner_title;
	}

	public String getWinner_content() {
		return winner_content;
	}

	public void setWinner_content(String winner_content) {
		this.winner_content = winner_content;
	}

	public String getWinner_image() {
		return winner_image;
	}

	public void setWinner_image(String winner_image) {
		this.winner_image = winner_image;
	}

	public int getWinner_count() {
		return winner_count;
	}

	public void setWinner_count(int winner_count) {
		this.winner_count = winner_count;
	}

	public Date getWinner_sysdate() {
		return winner_sysdate;
	}

	public void setWinner_sysdate(Date winner_sysdate) {
		this.winner_sysdate = winner_sysdate;
	}

	@Override
	public String toString() {
		return "WinnerVo [winner_no=" + winner_no + ", winner_title=" + winner_title + ", winner_content="
				+ winner_content + ", winner_image=" + winner_image + ", winner_count=" + winner_count
				+ ", winner_sysdate=" + winner_sysdate + "]";
	}
	
}
