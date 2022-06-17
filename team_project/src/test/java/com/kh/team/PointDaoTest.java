
package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.PointDao;
import com.kh.team.dao.UserDao;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class PointDaoTest {
	@Autowired
	PointDao pointDao;
	
	// 포인트 내역추가 테스트
	@Test
	public void testInsetPoint() {
		PointVo pointVo = new PointVo(0, 10, 1, null, 1001, null, null);
		boolean result = pointDao.insertPoint(pointVo);
		System.out.println("PointDaoTest, testInsetPoint, result : " + result);
	}
	
	// 포인트 코드추가 테스트
	@Test
	public void testInsetPointCode() {
		PointVo pointVo = new PointVo(0, 10, 1, null, 1001, "테스트포인트", null);
		boolean result = pointDao.insertPointCode(pointVo);
		System.out.println("PointDaoTest, testInsetPoint, result : " + result);
	}
	
	// 포인트 목록조회 테스트
	@Test
	public void testSelectPointList() {
		List<PointVo> pointList = pointDao.selectPointList(null);
		for(PointVo pointVo : pointList) {
			System.out.println("PointDaoTest, testSelectPointList, pointVo : " + pointVo);
		}
	}
	
	// 전체 유저 포인트 내역 수 조회 테스트
	@Test
	public void testGetCountPointList() {
		int count = pointDao.getCountPointList();
		System.out.println("PointDaoTest, testGetCountPointList, count : " + count);
	}
	
	// 아이디로 포인트 목록조회 테스트
	@Test
	public void testSelectPointListByUserno() {
		PagingDto pagingDto = new PagingDto();
		pagingDto.setPage(1);
		List<PointVo> pointList = pointDao.selectPointListByUserno(1, pagingDto);
		for(PointVo pointVo : pointList) {
			System.out.println("PointDaoTest, testSelectPointListByUserno, pointVo : " + pointVo);
		}		
	}
	
	// 특정 유저 포인트 내역 수 조회
	@Test
	public void testGetCountPointListByUserno() {
		int count = pointDao.getCountPointListByUserno(1);
		System.out.println("PointDaoTest, testGetCountPointListByUserno, count : " + count);		
	}
	
	// 포인트 코드로 포인트 목록조회 테스트
	@Test
	public void testSelectPointListByPointCode() {
		List<PointVo> pointList = pointDao.selectPointListByPointCode(1001);
		for(PointVo pointVo : pointList) {
			System.out.println("PointDaoTest, testSelectPointListByPointCode, pointVo : " + pointVo);
		}		
	}
	
	// 포인트 번호로 포인트 내역조회 테스트
	@Test
	public void testSelectPointByPointno() {
		PointVo pointVo = pointDao.selectPointByPointno(4);
		System.out.println("PointDaoTest, testSelectPointByPointno, pointVo : " + pointVo);
	}
	
	// 포인트 코드 목록조회 테스트
	@Test
	public void testSelectPointCodeList() {
		List<PointVo> pointCodeList = pointDao.selectPointCodeList();
		for(PointVo pointVo : pointCodeList) {
		System.out.println("PointDaoTest, testSelectPointCodeList, pointVo : " + pointVo);
		}
	}
	
	// 포인트 내역 삭제 테스트
	@Test
	public void testDeletePoint() {
		boolean result = pointDao.deletePoint(1);
		System.out.println("PointDaoTest, testDeletePoint, result : " + result);
	}
	
	// 포인트코드 내역 삭제 테스트
	@Test
	public void testDeletePointCode() {
		boolean result = pointDao.deletePointCode(1001);
		System.out.println("PointDaoTest, testDeletePointCode, result : " + result);		
	}
}