package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.ReviewCommentVo;

@Repository
public class ReviewCommentDaoImpl implements ReviewCommentDao {
	
	private final String NAMESPACE = "com.kh.team.mappers.reviewComment."; 
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean insertComment(ReviewCommentVo reviewCommentVo) {
		int count = sqlSession.insert(NAMESPACE + "insertComment", reviewCommentVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<ReviewCommentVo> commentList(int review_no) {
		List<ReviewCommentVo> commentList = sqlSession.selectList(NAMESPACE + "commentList", review_no);
		return commentList;
	}

	@Override
	public boolean updateComment(ReviewCommentVo reviewCommentVo) {
		int count = sqlSession.update(NAMESPACE  + "updateComment", reviewCommentVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteComment(int comment_no) {
		int count = sqlSession.delete(NAMESPACE + "deleteComment", comment_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

	

}
