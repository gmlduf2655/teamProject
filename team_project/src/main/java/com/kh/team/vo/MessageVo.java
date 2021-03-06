package com.kh.team.vo;

import java.sql.Date;
import java.util.List;

public class MessageVo {
	private int messageno; // 메세지 번호
	private String sender; // 보내는 이
	private String receiver; // 받는 이
	private Date message_date; // 메세지 보낸 날짜
	private List<String> message_files; // 메세지 첨부파일
	private int groupno; // 메세지 그룹번호
	private int re_seq; // 메세지 그룹순서
	private int re_level; // 메세지 그룹레벨
	private String message_title; // 메세지 제목
	private String message_content; // 메세지 내용
	private Date read_date; // 메세지 읽은 날짜
	private String sender_delete; // 보내는 이의 메세지 삭제 유무
	private String receiver_delete; // 받는 이의 메세지 삭제 유무
	
	// 기본생성자
	public MessageVo() {
		super();
	}

	// 필드생성자
	public MessageVo(int messageno, String sender, String receiver, Date message_date, List<String> message_files, int groupno,
			int re_seq, int re_level, String message_title, String message_content) {
		super();
		this.messageno = messageno;
		this.sender = sender;
		this.receiver = receiver;
		this.message_date = message_date;
		this.message_files = message_files;
		this.groupno = groupno;
		this.re_seq = re_seq;
		this.re_level = re_level;
		this.message_title = message_title;
		this.message_content = message_content;
	}

	// Getter & Setter (Accessor)
	public int getMessageno() {
		return messageno;
	}

	public void setMessageno(int messageno) {
		this.messageno = messageno;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public Date getMessage_date() {
		return message_date;
	}

	public void setMessage_date(Date message_date) {
		this.message_date = message_date;
	}

	public List<String> getMessage_files() {
		return message_files;
	}

	public void setMessage_files(List<String> message_files) {
		this.message_files = message_files;
	}

	public int getGroupno() {
		return groupno;
	}

	public void setGroupno(int groupno) {
		this.groupno = groupno;
	}

	public int getRe_seq() {
		return re_seq;
	}

	public void setRe_seq(int re_seq) {
		this.re_seq = re_seq;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}

	public String getMessage_title() {
		return message_title;
	}

	public void setMessage_title(String message_title) {
		this.message_title = message_title;
	}

	public String getMessage_content() {
		return message_content;
	}

	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}

	public Date getRead_date() {
		return read_date;
	}

	public void setRead_date(Date read_date) {
		this.read_date = read_date;
	}

	public String getSender_delete() {
		return sender_delete;
	}

	public void setSender_delete(String sender_delete) {
		this.sender_delete = sender_delete;
	}

	public String getReceiver_delete() {
		return receiver_delete;
	}

	public void setReceiver_delete(String receiver_delete) {
		this.receiver_delete = receiver_delete;
	}

	@Override
	public String toString() {
		return "MessageVo [messageno=" + messageno + ", sender=" + sender + ", receiver=" + receiver + ", message_date="
				+ message_date + ", message_files=" + message_files + ", groupno=" + groupno + ", re_seq=" + re_seq
				+ ", re_level=" + re_level + ", message_title=" + message_title + ", message_content=" + message_content
				+ ", read_date=" + read_date + ", sender_delete=" + sender_delete + ", receiver_delete="
				+ receiver_delete + "]";
	}
	
}
