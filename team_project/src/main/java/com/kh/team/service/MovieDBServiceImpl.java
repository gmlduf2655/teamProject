package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.dao.MovieDBDao;
import com.kh.team.dao.MovieStillCutDao;
import com.kh.team.vo.MovieVo;

@Service
public class MovieDBServiceImpl implements MovieDBService {

	@Autowired
	private MovieDBDao movieDBDao;
	@Autowired
	private MovieStillCutDao stillcutDao;
	
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
			System.out.println("updateMovie, stillCutVo" );
			result = movieDBDao.updateMovie(movieVo);
		}
		
		System.out.println("updateMovie, result : " + result);
		return result;
	}

	@Override
	@Transactional
	public boolean deleteMovie(String movie_code, int sno) {
		stillcutDao.deleteMovie(movie_code, sno);
		boolean result = movieDBDao.deleteMovie(movie_code);
		return result;
	}



	@Override
	public List<MovieVo> dbSearchMovie(String sType, String sKeyword) {
		List<MovieVo> list = movieDBDao.dbSearchMovie(sType,sKeyword);
		/*System.out.println("MovieDBServiceImpl " + list);*/
		return list;
		
	}

	@Override
	public MovieVo dbsearchBymoviecode(String movie_code) {
		MovieVo movieVo = movieDBDao.dbsearchBymoviecode(movie_code);
		return movieVo;
	}

	@Override
	public List<MovieVo> movieList() {
		List<MovieVo> list = movieDBDao.movieList();
		return list;
	}

	@Override
	public List<MovieVo> movieListopen() {
		List<MovieVo> list = movieDBDao.movieListopen();
		return list;
	}



	@Override
	public List<MovieVo> movieListend() {
		List<MovieVo> list = movieDBDao.movieListend();
		return list;
	}

	



	

	

	
}
