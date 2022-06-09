package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MovieCommentDao;
import com.kh.team.vo.MovieCommentVo;

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

}