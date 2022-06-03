package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.WinnerVo;

@Repository
public class WinnerDaoImpl implements WinnerDao {
	private final String NAMESPACE = "com.kh.team.mappers.winner.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<WinnerVo> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(WinnerVo winnerVo) {
		int count = sqlSession.insert(NAMESPACE + "insert", winnerVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean modify(WinnerVo winnerVo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int winner_no) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public WinnerVo readContent(int winner_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void viewConuntUpdate(int winner_no) {
		// TODO Auto-generated method stub
		
	}

}
