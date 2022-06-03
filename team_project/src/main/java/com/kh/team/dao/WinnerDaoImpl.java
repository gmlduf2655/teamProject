package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.EventVo;
import com.kh.team.vo.WinnerVo;

@Repository
public class WinnerDaoImpl implements WinnerDao {
	private final String NAMESPACE = "com.kh.team.mappers.winner.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<WinnerVo> list() {
		List<WinnerVo> winnerList = sqlSession.selectList(NAMESPACE + "list");
		return winnerList;
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
		int count = sqlSession.update(NAMESPACE + "modify", winnerVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(int winner_no) {
		int count = sqlSession.delete(NAMESPACE + "delete", winner_no);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public WinnerVo readContent(int winner_no) {
		WinnerVo winnerVo = sqlSession.selectOne(NAMESPACE + "readContent", winner_no);
		return winnerVo;
	}

	@Override
	public void viewConuntUpdate(int winner_no) {
		sqlSession.update(NAMESPACE + "viewConuntUpdate", winner_no);
		
	}

}
