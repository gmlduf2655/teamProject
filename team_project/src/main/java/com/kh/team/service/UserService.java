package com.kh.team.service;

import com.kh.team.vo.UserVo;

public interface UserService {
	// 회원가입
	public boolean signUp(UserVo userVo);
	// 회원정보 조회
	public UserVo getUserInfo(String userid);
	// 아이디 중복 체크
	public boolean useridDuplCheck(String userid);
	// 닉네임 중복체크
	public boolean nicknameDuplCheck(String nickname);
	// 로그인
	public UserVo login(String userid, String userpw);
	// 회원 정보 수정
	public boolean updateUser(UserVo userVo);
	// 회원 탈퇴
	public boolean unregister(String userid);
	// 임시 비밀번호로 비밀번호 변경
	public boolean updateUserpwToTempPwd(String email, String tempPwd);
}
