package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.UserDao;
import com.kh.team.vo.UserVo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	// 회원 가입
	@Override
	public boolean signUp(UserVo userVo) {
		boolean result = userDao.insertUser(userVo);
		return result;
	}

	// 로그인
	@Override
	public UserVo login(String userid, String userpw) {
		UserVo userVo = userDao.selectUserByIdAndPwd(userid, userpw);
//		if(userVo != null) {
//			return true;
//		}
		return userVo;
	}

	// 유저 정보 수정
	@Override
	public boolean updateUser(UserVo userVo) {
		boolean result = userDao.updateUser(userVo);
		return result;
	}

	// 회원 탈퇴
	@Override
	public boolean unregister(String userid) {
		boolean result = userDao.deleteUser(userid);
		return result;
	}

}
