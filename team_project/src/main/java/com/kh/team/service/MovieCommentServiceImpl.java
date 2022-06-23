package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MovieCommentDao;
import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

@Service
public class MovieCommentServiceImpl implements MovieCommentService {

	@Autowired
	private MovieCommentDao commentDao;
	
	@Override
	public boolean commentInsert(MovieCommentVo commentVo) {
		boolean result = commentDao.commentInsert(commentVo);
		return result;
	}

	@Override
	public List<MovieCommentVo> commentList(String movie_code) {
		List<MovieCommentVo> movieCommentList = commentDao.commentList(movie_code);
		return movieCommentList;
	}

	@Override
	public boolean commentUpdate(MovieCommentVo commentVo) {
		boolean result = commentDao.commentUpdate(commentVo);
		return result;
	}

	@Override
	public boolean commentDelete(int cno) {
		boolean result = commentDao.commentDelete(cno);
		return result;
	}

	@Override
	public boolean commentAdminUpdate(int cno, String admin_delete) {
		boolean result = false;
		if(admin_delete == "N" || admin_delete.equals("N")) {
			admin_delete = "Y";
			result = commentDao.commentAdminUpdate(cno, admin_delete);
		} else {
			admin_delete = "N";
			result = commentDao.commentAdminUpdate(cno, admin_delete);
		}
		return result;
	}

	@Override
	public List<MovieCommentVo> commentListHole(PagingDto commentpagingDto) {
		List<MovieCommentVo> commentlistHole = commentDao.commentListHole(commentpagingDto);
		return commentlistHole;
	}

	@Override
	public int getCountmoviecomment(PagingDto commentpagingDto) {
		int count = commentDao.getCountmoviecomment(commentpagingDto);
		return count;
	}

	@Override
	public List<MovieCommentVo> commentListsection(String movie_code, int startRow, int endRow) {
		List<MovieCommentVo> movieCommentList = commentDao.commentListsection(movie_code, startRow, endRow);
		return movieCommentList;
	}

}
