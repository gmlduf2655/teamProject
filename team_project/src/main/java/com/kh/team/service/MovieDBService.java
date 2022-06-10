package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieDBService {
	public List<MovieVo> movieList();
	public boolean insertMovie(MovieVo movieVo);
	public boolean updateMovie(MovieVo movieVo);
	public boolean deleteMovie(String movie_code);
	public List<MovieVo> dbSearchMovie(String sType, String sKeyword);
}
