package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieService {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListIng();
	public List<MovieVo> movieListSoon();
	public List<MovieVo> boxoffice();
	public MovieVo movieInfoByMovieCode(String movie_code); 
	public int movieInfoByMovieCodeExist(String movie_code);
}
