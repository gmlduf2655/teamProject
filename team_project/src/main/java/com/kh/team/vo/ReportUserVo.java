package com.kh.team.vo;

import java.util.Date;

public class ReportUserVo {
	private int reportno; // 신고 번호
	private String reporter; // 신고자
	private String reported_user; // 신고 당한 사람
	private String report_type; // 신고 사유
	private String report_desc; // 신고 상세 내용
	private Date report_date; // 신고 날짜
	private Date report_accept_date; // 신고 접수 날짜
	private String report_resolved; // 신고 접수 여부
	
	// 기본 생성자
	public ReportUserVo() {
		super();
	}

	// 필드 생성자
	public ReportUserVo(int reportno, String reporter, String reported_user, String report_type, String report_desc,
			Date report_date, Date report_accept_date, String report_resolved) {
		super();
		this.reportno = reportno;
		this.reporter = reporter;
		this.reported_user = reported_user;
		this.report_type = report_type;
		this.report_desc = report_desc;
		this.report_date = report_date;
		this.report_accept_date = report_accept_date;
		this.report_resolved = report_resolved;
	}

	// Getter & Setter(Accessor)
	public int getReportno() {
		return reportno;
	}

	public void setReportno(int reportno) {
		this.reportno = reportno;
	}

	public String getReporter() {
		return reporter;
	}

	public void setReporter(String reporter) {
		this.reporter = reporter;
	}

	public String getReported_user() {
		return reported_user;
	}

	public void setReported_user(String reported_user) {
		this.reported_user = reported_user;
	}

	public String getReport_type() {
		return report_type;
	}

	public void setReport_type(String report_type) {
		this.report_type = report_type;
	}

	public String getReport_desc() {
		return report_desc;
	}

	public void setReport_desc(String report_desc) {
		this.report_desc = report_desc;
	}

	public Date getReport_date() {
		return report_date;
	}

	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}

	public Date getReport_accept_date() {
		return report_accept_date;
	}

	public void setReport_accept_date(Date report_accept_date) {
		this.report_accept_date = report_accept_date;
	}

	public String getReport_resolved() {
		return report_resolved;
	}

	public void setReport_resolved(String report_resolved) {
		this.report_resolved = report_resolved;
	}

	// toString()
	@Override
	public String toString() {
		return "ReportUserVo [reportno=" + reportno + ", reporter=" + reporter + ", reported_user=" + reported_user
				+ ", report_type=" + report_type + ", report_desc=" + report_desc + ", report_date=" + report_date
				+ ", report_accept_date=" + report_accept_date + ", report_resolved=" + report_resolved + "]";
	}
	
}
