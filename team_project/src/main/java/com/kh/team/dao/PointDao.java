package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;

public interface PointDao {
	public static final int INSERT_REVIEW_POINT = 50; // 리뷰 작성하면 50포인트
	public static final int INSERT_REVIEW_CODE = 1002; // 리뷰 작성 포인트 코드
	public static final int INSERT_ATTEND_POINT = 5; // 출석 체크하면 5포인트
	public static final int INSERT_ATTEND_CODE = 1009; //출석 체크 코드
	
	// 포인트 내역 추가
	public boolean insertPoint(PointVo pointVo);
	// 포인트 코드 추가
	public boolean insertPointCode(PointVo pointVo);
	// 포인트 목록 조회
	public List<PointVo> selectPointList(PagingDto pagingDto);
	// 전체 유저 포인트 내역 수 조회
	public int getCountPointList(PagingDto pagingDto);
	// 아이디로 포인트 목록 조회
	public List<PointVo> selectPointListByUserno(int userno, PagingDto pagingDto);
	// 특정 유저 포인트 내역 수 조회
	public int getCountPointListByUserno(int userno, PagingDto pagingDto);
	// 포인트 코드로 포인트 목록 조회
	public List<PointVo> selectPointListByPointCode(int point_code);
	// 포인트 번호로 포인트 내역조회
	public PointVo selectPointByPointno(int pointno);
	// 포인트 코드 목록조회
	public List<PointVo> selectPointCodeList(PagingDto pagingDto);
	// 포인트 코드 목록 수 조회
	public int getCountPointCodeList(PagingDto pagingDto);
	// 포인트 코드 내역 수정
	public boolean updatePointCode(PointVo pointVo);
	// 포인트 내역 삭제
	public boolean deletePoint(int pointno);
	// 포인트코드 내역 삭제
	public boolean deletePointCode(int point_code);
	// 포인트코드 내역 다수 삭제
	public boolean multiDeletePointCode(List<Integer> list);
	// 유저 포인트 수정
	public boolean updatePoint(PointVo pointVo);
}
