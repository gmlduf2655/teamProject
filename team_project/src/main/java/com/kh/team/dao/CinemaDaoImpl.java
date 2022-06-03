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
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.kh.team.mappers.cinema.";

	@Override
	public boolean insertCinema(CinemaVo cinemaVo) {
		int count = sqlSession.insert(NAMESPACE + "insertCinema", cinemaVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updateCinemaInfo(CinemaVo cinemaVo) {
		int count = sqlSession.update(NAMESPACE + "updateCinemaInfo", cinemaVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<CinemaVo> getCinemaList(String column, String orderType) {
		Map<String, String> insertData = new HashMap<>();
		insertData.put("column", column);
		insertData.put("orderType", orderType);
		List<CinemaVo> cinemaList = sqlSession.selectList(NAMESPACE + "getCinemaList", insertData);
		return cinemaList;
	}

	@Override
	public CinemaVo getCinemaInfo(int cinema_no) {
		CinemaVo cinemaVo = sqlSession.selectOne(NAMESPACE + "getCinemaInfo", cinema_no);
		return cinemaVo;
	}

	@Override
	public boolean updateCinemaStatus(int cinema_no, String cinema_status) {
		Map<String, Object> insertData = new HashMap<>();
		insertData.put("cinema_no", cinema_no);
		insertData.put("cinema_status", cinema_status);
		int count = sqlSession.update(NAMESPACE + "updateCinemaStatus", insertData);
		if (count > 0) {
			return true;
		}
		return false;
	}

}
