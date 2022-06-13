package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.MovieLikeDao;
import com.kh.team.vo.MovieLikeVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestMovieLike {
	@Autowired
	private MovieLikeDao likeDao;
	
	@Test
	public void insertLikeTest() {
		MovieLikeVo movieLikeVo = new MovieLikeVo(24, +1, "user02");
		System.out.println("insertLikeTest, result" + movieLikeVo);
		boolean result = likeDao.insertLike(movieLikeVo);
		System.out.println("insertLikeTest, result" + result);
	}
	
	@Test
	public void countLikeTest() {
		int count = likeDao.countLike(24);
		System.out.println("countLikeTest, result : " + count);
	}
	
	@Test
	public void isLikeTest() {
		boolean result = likeDao.isLike(28, "user01");
		System.out.println("isLikeTest, result : " + result);
	}

	@Test
	public void deleteLikeTest() {
		boolean result = likeDao.deleteLike(24, "user01");
		System.out.println("deleteLikeTest, result : " + result);
	}
	
}
