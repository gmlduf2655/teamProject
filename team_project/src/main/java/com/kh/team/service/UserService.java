package com.kh.team.service;

import com.kh.team.vo.UserVo;

public interface UserService {
	// 회원가입
	public boolean signUp(UserVo userVo);
	// 로그인
	public UserVo login(String userid, String userpw);
	// 회원 정보 수정
	public boolean updateUser(UserVo userVo);
	// 회원 탈퇴
	public boolean unregister(String userid);
}
