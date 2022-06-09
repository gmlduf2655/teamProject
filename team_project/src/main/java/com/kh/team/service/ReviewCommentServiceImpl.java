package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.ReviewCommentDao;
import com.kh.team.vo.ReviewCommentVo;

@Service
public class ReviewCommentServiceImpl implements ReviewCommentService {
	
	@Autowired
	private ReviewCommentDao commentDao;

	@Override
	public boolean insertComment(ReviewCommentVo reviewCommentVo) {
		return commentDao.insertComment(reviewCommentVo);
	}

	@Override
	public List<ReviewCommentVo> commentList(int review_no) {
		return commentDao.commentList(review_no);
	}

	@Override
	public boolean updateComment(ReviewCommentVo reviewCommentVo) {
		return commentDao.updateComment(reviewCommentVo);
	}

	@Override
	public boolean deleteComment(int comment_no) {
		return commentDao.deleteComment(comment_no);
	}

}
