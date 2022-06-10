package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieVo;

@Repository
public class MovieDBDaoImpl implements MovieDBDao {
	private final String NAMESPACE = "com.kh.team.mappers.movieDB.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MovieVo> movieList() {
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieList");
		return list;
	}

	@Override
	public boolean insertMovie(MovieVo movieVo) {
		int count = sqlSession.insert(NAMESPACE + "insertMovie", movieVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateMovie(MovieVo movieVo) {
		int count = sqlSession.update(NAMESPACE + "updateMovie", movieVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean existMovie(String movie_code) {
		int count = sqlSession.selectOne(NAMESPACE + "existMovie", movie_code);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteMovie(String movie_code) {
		int count = sqlSession.delete(NAMESPACE + "deleteMovie", movie_code); 
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<MovieVo> dbSearchMovie(String sType, String sKeyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("sType", sType);
		map.put("sKeyword", sKeyword);
		System.out.println("dbSearchMovie , map" + map);
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "dbSearch", map);
		System.out.println("dbSearchMovie , movieVo" + list);
		return list;
	}


}
