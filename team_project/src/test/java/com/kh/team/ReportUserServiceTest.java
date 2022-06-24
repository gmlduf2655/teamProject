
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
import com.kh.team.service.ReportUserService;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReportUserVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class ReportUserServiceTest {
	@Autowired
	ReportUserService reportUserService;
	
	// 유저 신고 내역 추가 테스트
	@Test
	public void testAddReportUser() {
		ReportUserVo reportUserVo = new ReportUserVo(0, "gmlduf2655", "user01", "저 사람도 나한테 옷걸이 던짐 ㅡㅡ", null, null, null, null);
		boolean result = reportUserService.addReportUser(reportUserVo);
		System.out.println("ReportUserServiceTest, testAddReportUser, result : " + result);
	}
	
	// 유저 신고 내역 조회 테스트
	@Test
	public void testGetReportUserList() {
		PagingDto pagingDto = new PagingDto();
		int count = reportUserService.getCountReportUser(pagingDto);
		System.out.println("ReportUserServiceTest, testGetReportUserList, count : " + count);
		pagingDto.setCount(count);
		pagingDto.setPage(1);
		System.out.println(pagingDto);
		List<ReportUserVo> reportUserList = reportUserService.getReportUserList(pagingDto);
		for(ReportUserVo reportUserVo : reportUserList) {
			System.out.println("ReportUserServiceTest, testGetReportUserList, reportUserVo : " + reportUserVo);
		}
	}
	
	// 유저 신고 내용 읽기 테스트
	@Test
	public void testReadReport() {
		ReportUserVo reportUserVo = reportUserService.readReport(1);
		System.out.println("ReportUserServiceTest, testReadReport, reportUserVo : " + reportUserVo);
	}
	
	// 유저 신고 접수 날짜 변경 테스트
	@Test
	public void testModifyReportAcceptDate() {
		boolean result = reportUserService.modifyReportAcceptDate(2);
		System.out.println("ReportUserServiceTest, testModifyReportAcceptDate, result : " + result);
	}
	
	// 유저 신고 해결여부 수정 테스트
	@Test
	public void testModifyReportResolved() {
		boolean result = reportUserService.modifyReportResolved(2);
		System.out.println("ReportUserServiceTest, testModifyReportResolved, result : " + result);
	}
	
	// 유저 신고 해결여부 다중 수정 테스트
	@Test
	public void testUpdateMultiReportResolve() {
		List<Integer> list = new ArrayList<Integer>();
		list.add(3);		
		boolean result = reportUserService.modifyMultiReportResolve(list);
		System.out.println("ReportUserServiceTest, testUpdateMultiReportResolve, result : " + result);
		
	}	
}