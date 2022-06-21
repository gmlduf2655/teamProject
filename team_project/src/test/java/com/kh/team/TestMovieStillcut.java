package com.kh.team;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.MovieStillCutDao;
import com.kh.team.vo.MovieStillCutVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestMovieStillcut {

	@Autowired
	private MovieStillCutDao StillCutDao;
	
	@Test
	public void testinsertstillcut() {
		MovieStillCutVo stillCutVo = new MovieStillCutVo("20204548", "범죄도시 스틸컷3");
		boolean result = StillCutDao.insertMovie(stillCutVo);
		System.out.println("testinsertstillcut  :" + result);
	}
	
	@Test
	public void testupdatestillcut() {
		MovieStillCutVo stillCutVo = new MovieStillCutVo(3,"20204548", "범죄도시 스틸컷3-수정");
		boolean result = StillCutDao.updateMovie(stillCutVo);
		System.out.println("testupdatestillcut  :" + result);
	}
	
	@Test
	public void testdeletestillcut() {
		int sno = 3;
		boolean result = StillCutDao.deleteMovie(sno);
		System.out.println("testdeletestillcut  :" + result);
	}
	
	@Test
	public void testdeletestillcuthole() {
		String movie_code = "20204548";
		boolean result = StillCutDao.deleteMovieHole(movie_code);
		System.out.println("testdeletestillcut  :" + result);
	}
	
	@Test
	public void testListstillcut() {
		String movie_code = "20204548";
		List<MovieStillCutVo> stillcutlist = StillCutDao.movieStillCutList(movie_code);
		System.out.println("testListstillcut  :" + stillcutlist);
	}
}
