package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.ReviewDao;
import com.kh.team.vo.ReviewVo;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public List<ReviewVo> list() {
		List<ReviewVo> reviewList = reviewDao.list();
		return reviewList;
	}

	@Override
	public boolean insert(ReviewVo reviewVo) {
		boolean result = reviewDao.insert(reviewVo);
		return result;
	}

	@Override
	public boolean modify(ReviewVo reviewVo) {
		boolean result = reviewDao.modify(reviewVo);
		return result;
	}

	@Override
	public boolean delete(int review_no) {
		boolean result = reviewDao.delete(review_no);
		return result;
	}

	@Override
	public ReviewVo readContent(int review_no) {
		ReviewVo reviewVo = reviewDao.readContent(review_no);
		return reviewVo;
	}


}
