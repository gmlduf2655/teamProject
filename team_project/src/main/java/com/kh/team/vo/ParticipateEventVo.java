package com.kh.team.vo;

import java.sql.Date;

public class ParticipateEventVo {
	
	private int participate_no;
	private String event_title;
	private Date event_start_date;
	private Date event_end_date;
	private int userno;
	private int event_no;
	private String userid;
	private String event_win;
	
	public ParticipateEventVo() {
		super();
	}

	public ParticipateEventVo(int participate_no, String event_title, Date event_start_date, Date event_end_date,
			int userno, int event_no) {
		super();
		this.participate_no = participate_no;
		this.event_title = event_title;
		this.event_start_date = event_start_date;
		this.event_end_date = event_end_date;
		this.userno = userno;
		this.event_no = event_no;
	}

	public ParticipateEventVo(int participate_no, String event_title, Date event_start_date, Date event_end_date,
			int userno, int event_no, String userid) {
		super();
		this.participate_no = participate_no;
		this.event_title = event_title;
		this.event_start_date = event_start_date;
		this.event_end_date = event_end_date;
		this.userno = userno;
		this.event_no = event_no;
		this.userid = userid;
	}
	
	public ParticipateEventVo(String event_title, Date event_start_date, Date event_end_date, int userno, int event_no,
			String userid) {
		super();
		this.event_title = event_title;
		this.event_start_date = event_start_date;
		this.event_end_date = event_end_date;
		this.userno = userno;
		this.event_no = event_no;
		this.userid = userid;
	}
	
	

	public String getEvent_win() {
		return event_win;
	}

	public void setEvent_win(String event_win) {
		this.event_win = event_win;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getParticipate_no() {
		return participate_no;
	}

	public void setParticipate_no(int participate_no) {
		this.participate_no = participate_no;
	}

	public String getEvent_title() {
		return event_title;
	}

	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}

	public Date getEvent_start_date() {
		return event_start_date;
	}

	public void setEvent_start_date(Date event_start_date) {
		this.event_start_date = event_start_date;
	}

	public Date getEvent_end_date() {
		return event_end_date;
	}

	public void setEvent_end_date(Date event_end_date) {
		this.event_end_date = event_end_date;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getEvent_no() {
		return event_no;
	}

	public void setEvent_no(int event_no) {
		this.event_no = event_no;
	}

	@Override
	public String toString() {
		return "ParticipateEventVo [participate_no=" + participate_no + ", event_title=" + event_title
				+ ", event_start_date=" + event_start_date + ", event_end_date=" + event_end_date + ", userno=" + userno
				+ ", event_no=" + event_no + ", userid=" + userid + ", event_win=" + event_win + "]";
	}

}
