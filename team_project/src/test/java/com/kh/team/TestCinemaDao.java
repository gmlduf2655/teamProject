package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.CinemaDao;
import com.kh.team.vo.CinemaVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestCinemaDao {
	
	@Autowired
	private CinemaDao cinemaDao;
	
	// 영화관 생성
	@Test 
	public void insertCinemaTest() {
		
		String cinema_name		= "CGV 울산 진장동";
		String cinema_address	= "울산광역시 북구 진장동";
		String cinema_status	= "0";
		
		CinemaVo cinemaVo = new CinemaVo(cinema_name, cinema_address, cinema_status);
		
		boolean result = cinemaDao.insertCinema(cinemaVo);
		System.out.println("TestCinemaDao, insertCinema, result : " + result);
	}
	
	// 영화관 코드 번호 얻어내기 테스트
	@Test
	public void selectCinemaCodeTest() {
		int cinema_no = 2;
		String cinema_code = cinemaDao.selectCinemaCode(cinema_no);
		System.out.println(cinema_code);
	}
	
	// 영화관 리스트 조회 (지역별, 영화별, 영화관 이름별)
	@Test
	public void selectCinemaListTest() {
		
		String search_column	= "cinema_address";
		String search_data		= "울산%남구";
		String order_column		= "cinema_no";
		String order_type		= "asc";
		
//		String search_column	= "cinema_name";
//		String search_data		= "롯대";
//		String order_column		= "cinema_no";
//		String order_type		= "asc";
		
//		String order_column		= "cinema_no";
//		String order_type		= "asc";
		
//		String search_column	= "movie_code";
//		String search_data		= "1564564";
//		String order_column		= "cinema_no";
//		String order_type		= "asc";
		
		List<CinemaVo> cinemaList = cinemaDao.selectCinemaList(search_column, search_data, order_column, order_type);
		for (CinemaVo vo : cinemaList) {
			System.out.println("cinemaList : " + vo);
		}
	}
	
	// 영화관 정보 조회
	@Test 
	public void selectCinemaTest() {
		
		int cinema_no = 1;
		
		CinemaVo cinemaVo = cinemaDao.selectCinema(cinema_no);
		System.out.println("cinemaVo : " + cinemaVo);
	}
	
	// 영화관 정보 수정
	@Test
	public void updateCinemaInfoTest() {
		
		int cinema_no			= 1;
		String cinema_name		= "CGV 울산 삼산 업스퀘어점";
		String cinema_address	= "울산광역시 남구 삼산동 업스퀘어";
		String cinema_status	= "1";
		
		boolean result = cinemaDao.updateCinemaInfo(cinema_no, cinema_name, cinema_address, cinema_status);
		System.out.println("updateCinemaInfoTest, result : " + result);
	}
	
	// 영화관 상태 변경 (오픈 : 1, 폐업 : 0, 오픈 준비중 : null)
	@Test
	public void updateCinemaStatusTest() {
		int cinema_no			= 1;
		String cinema_status	= null;
		cinemaDao.updateCinemaStatus(cinema_no, cinema_status);
	}
	
	// 등록 영화관 주소 (시 단위) 리스트 얻어내기
	@Test
	public void getCinemaAddressCityList() {
		List<String> cinemaCityAddressList = cinemaDao.selectCinemaAddressCityList();
		System.out.println(cinemaCityAddressList);
	}
}
