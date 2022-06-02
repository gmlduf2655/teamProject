package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao {
	private String NAMESPACE = "com.kh.team.mappers.user.";
	
	@Autowired
	public SqlSession sqlSession;
	
	// 회원 추가
	@Override
	public boolean insertUser(UserVo userVo) {
		int count = sqlSession.insert(NAMESPACE + "insertUser", userVo);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 아이디로 회원 조회
	@Override
	public UserVo selectUserById(String userid) {
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserById", userid);
		return userVo;
	}
	
	// 아이디, 비밀번호로 회원 조회
	@Override
	public UserVo selectUserByIdAndPwd(String userid, String userpw) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userid", userid);
		map.put("userpw", userpw);
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByIdAndPwd", map);
		return userVo;
	}

	// 회원 목록 조회
	@Override
	public List<UserVo> userList() {
		List<UserVo> userList = sqlSession.selectList(NAMESPACE + "userList");
		return userList;
	}

	// 회원 수정
	@Override
	public boolean updateUser(UserVo userVo) {
		int count = sqlSession.update(NAMESPACE + "updateUser", userVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 회원 삭제
	@Override
	public boolean deleteUser(String userid) {
		int count = sqlSession.update(NAMESPACE + "deleteUser", userid);
		if(count > 0) {
			return true;
		}
		return false;
	}

}