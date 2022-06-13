package com.kh.team.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieLikeVo;

@Repository
public class MovieLikeDaoImpl implements MovieLikeDao {

	private final String namespace = "com.kh.team.mappers.movieLike.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean insertLike(MovieLikeVo movieLikeVo ) {
			
		int count = sqlSession.insert(namespace + "insertLike", movieLikeVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean isLike(int movie_no, String userid) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("movie_no", movie_no);
		parameter.put("userid", userid);
		int count = sqlSession.selectOne(namespace + "isLike", parameter);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public int countLike(int movie_no) {
		int count = sqlSession.selectOne(namespace + "countLike", movie_no);
		return count;
	}

	@Override
	public boolean deleteLike(int movie_no, String userid) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("movie_no", movie_no);
		parameter.put("userid", userid);
		int count = sqlSession.delete(namespace + "deleteLike", parameter);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
