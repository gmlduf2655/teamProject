package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MovieDao;
import com.kh.team.vo.MovieVo;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	private MovieDao movieDao;
	
	@Override
	public List<MovieVo> movieList() {
		List<MovieVo> list = movieDao.movieList();
		return list;
	}

	@Override
	public List<MovieVo> movieListIng() {
		List<MovieVo> list = movieDao.movieListIng();
		return list;
	}

	@Override
	public List<MovieVo> boxoffice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MovieVo movieInfoByMovieCode(String movie_code) {
		MovieVo movieVo = movieDao.movieInfoByMovieCode(movie_code);
		return movieVo;
	}

	@Override
	public List<MovieVo> movieListSoon() {
		List<MovieVo> list = movieDao.movieListSoon();
		return list;
	}

	@Override
	public int movieInfoByMovieCodeExist(String movie_code) {
		int count = movieDao.movieInfoByMovieCodeExist(movie_code);
		return count;
	}
	
}
