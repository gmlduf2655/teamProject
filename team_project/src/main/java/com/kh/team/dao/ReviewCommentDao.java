package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.ReviewCommentVo;


public interface ReviewCommentDao {

	public boolean insertComment(ReviewCommentVo reviewCommentVo);
	public List<ReviewCommentVo> commentList(int review_no);
	public boolean updateComment(ReviewCommentVo reviewCommentVo);
	public boolean deleteComment(int comment_no);
}
