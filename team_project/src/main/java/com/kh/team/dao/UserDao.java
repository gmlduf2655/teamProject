package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PagingDto;
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
	// 이메일과 아이디로 회원 조회
	public UserVo selectUserByEmailAndUserid(String email, String userid);
	// 간편로그인 아이디와 종류로 회원 조회
	public UserVo selectUserBySnsIdAndType(String sns_id, String sns_type);
	// 유저 이름과 이메일로 회원 조회
	public UserVo selectUserByUsernameAndEmail(String username, String email);
	// 유저 번호와 비밀번호로 유저 조회
	public UserVo selectUserByUsernoAndUserpw(int userno, String userpw);
	// 회원 목록 조회
	public List<UserVo> userList();
	// 총 유저 수 조회
	public int getCountUserList();
	// 기존 회원 목록 조회
	public List<UserVo> originUserList(PagingDto pagingDto);
	// 기존 회원수 조회
	public int getCountOriginUserList(PagingDto pagingDto);
	// 간편로그인 회원 목록 조회
	public List<UserVo> snsUserList(PagingDto pagingDto);
	// 간편로그인 회원수 조회
	public int getCountSnsUserList(PagingDto pagingDto);
	// 각 간편로그인 유저 수 조회
	public int getCountEachSnsUserList(String sns_type);
	// 회원 수정
	public boolean updateUser(UserVo userVo);
	// 유저 비밀번호 수정
	public boolean updateUserpw(String userid, String userpw);
	// 유저 포인트 수정
	public boolean updateUserPoint(int point, int userno);
	// 유저 프로필사진 수정
	public boolean updateProfileImage(String profile_image, int userno);
	// 회원 삭제
	public boolean deleteUser(int userno);
	// 다중 유저 정지
	public boolean multiUserSuspend(List<Integer> list);
	// 다중 유저 복구
	public boolean multiUserRecover(List<Integer> list);
}
