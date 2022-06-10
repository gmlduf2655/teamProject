package com.kh.team.dao;

import java.util.List;

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
	
}
