package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieDao {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListIng();
	public boolean insertMovie(MovieVo movieVo);
	public boolean updateMovie(MovieVo movieVo);
	public boolean existMovie(String movie_code);
	public boolean deleteMovie(String movie_code);
	public MovieVo movieInfoByMovieCode(String movie_code);
}
