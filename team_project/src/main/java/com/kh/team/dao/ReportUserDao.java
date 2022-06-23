package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReportUserVo;

public interface ReportUserDao {
	// 유저 신고 내역 추가
	public boolean insertReportUser(ReportUserVo reportUserVo);
	// 유저  신고 내역 조회
	public List<ReportUserVo> selectReportUserList(PagingDto pagingDto);
	// 유저 신고 수 조회
	public int getCountReportUser(PagingDto pagingDto);
	// 유저 신고 내용 읽기
	public ReportUserVo readReport(int reportno);
	// 유저  신고 접수 날짜 변경
	public boolean updateReportAcceptDate(int reportno);
	// 유저 신고 해결여부 수정 
	public boolean updateReportResolved(int reportno);
}
