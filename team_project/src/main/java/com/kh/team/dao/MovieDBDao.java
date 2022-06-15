package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieDBDao {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListopen();
	public List<MovieVo> movieListend();
	public boolean insertMovie(MovieVo movieVo);
	public boolean updateMovie(MovieVo movieVo);
	public boolean existMovie(String movie_code);
	public boolean deleteMovie(String movie_code);
	public List<MovieVo> dbSearchMovie(String sType, String sKeyword);
	public MovieVo dbsearchBymoviecode(String movie_code);
}
