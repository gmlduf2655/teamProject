package com.kh.team.service;

public interface MailService {
	// 메일 보내기
	public void sendMail(String to, String subject, String body);
}
