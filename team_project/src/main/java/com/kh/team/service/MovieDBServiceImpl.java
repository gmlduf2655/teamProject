package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.dao.MovieDBDao;
import com.kh.team.dao.MovieDao;
import com.kh.team.vo.MovieVo;

@Service
public class MovieDBServiceImpl implements MovieDBService {

	@Autowired
	private MovieDBDao movieDBDao;
	
	@Override
	public List<MovieVo> movieList() {
		List<MovieVo> list = movieDBDao.movieList();
		return list;
	}



	@Override
	@Transactional
	public boolean insertMovie(MovieVo movieVo) {
		boolean result = false;
		boolean result1 = movieDBDao.existMovie(movieVo.getMovie_code());
		if(result1 == false) {
			result = movieDBDao.insertMovie(movieVo);
		}
		return result;
	}

	@Override
	@Transactional
	public boolean updateMovie(MovieVo movieVo) {
		boolean result = false;
		boolean result1 = movieDBDao.existMovie(movieVo.getMovie_code());
		System.out.println("existMovie, result1 : " + result1);
		if(result1 == true) {
			result = movieDBDao.updateMovie(movieVo);
		}
		
		System.out.println("updateMovie, result : " + result);
		return result;
	}

	@Override
	public boolean deleteMovie(String movie_code) {
		boolean result = movieDBDao.deleteMovie(movie_code);
		return result;
	}



	@Override
	public List<MovieVo> dbSearchMovie(String sType, String sKeyword) {
		List<MovieVo> list = movieDBDao.dbSearchMovie(sType, sKeyword);
		System.out.println("MovieDBServiceImpl " + list);
		return list;
		
	}

	

	
}
