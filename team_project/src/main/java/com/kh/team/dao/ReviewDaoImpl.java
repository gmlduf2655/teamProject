package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;

@Repository
public class ReviewDaoImpl implements ReviewDao {
	private final String NAMESPACE = "com.kh.team.mappers.review.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReviewVo> list(ReviewPagingDto pagingDto) {
		List<ReviewVo> reviewList = sqlSession.selectList(NAMESPACE + "list", pagingDto);
		return reviewList;
	}

	@Override
	public boolean insert(ReviewVo reviewVo) {
		int count = sqlSession.insert(NAMESPACE + "insert", reviewVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean modify(ReviewVo reviewVo) {
		int count = sqlSession.update(NAMESPACE + "modify", reviewVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int review_no) {
		int count = sqlSession.delete(NAMESPACE + "delete", review_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public ReviewVo readContent(int review_no) {
		ReviewVo reviewVo = sqlSession.selectOne(NAMESPACE + "readContent", review_no);
		return reviewVo;
	}

	@Override
	public void viewConuntUpdate(int review_no) {
		sqlSession.update(NAMESPACE + "viewConuntUpdate", review_no);
		
	}

	@Override
	public int getCount(ReviewPagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCount", pagingDto);
		return count;
	}

	@Override
	public boolean adminDelete(ReviewVo reviewVo) {
		int count = sqlSession.update(NAMESPACE + "adminDelete", reviewVo);
		if (count > 0) {
			return true;
		}
		return false;
	}
	

	@Override
	public List<ReviewVo> myReviewList(int userno, PagingDto pagingDto) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("userno", userno);
		parameter.put("pagingDto", pagingDto);
		List<ReviewVo> myReviewList = sqlSession.selectList(NAMESPACE + "myReviewList", parameter);
		return myReviewList;
	}

}
