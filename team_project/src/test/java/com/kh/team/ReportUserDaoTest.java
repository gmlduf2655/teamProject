
package com.kh.team;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.ReportUserDao;
import com.kh.team.dao.UserDao;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReportUserVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class ReportUserDaoTest {
	@Autowired
	ReportUserDao reportUserDao;
	
	// 유저 신고 내역 추가 테스트
	@Test
	public void testInsertReportUser() {
		ReportUserVo reportUserVo = new ReportUserVo(0, "user01", "gmlduf2655", "이사람이..", "저에게 옷걸이를 던졌어요 ㅠㅠ", null, null, null);
		boolean result = reportUserDao.insertReportUser(reportUserVo) ;
		System.out.println("ReportUserDaoTest, testInsertReportUser, result : " + result);
	}
	
	// 유저 신고 내역 조회 테스트
	@Test
	public void testSelectReportUserList() {
		PagingDto pagingDto = new PagingDto();
		int count = reportUserDao.getCountReportUser(pagingDto);
		System.out.println("ReportUserDaoTest, testSelectReportUserList, count : " + count);
		pagingDto.setCount(count);
		pagingDto.setPage(1);
		System.out.println(pagingDto);
		List<ReportUserVo> reportUserList = reportUserDao.selectReportUserList(pagingDto);
		for(ReportUserVo reportUserVo : reportUserList) {
			System.out.println("ReportUserDaoTest, testSelectReportUserList, reportUserVo : " + reportUserVo);
		}
	}
	
	// 유저 신고 내용 읽기 테스트
	@Test
	public void testReadReport() {
		ReportUserVo reportUserVo = reportUserDao.readReport(1);
		System.out.println("ReportUserDaoTest, testReadReport, reportUserVo : " + reportUserVo);
	}
	
	// 유저 신고 접수 날짜 변경 테스트
	@Test
	public void testUpdateReportAcceptDate() {
		boolean result = reportUserDao.updateReportAcceptDate(1);
		System.out.println("ReportUserDaoTest, testUpdateReportAcceptDate, result : " + result);
	}
	
	// 유저 신고 해결여부 수정 테스트
	@Test
	public void testUpdateReportResolved() {
		boolean result = reportUserDao.updateReportResolved(1);
		System.out.println("ReportUserDaoTest, testUpdateReportResolved, result : " + result);
	}
	
	// 유저 신고 해결여부 다중 수정 테스트
	@Test
	public void testUpdateMultiReportResolve() {
		List<Integer> list = new ArrayList<Integer>();
		list.add(3);
		boolean result = reportUserDao.updateMultiReportResolve(list);
		System.out.println("ReportUserDaoTest, testUpdateMultiReportResolve, result : " + result);
	}
}