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
	public String selectMovie() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MovieVo> boxoffice() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
