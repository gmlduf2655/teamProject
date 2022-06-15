package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PointVo;

public interface PointDao {
	public static final int INSERT_REVIEW_POINT = 50; // 리뷰 작성하면 50포인트
	public static final int INSERT_REVIEW_CODE = 1002; // 리뷰 작성 포인트 코드
	
	// 포인트 내역 추가
	public boolean insertPoint(PointVo pointVo);
	// 포인트 코드 추가
	public boolean insertPointCode(PointVo pointVo);
	// 포인트 목록 조회
	public List<PointVo> selectPointList();
	// 아이디로 포인트 목록 조회
	public List<PointVo> selectPointListByUserno(int userno);
	// 포인트 코드로 포인트 목록 조회
	public List<PointVo> selectPointListByPointCode(int point_code);
	// 포인트 번호로 포인트 내역조회
	public PointVo selectPointByPointno(int pointno);
	// 포인트 내역 삭제
	public boolean deletePoint(int pointno);
	// 포인트코드 내역 삭제
	public boolean deletePointCode(int point_code);
	// 업데이트
	public boolean updatePoint(PointVo pointVo);
}
