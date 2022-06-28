package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.MovieCommentDao;
import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class TestMovieComment {

	@Autowired
	private MovieCommentDao movieCommentDao;
	private PagingDto pagingDto;
	
	@Test
	public void testinsertComment() {
		MovieCommentVo commentVo = new MovieCommentVo("20204548", "user01", "댓글테이블", "범죄도시 2");
		boolean result = movieCommentDao.commentInsert(commentVo);
		System.out.println("insertComment, result : " + result);
	}
	
	@Test
	public void testcommentListuser() {
		String userid = "user01";
		List<MovieCommentVo> movieCommentList = movieCommentDao.commentListuser(userid);
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
		boolean result = movieCommentDao.commentAdminUpdate(21,"N");
		System.out.println("commentAdminUpdate, result : " + result);
	}
	
	@Test
	public void testcommentListHole() {
		List<MovieCommentVo> result = movieCommentDao.commentListHole(pagingDto);
		System.out.println("testcommentListHole, result : " + result);
	} 
	@Test
	public void testcommentListsection() {
		List<MovieCommentVo> result = movieCommentDao.commentListsection("20204548", 0, 1);
		System.out.println("testcommentListHole, result : " + result);
	} 
}
