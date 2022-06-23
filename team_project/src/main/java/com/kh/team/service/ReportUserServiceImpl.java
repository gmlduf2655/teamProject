package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.ReportUserDao;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReportUserVo;

@Service
public class ReportUserServiceImpl implements ReportUserService {

	@Autowired
	ReportUserDao reportUserDao;
	
	// 유저 신고 내역 추가
	@Override
	public boolean addReportUser(ReportUserVo reportUserVo) {
		boolean result = reportUserDao.insertReportUser(reportUserVo);
		return result;
	}

	// 유저  신고 내역 조회
	@Override
	public List<ReportUserVo> getReportUserList(PagingDto pagingDto) {
		List<ReportUserVo> reportUserList = reportUserDao.selectReportUserList(pagingDto);
		return reportUserList;
	}

	// 유저 신고 수 조회
	@Override
	public int getCountReportUser(PagingDto pagingDto) {
		int count = reportUserDao.getCountReportUser(pagingDto);
		return count;
	}
	
	// 유저 신고 내용 읽기
	@Override
	public ReportUserVo readReport(int reportno) {
		ReportUserVo reportUserVo = reportUserDao.readReport(reportno);
		return reportUserVo;
	}

	// 유저  신고 접수 날짜 변경
	@Override
	public boolean modifyReportAcceptDate(int reportno) {
		boolean result = reportUserDao.updateReportAcceptDate(reportno);
		return result;
	}

	// 유저 신고 해결여부 수정 
	@Override
	public boolean modifyReportResolved(int reportno) {
		boolean result = reportUserDao.updateReportResolved(reportno);
		return result;
	}

}
