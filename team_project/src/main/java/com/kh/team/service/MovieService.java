package com.kh.team.service;

import java.util.List;
import java.util.Map;

import com.kh.team.vo.MovieVo;

public interface MovieService {
	public List<MovieVo> movieList();
	public List<MovieVo> movieListIng();
	public List<MovieVo> movieListSoon();
	public List<MovieVo> boxoffice();
	public MovieVo movieInfoByMovieCode(String movie_code); 
	public int movieInfoByMovieCodeExist(String movie_code);
	// 임희열 : 전체 영화 수
	public int getCountTotalMovie();
	// 임희열 : 장르별 영화 수
	public List<Map<String,Object>> getCountMovieGroupByGenre();
}
