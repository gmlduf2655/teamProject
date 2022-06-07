package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	// 간편로그인 회원추가
	@Override
	public boolean addSnsUser(UserVo userVo) {
		boolean result = userDao.insertSnsUser(userVo);
		return result;
	}
	
	// 회원정보 조회
	@Override
	public UserVo getUserInfo(String userid) {
		UserVo userVo = userDao.selectUserById(userid);
		return userVo;
	}	

	// 아이디 중복체크
	@Override
	public boolean useridDuplCheck(String userid) {
		UserVo userVo = userDao.selectUserById(userid);
		if(userVo != null) {
			return true;
		}
		return false;
	}
	
	// 닉네임 중복체크
	@Override
	public boolean nicknameDuplCheck(String nickname) {
		UserVo userVo = userDao.selectUserByNickname(nickname);
		if(userVo != null) {
			return true;
		}
		return false;
	}

	// 간편로그인 회원 중복체크
	@Override
	public boolean snsUserDuplCheck(String sns_id, String sns_type) {
		UserVo userVo = userDao.selectUserBySnsIdAndType(sns_id, sns_type);
		if(userVo != null) {
			return true;
		}
		return false;
	}
	
	// 로그인
	@Override
	public UserVo login(String userid, String userpw) {
		UserVo userVo = userDao.selectUserByIdAndPwd(userid, userpw);
		return userVo;
	}

	// 유저 정보 수정
	@Override
	public boolean modifyUser(UserVo userVo) {
		boolean result = userDao.updateUser(userVo);
		return result;
	}

	// 회원 탈퇴
	@Override
	public boolean unregister(String userid) {
		boolean result = userDao.deleteUser(userid);
		return result;
	}

	// 임시 비밀번호 만들기
	@Override
	@Transactional
	public boolean updateUserpwToTempPwd(String email, String tempPwd) {
		UserVo userVo = userDao.selectUserByEmail(email);
		boolean result = userDao.updateUserpw(userVo.getUserid(), tempPwd);
		return result;
	}

}
