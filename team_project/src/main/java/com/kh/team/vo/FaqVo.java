package com.kh.team.vo;

import java.sql.Date;

public class FaqVo {
	private int faqno; // FAQ 번호
	private String question; // 질문
	private String answer; // 대답
	private Date reg_date; // 등록일
	private Date mod_date; // 변경일
	private String faq_status; // FAQ 삭제 유무
	
	// 기본 생성자
	public FaqVo() {
		super();
	}

	// 필드 생성자
	public FaqVo(int faqno, String question, String answer, Date reg_date, Date mod_date, String faq_status) {
		super();
		this.faqno = faqno;
		this.question = question;
		this.answer = answer;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
		this.faq_status = faq_status;
	}

	// Getter & Setter (Accessor)
	public int getFaqno() {
		return faqno;
	}

	public void setFaqno(int faqno) {
		this.faqno = faqno;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getMod_date() {
		return mod_date;
	}

	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}

	public String getFaq_status() {
		return faq_status;
	}

	public void setFaq_status(String faq_status) {
		this.faq_status = faq_status;
	}

	// toString()
	@Override
	public String toString() {
		return "FaqVo [faqno=" + faqno + ", question=" + question + ", answer=" + answer + ", reg_date=" + reg_date
				+ ", mod_date=" + mod_date + ", faq_status=" + faq_status + "]";
	}
	
	
}
