package com.kh.team.vo;

import java.sql.Date;

// 유저 Vo
public class UserVo {
	private String userid; // 아이디
	private String userpw; // 비밀번호
	private String nickname; // 닉네임
	private String username; // 이름
	private String email; // 이메일
	private String address; // 주소
	private String cellphone; // 휴대폰 번호
	private int point; // 포인트
	private Date regdate; // 가입일
	private String status; // 삭제 유무
	private String profileimage; // 프로필 사진
	
	// 기본 생성자
	public UserVo() {
		super();
	}

	// 필드 생성자
	public UserVo(String userid, String userpw, String nickname, String username, String email, String address,
			String cellphone, int point, Date regdate, String status, String profileimage) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.nickname = nickname;
		this.username = username;
		this.email = email;
		this.address = address;
		this.cellphone = cellphone;
		this.point = point;
		this.regdate = regdate;
		this.status = status;
		this.profileimage = profileimage;
	}

	// Getters & Setters (Accessor)
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getProfileimage() {
		return profileimage;
	}

	public void setProfileimage(String profileimage) {
		this.profileimage = profileimage;
	}

	// toString()
	@Override
	public String toString() {
		return "UserVo [userid=" + userid + ", userpw=" + userpw + ", nickname=" + nickname + ", username=" + username
				+ ", email=" + email + ", address=" + address + ", cellphone=" + cellphone + ", point=" + point
				+ ", regdate=" + regdate + ", status=" + status + ", profileimage=" + profileimage + "]";
	}
	
}
