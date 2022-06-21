package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieStillCutVo;
import com.kh.team.vo.MovieVo;

public interface MovieStillcutService {
	public List<MovieStillCutVo> movieStillCutList(String movie_code);
	public boolean insertMovie(MovieStillCutVo stillCutVo);
	public boolean updateMovie(MovieStillCutVo stillCutVo);
	public boolean deleteMovie(int sno);
	public int searchbymoviecodeforstill(String still_cut_name);
}
