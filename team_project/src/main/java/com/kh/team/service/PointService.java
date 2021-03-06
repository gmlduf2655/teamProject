package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;

public interface PointService {
	public final int SEND_MESSAGE = 1001;
	public final int TICKET_DIGITAL = 1010;
	public final int TICKET_2D = 1011;
	public final int TICKET_3D = 1012;
	public final int TICKET_4D = 1013;
	public final int TICKET_IMAX = 1014;
	public final int TICKET_IMAX3D = 1015;
	
	public final int SEND_MESSAGE_POINT = 10;
	public final int TICKET_DIGITAL_POINT = -4500;
	public final int TICKET_2D_POINT = -5000;
	public final int TICKET_3D_POINT = -5500;
	public final int TICKET_4D_POINT = -6000;
	public final int TICKET_IMAX_POINT = -7000;
	public final int TICKET_IMAX3D_POINT = -8000;
	
	// 포인트 내역 추가
	public boolean addPoint(PointVo pointVo);
	// 포인트 코드 추가
	public boolean addPointCode(PointVo pointVo);
	// 포인트 목록 조회
	public List<PointVo> getPointList(PagingDto pagingDto);
	// 전체 유저 포인트 내역 수 조회
	public int getCountPointList(PagingDto pagingDto);
	// 아이디로 포인트 목록 조회
	public List<PointVo> getPointListByUserno(int userno, PagingDto pagingDto);
	// 특정 유저 포인트 내역 수 조회
	public int getCountPointListByUserno(int userno, PagingDto pagingDto);
	// 포인트 코드로 포인트 목록 조회
	public List<PointVo> getPointListByPointCode(int point_code);	
	// 포인트 코드 목록조회
	public List<PointVo> getPointCodeList(PagingDto pagingDto);
	// 포인트 코드 목록 수 조회
	public int getCountPointCodeList(PagingDto pagingDto);
	// 포인트 코드 내역 수정
	public boolean updatePointCode(PointVo pointVo);
	// 포인트 내역 삭제
	public boolean deletePoint(int pointno, int userno);
	// 포인트코드 내역 다수 삭제
	public boolean multiDeletePointCode(List<Integer> pointCodes);	
	// 포인트코드 내역 삭제
	public boolean deletePointCode(int point_code);
	
	// 조재호 : 영화 예매 포인트 사용
	public boolean usingTicketingPoint(PointVo pointVo, int size, int userPoint);
}
