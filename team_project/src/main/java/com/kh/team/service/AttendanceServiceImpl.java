package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.AttendanceDao;
import com.kh.team.dao.PointDao;
import com.kh.team.vo.AttendanceVo;
import com.kh.team.vo.PointVo;

@Service
public class AttendanceServiceImpl implements AttendanceService {
	
	@Autowired
	private AttendanceDao attendanceDao;
	
	@Autowired
	private PointDao pointDao;

	@Override
	public boolean insert(AttendanceVo attendanceVo) {
		boolean result1 = attendanceDao.insert(attendanceVo); // 출석 체크하면
		PointVo pointVo = new PointVo(pointDao.INSERT_ATTEND_POINT, attendanceVo.getUserno(),
				pointDao.INSERT_ATTEND_CODE);
		boolean result2 = pointDao.updatePoint(pointVo);
		boolean result3 = pointDao.insertPoint(pointVo);
		if( result1 && result2 && result3) {
			return true;
		}
		return false;
	}

	@Override
	public List<AttendanceVo> attendList(int userno) {
		List<AttendanceVo> attendList = attendanceDao.attendList(userno);
		return attendList;
	}

}
