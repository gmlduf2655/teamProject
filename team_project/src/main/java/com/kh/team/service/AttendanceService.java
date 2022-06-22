package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.AttendanceVo;

public interface AttendanceService {
	public boolean insert(AttendanceVo attendanceVo);
	public List<AttendanceVo> attendList(int userno);
}
