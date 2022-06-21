package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.MovieCommentDao;
import com.kh.team.vo.MovieCommentVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestMovieComment {

	@Autowired
	private MovieCommentDao movieCommentDao;
	
	@Test
	public void testinsertComment() {
		MovieCommentVo commentVo = new MovieCommentVo("20204548", "user02", "잘되는가22");
		boolean result = movieCommentDao.commentInsert(commentVo);
		System.out.println("insertComment, result : " + result);
	}
	
	@Test
	public void testcommentList() {
		String movie_code = "20204548";
		List<MovieCommentVo> movieCommentList = movieCommentDao.commentList(movie_code);
		System.out.println("commentList, result : " + movieCommentList);
	}
	
	@Test
	public void testupdateComment() {
		MovieCommentVo commentVo = new MovieCommentVo(11,"20204548", "user01", "잘되는가 수정");
		boolean result = movieCommentDao.commentUpdate(commentVo);
		System.out.println("updateComment, result : " + result);
	}
	
	@Test
	public void testcommentDelete() {
		boolean result = movieCommentDao.commentDelete(11);
		System.out.println("updateComment, result : " + result);
	}
	
	
	@Test
	public void testcommentAdminUpdate() {
		boolean result = movieCommentDao.commentAdminUpdate(21);
		System.out.println("commentAdminUpdate, result : " + result);
	}
	
}
