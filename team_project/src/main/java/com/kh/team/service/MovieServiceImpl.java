package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	public MovieVo movieInfoByMovieCode(String movie_code) {
		MovieVo movieVo = movieDao.movieInfoByMovieCode(movie_code);
		return movieVo;
	}

	@Override
	public List<MovieVo> boxoffice() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertMovie(MovieVo movieVo) {
		boolean result = movieDao.insertMovie(movieVo);
		return result;
	}

	@Override
	@Transactional
	public boolean updateMovie(MovieVo movieVo) {
		boolean result = false;
		boolean result1 = movieDao.existMovie(movieVo.getMovie_code());
		System.out.println("existMovie, result1 : " + result1);
		if(result1 == true) {
			result = movieDao.updateMovie(movieVo);
		}
		
		System.out.println("updateMovie, result : " + result);
		return result;
	}

	@Override
	public boolean deleteMovie(String movie_code) {
		boolean result = movieDao.deleteMovie(movie_code);
		return result;
	}

	@Override
	public List<MovieVo> movieListIng() {
		List<MovieVo> list = movieDao.movieListIng();
		return list;
	}

	
}
