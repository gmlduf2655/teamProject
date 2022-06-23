package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieVo;

@Repository
public class MovieDaoImpl implements MovieDao {
	private final String NAMESPACE = "com.kh.team.mappers.movie.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MovieVo> movieList() {
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieList");
		return list;
	}

	@Override
	public List<MovieVo> movieListIng() {
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieListIng");
		return list;
	}
	
	@Override
	public MovieVo movieInfoByMovieCode(String movie_code) {
		MovieVo movieVo = sqlSession.selectOne(NAMESPACE + "movieInfoByMovieCode", movie_code);
		return movieVo;
	}

	@Override
	public List<MovieVo> movieListSoon() {
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieListSoon");
		return list;
	}

	@Override
	public int movieInfoByMovieCodeExist(String movie_code) {
		int count = sqlSession.selectOne(NAMESPACE+"movieInfoByMovieCodeExist", movie_code);
		return count;
	}

	// 임희열 : 전체 영화 수
	@Override
	public int getCountTotalMovie() {
		int count = sqlSession.selectOne(NAMESPACE + "getCountTotalMovie");
		return count;
	}

	// 임희열 : 장르별 영화 수
	@Override
	public List<Map<String, Object>> getCountMovieGroupByGenre() {
		List<Map<String, Object>> listMap = sqlSession.selectList(NAMESPACE + "getCountMovieGroupByGenre");
		return listMap;
	}

	@Override
	public List<MovieVo> movieListsetion(int startRow, int endRow) {
		Map<Object, Object> parameter = new HashMap<>();
		parameter.put("startRow", startRow);
		parameter.put("endRow", endRow);
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieListsetion", parameter);
		return list;
	}

	@Override
	public List<MovieVo> movieListIngsetion(int startRow, int endRow) {
		Map<Object, Object> parameter = new HashMap<>();
		parameter.put("startRow", startRow);
		parameter.put("endRow", endRow);
		List<MovieVo> list = sqlSession.selectList(NAMESPACE + "movieListIngsetion", parameter);
		return list;
	}
	
}
