package com.kh.team.dao;

import java.util.List;

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
	public boolean updateCinemaInfo(int cinema_no, CinemaVo cinemaVo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<CinemaVo> getCinemaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CinemaVo getCinemaInfo(int cinema_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateCinemaStatus(int cinema_no, int cinema_status) {
		// TODO Auto-generated method stub
		return false;
	}

}
