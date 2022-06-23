package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PagingDto;
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
	public List<PointVo> selectPointList(PagingDto pagingDto) {
		List<PointVo> pointList = sqlSession.selectList(NAMESPACE + "selectPointList", pagingDto);
		return pointList;
	}

	// 전체 유저 포인트 내역 수 조회
	@Override
	public int getCountPointList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountPointList", pagingDto);
		return count;
	}

	// 아이디로 포인트 목록조회
	@Override
	public List<PointVo> selectPointListByUserno(int userno, PagingDto pagingDto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userno", userno);
		map.put("pagingDto", pagingDto);
		List<PointVo> pointList = sqlSession.selectList(NAMESPACE + "selectPointListByUserno", map);
		return pointList;
	}
	// 특정 유저 포인트 내역 수 조회
	public int getCountPointListByUserno(int userno, PagingDto pagingDto) {
		Map<String, Object> map = new HashMap<>();
		map.put("userno", userno);
		map.put("pagingDto", pagingDto);
		int count = sqlSession.selectOne(NAMESPACE + "getCountPointListByUserno", map);
		return count;		
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
	
	// 포인트 코드 목록조회
	@Override
	public List<PointVo> selectPointCodeList(PagingDto pagingDto) {
		List<PointVo> pointCodeList = sqlSession.selectList(NAMESPACE + "selectPointCodeList", pagingDto);
		return pointCodeList;
	}
	
	// 포인트 코드 목록 수 조회
	@Override
	public int getCountPointCodeList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountPointCodeList", pagingDto);
		return count;
	}
	
	// 포인트 코드 내역 수정
	@Override
	public boolean updatePointCode(PointVo pointVo) {
		int count = sqlSession.update(NAMESPACE + "updatePointCode", pointVo);
		if(count > 0) {
			return true;
		}
		return false;
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
	
	// 포인트코드 내역 다수 삭제
	@Override
	public boolean multiDeletePointCode(List<Integer> list) {
		int count = sqlSession.delete(NAMESPACE + "multiDeletePointCode", list);
		if(count > 0) {
			return true;
		}		
		return false;
	}

	// 유저 포인트 수정
	@Override
	public boolean updatePoint(PointVo pointVo) {
		int count = sqlSession.update(NAMESPACE + "updatePoint", pointVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
