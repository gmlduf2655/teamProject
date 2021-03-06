package com.kh.team.dao;

import java.sql.Date;
import java.util.List;

import com.kh.team.vo.CinemaVo;

public interface CinemaDao {
	
	// 영화관 생성
	public boolean insertCinema(
				CinemaVo cinemaVo
			);
	
	// 영화관 코드 얻어내기
	public String selectCinemaCode(int cinema_no);
	
	// 영화관 리스트 조회 (전체 조회)
	public List<CinemaVo> selectCinemaList(
			String order_column,
			String order_type
			);
	
	
	// 영화관 리스트 조회 (지역별, 영화별, 영화관 이름별)
	public List<CinemaVo> selectCinemaList(
				String search_column,
				Object search_data,
				String order_column,
				String order_type
			);
	
	// 영화관 정보 조회
	public CinemaVo selectCinema(
				int cinema_no
			);
	
	// 영화관 정보 수정
	public boolean updateCinemaInfo(
				int cinema_no,
				String cinema_name,
				String cinema_address,
				String cinema_status
			);
	
	// 영화관 상태 변경
	public boolean updateCinemaStatus(
				int cinema_no,
				String cinema_status
			);
	
	// 등록 영화관 주소 (시 단위)리스트 얻어내기
	public List<String> selectCinemaAddressCityList();
	
}
