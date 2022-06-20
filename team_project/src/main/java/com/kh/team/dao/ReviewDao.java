package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.ReviewPagingDto;
import com.kh.team.vo.ReviewVo;

public interface ReviewDao {
	
	public List<ReviewVo> list(ReviewPagingDto pagingDto); //게시글 리스트
	public boolean insert(ReviewVo reviewVo); //게시글 작성
	public boolean modify(ReviewVo reviewVo); //게시글 수정
	public boolean delete(int review_no); //게시글 삭제
	public ReviewVo readContent(int review_no); // 게시글 읽기
	public void viewConuntUpdate(int review_no); // 조회수 증가
	public int getCount(ReviewPagingDto pagingDto); //게시글 갯수
	public boolean adminDelete(ReviewVo reviewVo); // 관리자 게시물 삭제(수정)
	public List<ReviewVo> myReviewList(int userno, ReviewPagingDto pagingDto); // 내가 쓴 리뷰만 리스트
}
