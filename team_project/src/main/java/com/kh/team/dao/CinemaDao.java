package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.CinemaVo;

public interface CinemaDao {

	// 영화관 생성
	public boolean insertCinema(CinemaVo cinemaVo);

	// 영화관 정보 수정
	public boolean updateCinemaInfo(CinemaVo cinemaVo);

	// 영화관 리스트 조회
	public List<CinemaVo> getCinemaList(String column, String orderType);

	// 영화관 정보 조회
	public CinemaVo getCinemaInfo(int cinema_no);

	// 영화관 상태 변경(오픈 / 폐업 / 오픈예정)
	public boolean updateCinemaStatus(int cinema_no, String cinema_status);

}
