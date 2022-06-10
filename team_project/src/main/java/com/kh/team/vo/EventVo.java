package com.kh.team.vo;

import java.sql.Date;

public class EventVo {
	
	private int event_no;
	private String event_title;
	private String event_content;
	private String event_image;
	private int event_count;
	private Date event_end_date;
	private Date event_start_date;
	
	public EventVo() {
		super();
		
	}
	
	public EventVo(String event_title, String event_content, String event_image, Date event_end_date,
			Date event_start_date) {
		super();
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_image = event_image;
		this.event_end_date = event_end_date;
		this.event_start_date = event_start_date;
	}

	public EventVo(String event_title, String event_content, Date event_end_date, Date event_start_date) {
		super();
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_end_date = event_end_date;
		this.event_start_date = event_start_date;
	}

	public EventVo(String event_title, String event_content, String event_image, Date event_end_date) {
		super();
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_image = event_image;
		this.event_end_date = event_end_date;
	}

	public EventVo(int event_no, String event_title, String event_content, String event_image, int event_count,
			Date event_end_date, Date event_start_date) {
		super();
		this.event_no = event_no;
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_image = event_image;
		this.event_count = event_count;
		this.event_end_date = event_end_date;
		this.event_start_date = event_start_date;
	}

	public Date getEvent_start_date() {
		return event_start_date;
	}

	public void setEvent_start_date(Date event_start_date) {
		this.event_start_date = event_start_date;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}

	public String getEvent_title() {
		return event_title;
	}

	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}

	public String getEvent_content() {
		return event_content;
	}

	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}

	public String getEvent_image() {
		return event_image;
	}

	public void setEvent_image(String event_image) {
		this.event_image = event_image;
	}

	public int getEvent_count() {
		return event_count;
	}

	public void setEvent_count(int event_count) {
		this.event_count = event_count;
	}

	public Date getEvent_end_date() {
		return event_end_date;
	}

	public void setEvent_end_date(Date event_end_date) {
		this.event_end_date = event_end_date;
	}

	@Override
	public String toString() {
		return "EventVo [event_no=" + event_no + ", event_title=" + event_title + ", event_content=" + event_content
				+ ", event_image=" + event_image + ", event_count=" + event_count + ", event_end_date=" + event_end_date
				+ ", event_start_date=" + event_start_date + "]";
	}

}
