package com.kh.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.team.dao.UserDao;
import com.kh.team.vo.PagingDto;
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

	// 유저번호로 회원정보 조회
	@Override
	public UserVo getUserInfoByUserno(int userno) {
		UserVo userVo = userDao.selectUserByUserno(userno);
		return userVo;
	}
	
	// 회원목록 조회
	@Override
	public List<UserVo> getUserList() {
		List<UserVo> userList = userDao.userList();
		return userList;
	}
	
	// 기존회원 목록 조회
	@Override
	public List<UserVo> getOriginUserList(PagingDto pagingDto) {
		List<UserVo> originUserList = userDao.originUserList(pagingDto);
		return originUserList;
	}
	
	// 기존 회원수 조회
	public int getCountOriginUserList() {
		int count = userDao.getCountOriginUserList();
		return count;
	}

	// 간편로그인회원 목록 조회
	@Override
	public List<UserVo> getSnsUserList(PagingDto pagingDto) {
		List<UserVo> snsUserList = userDao.snsUserList(pagingDto);
		return snsUserList;
	}

	// 간편로그인 회원수 조회
	public int getCountSnsUserList() {
		int count = userDao.getCountSnsUserList();
		return count;
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
	
	// 간편로그인 아이디와 타입으로 회원 정보 조회
	@Override
	public UserVo getUserBySnsIdAndType(String sns_id, String sns_type) {
		UserVo userVo = userDao.selectUserBySnsIdAndType(sns_id, sns_type);
		return userVo;
	}
	
	// 회원번호와 회원타입으로 회원 아이디 조회
	public String getUseridByUsernoAndSnsType(int userno, String sns_type) {
		String userid = "";
		UserVo userVo = userDao.selectUserByUserno(userno);
		if(sns_type.equals("")) {
			userid = userVo.getUserid();
		}else{
			userid = userVo.getSns_id();
		}
		return userid;
	}
	
	// 회원아이디와 회원타입으로 회원 번호 조회
	public int getUsernoByUseridAndSnsType(String userid, String sns_type) {
		UserVo userVo;
		if(sns_type.equals("")) {
			userVo = userDao.selectUserById(userid);
		}else{
			userVo = userDao.selectUserBySnsIdAndType(userid, sns_type);
		}		
		int userno = userVo.getUserno();
		return userno;
	}
	
	// 회원아이디로 회원 번호 조회 
	@Override
	public int getUsernoByUserid(String userid) {
		UserVo userVo = userDao.selectUserById(userid);
		int userno = userVo.getUserno();
		return userno;
	}
	
	// 회원 이름과 이메일로 회원 아이디 조회
	@Override
	public String getUseridByUsernameAndEmail(String username, String email) {
		UserVo userVo = userDao.selectUserByUsernameAndEmail(username, email);
		return userVo.getUserid();
	}
	// 회원번호로 회원 아이디 조회
	public String getUseridByUserno(int userno) {
		UserVo userVo = userDao.selectUserByUserno(userno);
		return userVo.getUserid();
	}
	
	// 유저 번호와 비밀번호로 유저 조회
	@Override
	public UserVo getUserByUsernoAndUserpw(int userno, String userpw) {
		UserVo userVo = userDao.selectUserByUsernoAndUserpw(userno, userpw);
		return userVo;
	}	
	
	// 유저 아이디로 유저 프로필 사진 조회
	@Override
	public String getProfileImageByUserId(String userid) {
		UserVo userVo = userDao.selectUserById(userid);
		String profile_image = userVo.getProfile_image();
		return profile_image;
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
	public boolean unregister(int userno) {
		boolean result = userDao.deleteUser(userno);
		return result;
	}
	
	// 유저 비밀번호 변경
	@Override
	public boolean modifyUserpw(String userid, String userpw) {
		boolean result = userDao.updateUserpw(userid, userpw);
		return result;
	}
	
	// 유저 프로필사진 수정
	@Override
	public boolean modifyProfileImage(String profile_image, int userno) {
		boolean result = userDao.updateProfileImage(profile_image, userno);
		return result;
	}
	
	// 임시 비밀번호 만들기
	@Override
	@Transactional
	public boolean updateUserpwToTempPwd(String email, String userid, String tempPwd) {
		UserVo userVo = userDao.selectUserByEmailAndUserid(email, userid);
		boolean result = userDao.updateUserpw(userVo.getUserid(), tempPwd);
		return result;
	}

}
