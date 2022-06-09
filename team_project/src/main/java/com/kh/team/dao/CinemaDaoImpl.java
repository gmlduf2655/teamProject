package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.CinemaVo;

@Repository
public class CinemaDaoImpl implements CinemaDao {
	private final String NAMESPACE = "com.kh.team.mappers.cinema.";

	@Autowired
	private SqlSession sqlSession;

	// 영화관 생성
	@Override
	public boolean insertCinema(CinemaVo cinemaVo) {
		int result = sqlSession.insert(NAMESPACE + "insertCinema", cinemaVo);
		if (result > 0) {
			return true;
		}
		return false;
	}

	// 영화관 코드 얻어내기
	public String selectCinemaCode(int cinema_no) {
		String cinema_code = sqlSession.selectOne(NAMESPACE + "selectCinemaCode", cinema_no);
		return cinema_code;
	};
	
	// 영화관 리스트 조회 (전체 조회)
	public List<CinemaVo> selectCinemaList(String order_column, String order_type) {

		Map<String, String> parameter = new HashMap<>();
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);

		List<CinemaVo> cinemaList = sqlSession.selectList(NAMESPACE + "selectCinemaList", parameter);
		return cinemaList;

	};

	// 영화관 리스트 조회 (지역별, 영화별, 영화관 이름별)
	@Override
	public List<CinemaVo> selectCinemaList(String search_column, Object search_data, String order_column,
			String order_type) {
		Map<String, Object> parameter = new HashMap<>();

		parameter.put("search_column", search_column);
		parameter.put("search_data", search_data);
		parameter.put("order_column", order_column);
		parameter.put("order_type", order_type);

		List<CinemaVo> cinemaList = sqlSession.selectList(NAMESPACE + "selectCinemaList", parameter);
		return cinemaList;
	}

	// 영화관 정보 조회
	@Override
	public CinemaVo selectCinema(int cinema_no) {
		CinemaVo cinemaVo = sqlSession.selectOne(NAMESPACE + "selectCinema", cinema_no);
		return cinemaVo;
	}

	// 영화관 정보 수정
	@Override
	public boolean updateCinemaInfo(int cinema_no, String cinema_name, String cinema_address, String cinema_status) {

		Map<String, Object> parameter = new HashMap<>();
		parameter.put("cinema_no", cinema_no);
		parameter.put("cinema_name", cinema_name);
		parameter.put("cinema_address", cinema_address);
		parameter.put("cinema_status", cinema_status);

		int result = sqlSession.update(NAMESPACE + "updateCinemaInfo", parameter);
		if (result > 0) {
			return true;
		}
		return false;
	}

	// 영화관 상태 변경
	@Override
	public boolean updateCinemaStatus(int cinema_no, String cinema_status) {
		Map<String, Object> parameter = new HashMap<>();

		parameter.put("cinema_no", cinema_no);
		parameter.put("cinema_status", cinema_status);

		int result = sqlSession.update(NAMESPACE + "updateCinemaStatus", parameter);
		if (result > 0) {
			return true;
		}
		return false;
	}

}
