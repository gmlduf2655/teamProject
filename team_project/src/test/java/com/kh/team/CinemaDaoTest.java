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
		
		CinemaVo cinemaVo = new CinemaVo("영화관이름", "영화관주소", 50, "1", null, null);
		boolean result = cinemaDao.insertCinema(cinemaVo);
		
		System.out.println("insertCinema result : " + result);
		
		
	}
}
