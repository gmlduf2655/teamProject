package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieStillCutVo;

@Repository
public class MovieStillCutDaoImpl implements MovieStillCutDao {
	private final String NAMESPACE = "com.kh.team.mappers.movieStillcut.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MovieStillCutVo> movieStillCutList(String movie_code) {
		List<MovieStillCutVo> stillcutlist = sqlSession.selectList(NAMESPACE+"movieStillCutList", movie_code);
		return stillcutlist;
	}

	@Override
	public boolean insertMovie(MovieStillCutVo stillCutVo) {
		int count = sqlSession.insert(NAMESPACE+"insertMovieStillCut", stillCutVo);
		if(count > 0 ) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateMovie(MovieStillCutVo stillCutVo) {
		int count = sqlSession.update(NAMESPACE+"updateMovieStillCut", stillCutVo);
		if(count > 0 ) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteMovie(String movie_code, int sno) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("movie_code", movie_code);
		parameter.put("sno", sno);
		int count = sqlSession.delete(NAMESPACE+"deleteMovieStillCut", parameter);
		if(count > 0 ) {
			return true;
		}
		return false;
	}

}
