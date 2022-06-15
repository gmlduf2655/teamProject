package com.kh.team.dao;

import com.kh.team.vo.ReviewLikeVo;

public interface ReviewLikeDao {
	public boolean createLike(ReviewLikeVo reviewLikeVo);
	public boolean isLike(int review_no, String userid);
	public boolean deleteLike(int review_no, String userid);
	public int countLike(int review_no);
}
