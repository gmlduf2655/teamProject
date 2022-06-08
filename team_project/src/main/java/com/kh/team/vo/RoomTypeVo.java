package com.kh.team.vo;

public class RoomTypeVo {
	private int room_type_no;
	private String room_type_code;
	private String room_type;
	private int room_price;

	public RoomTypeVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RoomTypeVo(String room_type_code, String room_type, int room_price) {
		super();
		this.room_type_code = room_type_code;
		this.room_type = room_type;
		this.room_price = room_price;
	}

	public int getRoom_type_no() {
		return room_type_no;
	}

	public void setRoom_type_no(int room_type_no) {
		this.room_type_no = room_type_no;
	}

	public String getRoom_type_code() {
		return room_type_code;
	}

	public void setRoom_type_code(String room_type_code) {
		this.room_type_code = room_type_code;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	@Override
	public String toString() {
		return "RoomType [room_type_no=" + room_type_no + ", room_type=" + room_type + ", room_price=" + room_price
				+ "]";
	}

}
