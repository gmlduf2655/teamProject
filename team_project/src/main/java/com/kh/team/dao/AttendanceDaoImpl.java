package com.kh.team.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.AttendanceVo;

@Repository
public class AttendanceDaoImpl implements AttendanceDao {
	private final String NAMESPACE = "com.kh.team.mappers.attendance.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean insert(AttendanceVo attendanceVo) {
		int count = sqlSession.insert(NAMESPACE + "insert", attendanceVo);
		if (count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<AttendanceVo> attendList(int userno) {
		List<AttendanceVo> attendList = sqlSession.selectList(NAMESPACE + "list", userno);
		return attendList;
	}

}
