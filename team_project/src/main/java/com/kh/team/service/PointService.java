package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.PointVo;

public interface PointService {
	// 포인트 내역 추가
	public boolean addPoint(PointVo pointVo, int userno);
	// 포인트 코드 추가
	public boolean addPointCode(PointVo pointVo);
	// 포인트 목록 조회
	public List<PointVo> getPointList();
	// 아이디로 포인트 목록 조회
	public List<PointVo> getPointListByUserno(int userno);
	// 포인트 코드로 포인트 목록 조회
	public List<PointVo> getPointListByPointCode(int point_code);	
	// 포인트 내역 삭제
	public boolean deletePoint(int pointno, int userno);
	// 포인트코드 내역 삭제
	public boolean deletePointCode(int point_code);
}