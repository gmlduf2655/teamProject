package com.kh.team;

import java.sql.Date;
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
public class CinemaDaoTest {

	@Autowired
	private CinemaDao cinemaDao;

	@Test
	public void cinemaDaoTest() {

		CinemaVo cinemaVo = null;
		boolean result = false;
		
		String cinema_name		= "영화관 이름";
		String cinema_address	= "영화관 주소";
		int cinema_seat_count	= 500;
		String cinema_status	= "0";
		Date cinema_begin_date	= null;
		Date cinema_finish_date	= null;
		Date chgdate			= null;
		
		for (int i = 1; i <= 100; i++) {
			cinemaVo = new CinemaVo(cinema_name, cinema_address, cinema_seat_count, cinema_status, cinema_begin_date, cinema_finish_date, chgdate);
			result = cinemaDao.insertCinema(cinemaVo);
		}

		System.out.println("insertCinema result : " + result);

	}
	
	@Test
	public void updateCinemaInfoTest() {
		CinemaVo cinemaVo = new CinemaVo(1, "CGV 울산 남구점", "울산광역시 남구", 100, "1", null, null, null, null);
		boolean result = cinemaDao.updateCinemaInfo(cinemaVo);
		System.out.println("updateCinemaInfoTest result : " + result);
	}
	
	@Test
	public void getCinemaListTest() {
		List<CinemaVo> cinemaList = cinemaDao.getCinemaList("cinema_no", "desc");
		for (CinemaVo vo : cinemaList) {
			System.out.println("CinemaList : " + vo);
		}
	}
	
	@Test
	public void getCinemaInfoTest() {
		int cinema_no = 1;
		CinemaVo cinemaVo = cinemaDao.getCinemaInfo(cinema_no);
		System.out.println("cinemaVo : " + cinemaVo);
	}
	
	@Test
	public void updateCinemaStatusTest() {
		int cinema_no			= 1;
		String cinema_status	= "0";
		boolean result = cinemaDao.updateCinemaStatus(cinema_no, cinema_status);
		System.out.println("updateCinemaStatus result : " + result);
	}
}
