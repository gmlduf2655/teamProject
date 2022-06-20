package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;

public interface PointService {
	// 포인트 내역 추가
	public boolean addPoint(PointVo pointVo);
	// 포인트 코드 추가
	public boolean addPointCode(PointVo pointVo);
	// 포인트 목록 조회
	public List<PointVo> getPointList(PagingDto pagingDto);
	// 전체 유저 포인트 내역 수 조회
	public int getCountPointList();
	// 아이디로 포인트 목록 조회
	public List<PointVo> getPointListByUserno(int userno, PagingDto pagingDto);
	// 특정 유저 포인트 내역 수 조회
	public int getCountPointListByUserno(int userno);
	// 포인트 코드로 포인트 목록 조회
	public List<PointVo> getPointListByPointCode(int point_code);	
	// 포인트 코드 목록조회
	public List<PointVo> getPointCodeList(PagingDto pagingDto);
	// 포인트 코드 목록 수 조회
	public int getCountPointCodeList();
	// 포인트 코드 내역 수정
	public boolean updatePointCode(PointVo pointVo);
	// 포인트 내역 삭제
	public boolean deletePoint(int pointno, int userno);
	// 포인트코드 내역 다수 삭제
	public boolean multiDeletePointCode(List<Integer> pointCodes);	
	// 포인트코드 내역 삭제
	public boolean deletePointCode(int point_code);
}
