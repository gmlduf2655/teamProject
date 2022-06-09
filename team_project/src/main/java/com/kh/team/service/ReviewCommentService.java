package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.ReviewCommentVo;

public interface ReviewCommentService {
	
	public boolean insertComment(ReviewCommentVo reviewCommentVo);
	public List<ReviewCommentVo> commentList(int review_no);
	public boolean updateComment(ReviewCommentVo reviewCommentVo);
	public boolean deleteComment(int comment_no);

}
