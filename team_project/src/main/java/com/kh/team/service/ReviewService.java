package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.ReviewVo;

public interface ReviewService {
	
	public List<ReviewVo> list(); //게시글 리스트
	public boolean insert(ReviewVo reviewVo); //게시글 작성
	public boolean modify(ReviewVo reviewVo); //게시글 수정
	public boolean delete(int review_no); //게시글 삭제
	public ReviewVo readContent(int review_no); // 게시글 읽기

}
