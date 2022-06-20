package com.kh.team.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.ReviewLikeVo;

@Repository
public class ReviewLikeDaoImpl implements ReviewLikeDao {
	
	private final String NAMESPACE = "com.kh.team.mappers.reviewLike.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean createLike(ReviewLikeVo reviewLikeVo) {
		int count = sqlSession.insert(NAMESPACE + "createLike", reviewLikeVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean isLike(int review_no, String userid) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("review_no", review_no);
		parameter.put("userid", userid);
		int count = sqlSession.selectOne(NAMESPACE + "isLike", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteLike(int review_no, String userid) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("review_no", review_no);
		parameter.put("userid", userid);
		int count = sqlSession.delete(NAMESPACE + "deleteLike", parameter);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public int countLike(int review_no) {
		int count = sqlSession.selectOne(NAMESPACE + "countLike", review_no);
		return count;
	}
	

}
