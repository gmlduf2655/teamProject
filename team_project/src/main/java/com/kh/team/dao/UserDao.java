package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.UserVo;

public interface UserDao {
	// 회원 추가
	public boolean insertUser(UserVo userVo);
	// 아이디로 회원 조회
	public UserVo selectUserById(String userid);
	// 회원 목록 조회
	public List<UserVo> userList();
	// 회원 수정
	public boolean updateUser(UserVo userVo);
	// 회원 삭제
	public boolean deleteUser(String userid);
}
