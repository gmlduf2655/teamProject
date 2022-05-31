package com.kh.team.vo;

import java.sql.Date;

public class EventVo {
	
	private int eventno;
	private int eventgroupno;
	private String eventitle;
	private String eventcontent;
	private String eventimage;
	private Date eventenddate;
	private int eventviewcnt;
	
	
	public EventVo() {
		super();
		
	}

	public EventVo(int eventno, int eventgroupno, String eventitle, String eventcontent, String eventimage,
			Date eventenddate, int eventviewcnt) {
		super();
		this.eventno = eventno;
		this.eventgroupno = eventgroupno;
		this.eventitle = eventitle;
		this.eventcontent = eventcontent;
		this.eventimage = eventimage;
		this.eventenddate = eventenddate;
		this.eventviewcnt = eventviewcnt;
	}

	public EventVo(String eventitle, String eventcontent, String eventimage, Date eventenddate) {
		super();
		this.eventitle = eventitle;
		this.eventcontent = eventcontent;
		this.eventimage = eventimage;
		this.eventenddate = eventenddate;
	}

	public int getEventno() {
		return eventno;
	}

	public void setEventno(int eventno) {
		this.eventno = eventno;
	}

	public int getEventgroupno() {
		return eventgroupno;
	}

	public void setEventgroupno(int eventgroupno) {
		this.eventgroupno = eventgroupno;
	}

	public String getEventitle() {
		return eventitle;
	}

	public void setEventitle(String eventitle) {
		this.eventitle = eventitle;
	}

	public String getEventcontent() {
		return eventcontent;
	}

	public void setEventcontent(String eventcontent) {
		this.eventcontent = eventcontent;
	}

	public String getEventimage() {
		return eventimage;
	}

	public void setEventimage(String eventimage) {
		this.eventimage = eventimage;
	}

	public Date getEventenddate() {
		return eventenddate;
	}

	public void setEventenddate(Date eventenddate) {
		this.eventenddate = eventenddate;
	}

	public int getEventviewcnt() {
		return eventviewcnt;
	}

	public void setEventviewcnt(int eventviewcnt) {
		this.eventviewcnt = eventviewcnt;
	}

	@Override
	public String toString() {
		return "EventVo [eventno=" + eventno + ", eventgroupno=" + eventgroupno + ", eventitle=" + eventitle
				+ ", eventcontent=" + eventcontent + ", eventimage=" + eventimage + ", eventenddate=" + eventenddate
				+ ", eventviewcnt=" + eventviewcnt + "]";
	}
	
}
