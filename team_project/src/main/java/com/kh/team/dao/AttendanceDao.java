package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.AttendanceVo;

public interface AttendanceDao {
	public boolean insert(AttendanceVo attendanceVo);
	public List<AttendanceVo> attendList(int userno);
}
