package com.kh.team;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.MovieDBDao;
import com.kh.team.vo.MovieVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestMovieDb {

	@Autowired
	private MovieDBDao movieDbDao;
	
	@Test
	public void testdbSearchMovie() {
		List<MovieVo> movieVo = movieDbDao.dbSearchMovie("movie_name", "닥터");
		System.out.println("movieVo" + movieVo);
	}
	
	
}
