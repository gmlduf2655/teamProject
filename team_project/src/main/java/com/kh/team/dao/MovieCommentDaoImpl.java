package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieCommentVo;

@Repository
public class MovieCommentDaoImpl implements MovieCommentDao {
	private final String NAMESPACE = "com.kh.team.mappers.moviecomment.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean commentInsert(MovieCommentVo commentVo) {
		int count = sqlSession.insert(NAMESPACE + "commentInsert", commentVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<MovieCommentVo> commentList(String movie_code) {
		List<MovieCommentVo> movieCommentList = sqlSession.selectList(NAMESPACE + "commentList",movie_code);
		return movieCommentList;
	}

	@Override
	public boolean commentUpdate(MovieCommentVo commentVo) {
		int count = sqlSession.update(NAMESPACE + "commentUpdate", commentVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean commentDelete(int cno) {
		int count = sqlSession.delete(NAMESPACE + "commentDelete", cno);
		if(count > 0) {
			return true;
		}
		return false;
	}

}