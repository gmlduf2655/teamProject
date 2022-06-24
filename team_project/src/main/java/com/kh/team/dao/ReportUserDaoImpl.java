package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReportUserVo;

@Repository
public class ReportUserDaoImpl implements ReportUserDao {
	private final String NAMESPACE = "com.kh.team.mappers.reportUser.";
	
	@Autowired
	SqlSession sqlSession;
	
	// 유저 신고 내역 추가
	@Override
	public boolean insertReportUser(ReportUserVo reportUserVo) {
		int count = sqlSession.insert(NAMESPACE + "insertReportUser", reportUserVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 유저  신고 내역 조회
	@Override
	public List<ReportUserVo> selectReportUserList(PagingDto pagingDto) {
		List<ReportUserVo> reportUserList = sqlSession.selectList(NAMESPACE + "selectReportUserList", pagingDto);
		return reportUserList;
	}
	
	// 유저 신고 수 조회
	@Override
	public int getCountReportUser(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountReportUser", pagingDto);
		return count;
	}

	// 유저 신고 내용 읽기
	@Override
	public ReportUserVo readReport(int reportno) {
		ReportUserVo reportUserVo = sqlSession.selectOne(NAMESPACE + "readReport", reportno);
		return reportUserVo;
	}

	// 유저  신고 접수 날짜 변경
	@Override
	public boolean updateReportAcceptDate(int reportno) {
		int count = sqlSession.update(NAMESPACE + "updateReportAcceptDate", reportno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 유저 신고 해결여부 수정 
	@Override
	public boolean updateReportResolved(int reportno) {
		int count = sqlSession.update(NAMESPACE + "updateReportResolved", reportno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 유저 신고 해결여부 다중 수정
	@Override
	public boolean updateMultiReportResolve(List<Integer> list) {
		int count = sqlSession.update(NAMESPACE + "updateMultiReportResolve", list);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
