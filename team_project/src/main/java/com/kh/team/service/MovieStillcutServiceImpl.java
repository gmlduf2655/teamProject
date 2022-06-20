package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.MovieStillCutDao;
import com.kh.team.vo.MovieStillCutVo;

@Service
public class MovieStillcutServiceImpl implements MovieStillcutService {
	
	@Autowired
	private MovieStillCutDao stillcutDao;
	
	@Override
	public List<MovieStillCutVo> movieStillCutList(String movie_code) {
		List<MovieStillCutVo> stillcutlist = stillcutDao.movieStillCutList(movie_code);
		return stillcutlist;
	}

	@Override
	public boolean insertMovie(MovieStillCutVo stillCutVo) {
		boolean result = stillcutDao.insertMovie(stillCutVo);
		return result;
	}

	@Override
	public boolean updateMovie(MovieStillCutVo stillCutVo) {
		boolean result = stillcutDao.updateMovie(stillCutVo);
		return result;
	}

	@Override
	public boolean deleteMovie(String movie_code, int sno) {
		boolean result = stillcutDao.deleteMovie(movie_code, sno);
		return result;
	}

}
