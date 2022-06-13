package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MovieLikeDao;
import com.kh.team.vo.MovieLikeVo;

@Service
public class MovieLikeServiceImple implements MovieLikeService {
	
	@Autowired
	private MovieLikeDao movieLikeDao;
	
	@Override
	public boolean insertLike(MovieLikeVo movieLikeVo) {
		boolean result = movieLikeDao.insertLike(movieLikeVo);
		return result;
	}

	@Override
	public boolean isLike(int movie_no, String userid) {
		boolean result = movieLikeDao.isLike(movie_no, userid);
		return result;
	}

	@Override
	public int countLike(int movie_no) {
		int count = movieLikeDao.countLike(movie_no);
		return count;
	}

	@Override
	public boolean deleteLike(int movie_no, String userid) {
		boolean result = movieLikeDao.deleteLike(movie_no, userid);
		return result;
	}

}
