package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieService {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListIng();
	public MovieVo movieInfoByMovieCode(String movie_code); 
	public List<MovieVo> boxoffice();
	public boolean insertMovie(MovieVo movieVo);
	public boolean updateMovie(MovieVo movieVo);
	public boolean deleteMovie(String movie_code);
	
}
