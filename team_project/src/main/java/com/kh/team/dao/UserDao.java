package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.UserVo;

public interface UserDao {
	// 회원 추가
	public boolean insertUser(UserVo userVo);
	// 간편로그인 회원추가
	public boolean insertSnsUser(UserVo userVo);
	// 아이디로 회원 조회
	public UserVo selectUserById(String userid);
	// 유저번호로 회원 조회
	public UserVo selectUserByUserno(int userno);
	// 아이디, 비밀번호로 회원 조회
	public UserVo selectUserByIdAndPwd(String userid, String userpw);
	// 닉네임으로 회원 조회
	public UserVo selectUserByNickname(String nickname);
	// 이메일로 회원 조회
	public UserVo selectUserByEmail(String email);
	// 간편로그인 아이디와 종류로 회원 조회
	public UserVo selectUserBySnsIdAndType(String sns_id, String sns_type);
	// 회원 목록 조회
	public List<UserVo> userList();
	// 기존회원 목록 조회
	public List<UserVo> originUserList();
	// 간편로그인 회원 목록 조회
	public List<UserVo> snsUserList();
	// 회원 수정
	public boolean updateUser(UserVo userVo);
	// 유저 비밀번호 수정
	public boolean updateUserpw(String userid, String userpw);
	// 유저 포인트 수정
	public boolean updateUserPoint(int point, int userno);
	// 회원 삭제
	public boolean deleteUser(String userid);
}
