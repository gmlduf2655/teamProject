package com.kh.team;

import java.sql.Date;

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
		
		CinemaVo cinemaVo;

		String cinema_name = "영화관 제목";
		String cinema_address = "영화관 주소";
		int cinema_seat_count = 0;
		String cinema_status = null;
		Date cinema_begin_date = null;
		Date cinema_finish_date = null;
		
		boolean result = false;
		
		for (int i = 1; i <= 100; i++) {
			cinemaVo = new CinemaVo(cinema_name + i, cinema_address + i, cinema_seat_count, cinema_status, cinema_begin_date, cinema_finish_date);
			result = cinemaDao.insertCinema(cinemaVo);
		}
		
		System.out.println("insertCinema result : " + result);
		
		
	}
}
