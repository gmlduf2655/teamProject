package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.AttendanceDao;
import com.kh.team.vo.AttendanceVo;

@Service
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	private AttendanceDao attendanceDao;

	@Override
	public boolean insert(AttendanceVo attendanceVo) {
		boolean result = attendanceDao.insert(attendanceVo);
		return result;
	}

	@Override
	public List<AttendanceVo> attendList(int userno) {
		List<AttendanceVo> attendList = attendanceDao.attendList(userno);
		return attendList;
	}

}
