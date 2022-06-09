package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.UserVo;

public interface UserService {
	// 회원가입
	public boolean signUp(UserVo userVo);
	// 간편로그인 회원추가
	public boolean addSnsUser(UserVo userVo);
	// 회원정보 조회
	public UserVo getUserInfo(String userid);
	// 회원 목록 조회
	public List<UserVo> getUserList();
	// 기존회원 목록 조회
	public List<UserVo> getOriginUserList();
	// 간편로그인회원 목록 조회
	public List<UserVo> getSnsUserList();
	// 아이디 중복 체크
	public boolean useridDuplCheck(String userid);
	// 닉네임 중복체크
	public boolean nicknameDuplCheck(String nickname);
	// 간편로그인 회원 중복체크
	public boolean snsUserDuplCheck(String sns_id, String sns_type);
	// 간편로그인 아이디와 타입으로 회원 정보 조회
	public UserVo getUserBySnsIdAndType(String sns_id, String sns_type);
	// 로그인
	public UserVo login(String userid, String userpw);
	// 회원 정보 수정
	public boolean modifyUser(UserVo userVo);
	// 회원 탈퇴
	public boolean unregister(String userid);
	// 임시 비밀번호로 비밀번호 변경
	public boolean updateUserpwToTempPwd(String email, String tempPwd);
}
