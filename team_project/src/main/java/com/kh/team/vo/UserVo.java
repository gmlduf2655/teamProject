package com.kh.team.vo;

import java.sql.Date;

// 유저 Vo
public class UserVo {
	private String userno; // 유저 번호
	private String userid; // 아이디
	private String userpw; // 비밀번호
	private String nickname; // 닉네임
	private String username; // 이름
	private String email; // 이메일
	private String address; // 주소
	private String cellphone; // 휴대폰 번호
	private int point; // 포인트
	private Date reg_date; // 가입일
	private String user_status; // 삭제 유무
	private String profile_image; // 프로필 사진
	private Date mod_date; // 수정일
	private String sns_id; // 간편로그인 id
	private String sns_type; // 간편로그인 타입(구글, 네이버 등)
	private Date sns_connect_date; // 간편로그인 연동일
	
	// 기본 생성자
	public UserVo() {
		super();
	}

	// 필드 생성자
	public UserVo(String userid, String userpw, String nickname, String username, String email, String address,
			String cellphone, int point, Date reg_date, String user_status, String profile_image, Date mod_date,
			String sns_id, String sns_type, Date sns_connect_date) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.nickname = nickname;
		this.username = username;
		this.email = email;
		this.address = address;
		this.cellphone = cellphone;
		this.point = point;
		this.reg_date = reg_date;
		this.user_status = user_status;
		this.profile_image = profile_image;
		this.mod_date = mod_date;
		this.sns_id = sns_id;
		this.sns_type = sns_type;
		this.sns_connect_date = sns_connect_date;
	}
	
	// 임희열 : 테스트 데이터 추가용 필드 생성자 (답답해서 하나 만들었다..)
	public UserVo(String userid, String userpw, String nickname, String username, String email) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.nickname = nickname;
		this.username = username;
		this.email = email;
	}
	
	// 간편로그인 추가용 필드 생성자
	public UserVo(String nickname, String username, String cellphone, String profile_image, String sns_id,
			String sns_type) {
		super();
		this.nickname = nickname;
		this.username = username;
		this.cellphone = cellphone;
		this.profile_image = profile_image;
		this.sns_id = sns_id;
		this.sns_type = sns_type;
	}	
	
	// Getters & Setters (Accessor)
	
	public String getUserno() {
		return userno;
	}

	public void setUserno(String userno) {
		this.userno = userno;
	}
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

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getUser_status() {
		return user_status;
	}

	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}

	public String getProfile_image() {
		return profile_image;
	}

	public void setProfile_image(String profile_image) {
		this.profile_image = profile_image;
	}

	public Date getMod_date() {
		return mod_date;
	}

	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}

	public String getSns_id() {
		return sns_id;
	}

	public void setSns_id(String sns_id) {
		this.sns_id = sns_id;
	}

	public String getSns_type() {
		return sns_type;
	}

	public void setSns_type(String sns_type) {
		this.sns_type = sns_type;
	}

	public Date getSns_connect_date() {
		return sns_connect_date;
	}

	public void setSns_connect_date(Date sns_connect_date) {
		this.sns_connect_date = sns_connect_date;
	}

	// toString()
	@Override
	public String toString() {
		return "UserVo [userid=" + userid + ", userpw=" + userpw + ", nickname=" + nickname + ", username=" + username
				+ ", email=" + email + ", address=" + address + ", cellphone=" + cellphone + ", point=" + point
				+ ", reg_date=" + reg_date + ", user_status=" + user_status + ", profile_image=" + profile_image
				+ ", mod_date=" + mod_date + ", sns_id=" + sns_id + ", sns_type=" + sns_type + ", sns_connect_date="
				+ sns_connect_date + "]";
	}

}
