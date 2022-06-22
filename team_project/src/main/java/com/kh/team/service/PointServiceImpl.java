package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.dao.PointDao;
import com.kh.team.dao.UserDao;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.PointVo;

@Service
public class PointServiceImpl implements PointService {
	@Autowired
	UserDao userDao;
	@Autowired
	PointDao pointDao;

	// 포인트 내역 추가
	@Override
	@Transactional
	public boolean addPoint(PointVo pointVo) {
		boolean result1 = pointDao.insertPoint(pointVo);
		boolean result2 = false;
		if(result1) {
			result2 = userDao.updateUserPoint(pointVo.getPoint(), pointVo.getUserno());
		}
		boolean result = result1 && result2;
		return result;
	}

	// 포인트 코드 추가
	@Override
	public boolean addPointCode(PointVo pointVo) {
		boolean result = pointDao.insertPointCode(pointVo);
		return result;
	}

	// 포인트 목록 조회
	@Override
	public List<PointVo> getPointList(PagingDto pagingDto) {
		List<PointVo> pointList = pointDao.selectPointList(pagingDto);
		return pointList;
	}

	// 전체 유저 포인트 내역 수 조회
	public int getCountPointList(PagingDto pagingDto) {
		int count = pointDao.getCountPointList(pagingDto);
		return count;
	}	
	
	// 아이디로 포인트 목록 조회
	@Override
	public List<PointVo> getPointListByUserno(int userno, PagingDto pagingDto) {
		List<PointVo> pointList = pointDao.selectPointListByUserno(userno, pagingDto);
		return pointList;		
	}
	
	// 특정 유저 포인트 내역 수 조회
	public int getCountPointListByUserno(int userno, PagingDto pagingDto) {
		int count = pointDao.getCountPointListByUserno(userno, pagingDto);
		return count;
	}

	// 포인트 코드로 포인트 목록 조회
	@Override
	public List<PointVo> getPointListByPointCode(int point_code) {
		List<PointVo> pointList = pointDao.selectPointListByPointCode(point_code);
		return pointList;
	}
	
	// 포인트 코드 목록조회
	@Override
	public List<PointVo> getPointCodeList(PagingDto pagingDto) {
		List<PointVo> pointCodeList = pointDao.selectPointCodeList(pagingDto);
		return pointCodeList;
	}
	
	// 포인트 코드 목록 수 조회
	@Override
	public int getCountPointCodeList(PagingDto pagingDto) {
		int count = pointDao.getCountPointCodeList(pagingDto);
		return count;
	}
	
	// 포인트 코드 내역 수정
	@Override
	public boolean updatePointCode(PointVo pointVo) {
		boolean result = pointDao.updatePointCode(pointVo);
		return result;
	}
	
	// 포인트 내역 삭제
	@Override
	@Transactional
	public boolean deletePoint(int pointno, int userno) {
		PointVo pointVo = pointDao.selectPointByPointno(pointno);
		boolean result1 = pointDao.deletePoint(pointno);
		boolean result2 = false;
		if(result1) {
			result2 = userDao.updateUserPoint(-pointVo.getPoint(), userno);
		}
		boolean result = result1 && result2;
		return result;
	}
	
	// 포인트코드 내역 다수 삭제
	@Override
	public boolean multiDeletePointCode(List<Integer> pointCodes) {
		boolean result = pointDao.multiDeletePointCode(pointCodes);
		return result;
	}
	
	// 포인트코드 내역 삭제
	@Override
	public boolean deletePointCode(int point_code) {
		boolean result = pointDao.deletePointCode(point_code);
		return result;
	}

}
