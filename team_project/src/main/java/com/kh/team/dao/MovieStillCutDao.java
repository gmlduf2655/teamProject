package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieStillCutVo;

public interface MovieStillCutDao {
	public List<MovieStillCutVo> movieStillCutList(String movie_code);
	public boolean insertMovie(MovieStillCutVo stillCutVo);
	public boolean updateMovie(MovieStillCutVo stillCutVo);
	public boolean deleteMovie(int sno);
	public boolean deleteMovieHole(String movie_code);
	public int searchbymoviecodeforstill(String still_cut_name);
}
