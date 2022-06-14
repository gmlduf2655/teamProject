package com.kh.team.vo;

public class RoomTimelineVo {
	private int timeline_no;
	private int cinema_no;
	private int room_no;
	private String movie_code;
	private String movie_begin_date;
	private String movie_finish_date;
	private boolean movie_status;
	private String timeline_code;
	private String room_type_code;

	public RoomTimelineVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RoomTimelineVo(int cinema_no, int room_no, String room_type_code, String movie_code, String movie_begin_date,
			String movie_finish_date, boolean movie_status) {
		super();
		this.cinema_no = cinema_no;
		this.room_no = room_no;
		this.room_type_code = room_type_code;
		this.movie_code = movie_code;
		this.movie_begin_date = movie_begin_date;
		this.movie_finish_date = movie_finish_date;
		this.movie_status = movie_status;
	}

	public int getTimeline_no() {
		return timeline_no;
	}

	public void setTimeline_no(int timeline_no) {
		this.timeline_no = timeline_no;
	}

	public int getCinema_no() {
		return cinema_no;
	}

	public void setCinema_no(int cinema_no) {
		this.cinema_no = cinema_no;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

	public String getMovie_code() {
		return movie_code;
	}

	public void setMovie_code(String movie_code) {
		this.movie_code = movie_code;
	}

	public String getMovie_begin_date() {
		return movie_begin_date;
	}

	public void setMovie_begin_date(String movie_begin_date) {
		this.movie_begin_date = movie_begin_date;
	}

	public String getMovie_finish_date() {
		return movie_finish_date;
	}

	public void setMovie_finish_date(String movie_finish_date) {
		this.movie_finish_date = movie_finish_date;
	}

	public boolean isMovie_status() {
		return movie_status;
	}

	public void setMovie_status(boolean movie_status) {
		this.movie_status = movie_status;
	}

	public String getTimeline_code() {
		return timeline_code;
	}

	public void setTimeline_code(String timeline_code) {
		this.timeline_code = timeline_code;
	}

	public String getRoom_type_code() {
		return room_type_code;
	}

	public void setRoom_type_code(String room_type_code) {
		this.room_type_code = room_type_code;
	}

	@Override
	public String toString() {
		return "RoomTimelineVo [timeline_no=" + timeline_no + ", cinema_no=" + cinema_no + ", room_no=" + room_no
				+ ", movie_code=" + movie_code + ", movie_begin_date=" + movie_begin_date + ", movie_finish_date="
				+ movie_finish_date + ", movie_status=" + movie_status + ", timeline_code=" + timeline_code
				+ ", room_type_code=" + room_type_code + "]";
	}

}
