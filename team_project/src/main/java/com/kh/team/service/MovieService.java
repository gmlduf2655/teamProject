package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieVo;

public interface MovieService {
	public List<MovieVo> movieList();
	public String selectMovie(); // 나중에 VO 만들어서 변경
	public List<MovieVo> boxoffice();
	public boolean insertMovie(MovieVo movieVo);
	public boolean updateMovie(MovieVo movieVo);
}
