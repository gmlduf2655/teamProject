package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.ReviewLikeDao;
import com.kh.team.vo.ReviewLikeVo;

@Service
public class ReviewLikeServiceImpl implements ReviewLikeService {
	
	@Autowired
	private ReviewLikeDao reviewLikeDao;

	@Override
	public boolean createLike(ReviewLikeVo reviewLikeVo) {
		boolean result = reviewLikeDao.createLike(reviewLikeVo);
		return result;
	}

	@Override
	public boolean isLike(int review_no, String userid) {
		boolean result = reviewLikeDao.isLike(review_no, userid);
		return result;
	}

	@Override
	public boolean deleteLike(int review_no, String userid) {
		boolean result = reviewLikeDao.deleteLike(review_no, userid);
		return result;
	}

	@Override
	public int countLike(int review_no) {
		int count = reviewLikeDao.countLike(review_no);
		return count;
	}

}
