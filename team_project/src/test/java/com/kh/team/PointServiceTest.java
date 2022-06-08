
package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.PointDao;
import com.kh.team.dao.UserDao;
import com.kh.team.service.PointService;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class PointServiceTest {
	@Autowired
	PointService pointService;
	
	// 포인트 내역 추가 테스트
	@Test
	public void testAddPoint() {
		PointVo pointVo = new PointVo(0, 10, 1, null, 1001, null, null);
		boolean result = pointService.addPoint(pointVo, 1);
		System.out.println("PointServiceTest, testAddPoint, result : " + result);
	}
	
	// 포인트 코드 추가 테스트
	@Test
	public void testAddPointCode() {
		PointVo pointVo = new PointVo(0, 10, 1, null, 1001, "테스트포인트", null);
		boolean result =  pointService.addPointCode(pointVo);
		System.out.println("PointServiceTest, testAddPointCode, result : " + result);
	}
	
	// 포인트 목록 조회 테스트
	@Test
	public void testGetPointList() {
		List<PointVo> pointList = pointService.getPointList();
		for(PointVo pointVo : pointList) {
			System.out.println("PointServiceTest, testGetPointList, pointVo : " + pointVo);
		}
	}
	
	// 아이디로 포인트 목록 조회 테스트
	@Test
	public void testGetPointListByUserno() {
		List<PointVo> pointList = pointService.getPointListByUserno(1);
		for(PointVo pointVo : pointList) {
			System.out.println("PointServiceTest, testGetPointListByUserno, pointVo : " + pointVo);
		}		
	}
	
	// 포인트 코드로 포인트 목록 조회 테스트
	@Test
	public void testGetPointListByPointCode() {
		List<PointVo> pointList = pointService.getPointListByPointCode(1001);
		for(PointVo pointVo : pointList) {
			System.out.println("PointServiceTest, testGetPointListByPointCode, pointVo : " + pointVo);
		}		
	}
	
	// 포인트 내역 삭제 테스트
	@Test
	public void testDeletePoint() {
		boolean result = pointService.deletePoint(10, 1);
		System.out.println("PointServiceTest, testDeletePoint, result : " + result);
	}
	
	// 포인트코드 내역 삭제 테스트
	@Test
	public void testDeletePointCode() {
		boolean result = pointService.deletePointCode(1001);
		System.out.println("PointServiceTest, testDeletePointCode, result : " + result);		
	}
}