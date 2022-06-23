package com.kh.team.dao;

import java.util.List;
import java.util.Map;

import com.kh.team.vo.MovieVo;

public interface MovieDao {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListsetion(int startRow, int endRow);
	public List<MovieVo> movieListIng();
	public List<MovieVo> movieListIngsetion(int startRow, int endRow);
	public List<MovieVo> movieListSoon();
	public MovieVo movieInfoByMovieCode(String movie_code);
	public int movieInfoByMovieCodeExist(String movie_code);
	// 임희열 : 전체 영화 수
	public int getCountTotalMovie();
	// 임희열 : 장르별 영화 수
	public List<Map<String,Object>> getCountMovieGroupByGenre();
}
