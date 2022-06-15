package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieDao {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListIng();
	public List<MovieVo> movieListSoon();
	public MovieVo movieInfoByMovieCode(String movie_code);
	public int movieInfoByMovieCodeExist(String movie_code);
}
