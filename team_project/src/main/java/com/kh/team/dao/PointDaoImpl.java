package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PointVo;

@Repository
public class PointDaoImpl implements PointDao {
	private static final String NAMESPACE = "com.kh.team.mappers.point.";
	
	@Autowired
	SqlSession sqlSession;
	
	// 포인트 내역추가
	@Override
	public boolean insertPoint(PointVo pointVo) {
		int count = sqlSession.insert(NAMESPACE + "insertPoint", pointVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 포인트 코드추가
	@Override
	public boolean insertPointCode(PointVo pointVo) {
		int count = sqlSession.insert(NAMESPACE + "insertPointCode", pointVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 포인트 목록조회
	@Override
	public List<PointVo> selectPointList() {
		List<PointVo> pointList = sqlSession.selectList(NAMESPACE + "selectPointList");
		return pointList;
	}

	// 아이디로 포인트 목록조회
	@Override
	public List<PointVo> selectPointListByUserno(int userno) {
		List<PointVo> pointList = sqlSession.selectList(NAMESPACE + "selectPointListByUserno", userno);
		return pointList;
	}

	// 포인트 코드로 포인트 목록조회
	@Override
	public List<PointVo> selectPointListByPointCode(int point_code) {
		List<PointVo> pointList = sqlSession.selectList(NAMESPACE + "selectPointListByPointCode", point_code);
		return pointList;
	}

	// 포인트 번호로 포인트 내역조회
	@Override
	public PointVo selectPointByPointno(int pointno) {
		PointVo pointVo = sqlSession.selectOne(NAMESPACE + "selectPointByPointno", pointno);
		return pointVo;
	}	
	
	// 포인트 내역 삭제
	@Override
	public boolean deletePoint(int pointno) {
		int count = sqlSession.delete(NAMESPACE + "deletePoint", pointno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 포인트코드 내역 삭제
	@Override
	public boolean deletePointCode(int point_code) {
		int count = sqlSession.delete(NAMESPACE + "deletePointCode", point_code);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean updatePoint(PointVo pointVo) {
		int count = sqlSession.update(NAMESPACE + "updatePoint", pointVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
