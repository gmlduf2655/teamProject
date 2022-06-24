package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.PagingDto;
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
	
	// 간편로그인 회원 추가
	@Override
	public boolean insertSnsUser(UserVo userVo) {
		int count = sqlSession.insert(NAMESPACE + "insertSnsUser", userVo);
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

	// 유저번호로 회원 조회
	@Override
	public UserVo selectUserByUserno(int userno) {
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByUserno", userno);
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
	
	// 닉네임으로 회원 조회
	@Override
	public UserVo selectUserByNickname(String nickname) {
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByNickname", nickname);
		return userVo;
	}
	
	// 이메일로 회원 조회
	@Override
	public UserVo selectUserByEmailAndUserid(String email, String userid) {
		Map<String, Object> map = new HashMap<>();
		map.put("email", email);
		map.put("userid", userid);
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByEmailAndUserid", map);
		return userVo;
	}

	// 간편로그인 아이디와 종류로 회원 조회
	@Override
	public UserVo selectUserBySnsIdAndType(String sns_id, String sns_type) {
		Map<String, Object> map = new HashMap<>();
		map.put("sns_id", sns_id);
		map.put("sns_type", sns_type);
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserBySnsIdAndType", map);
		return userVo;
	}

	// 회원 이름과 이메일로 회원 조회
	@Override
	public UserVo selectUserByUsernameAndEmail(String username, String email) {
		Map<String, Object> map = new HashMap<>();
		map.put("username", username);
		map.put("email", email);
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByUsernameAndEmail", map);
		return userVo;
	}
	// 유저 번호와 비밀번호로 유저 조회
	@Override
	public UserVo selectUserByUsernoAndUserpw(int userno, String userpw) {
		Map<String, Object> map = new HashMap<>();
		map.put("userno", userno);
		map.put("userpw", userpw);
		UserVo userVo = sqlSession.selectOne(NAMESPACE + "selectUserByUsernoAndUserpw", map);
		return userVo;		
	}
	
	// 회원 목록 조회
	@Override
	public List<UserVo> userList() {
		List<UserVo> userList = sqlSession.selectList(NAMESPACE + "userList");
		return userList;
	}
	
	// 총 유저 수 조회
	@Override
	public int getCountUserList() {
		int count = sqlSession.selectOne(NAMESPACE + "getCountUserList");
		return count;
	}
	
	// 기존 회원 목록 조회
	@Override
	public List<UserVo> originUserList(PagingDto pagingDto) {
		List<UserVo> originUserList = sqlSession.selectList(NAMESPACE + "originUserList", pagingDto);
		return originUserList;
	}
	
	// 기존 회원수 조회
	@Override
	public int getCountOriginUserList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountOriginUserList", pagingDto);
		return count;
	}

	// 간편로그인 회원 목록 조회
	@Override
	public List<UserVo> snsUserList(PagingDto pagingDto) {
		List<UserVo> snsUserList = sqlSession.selectList(NAMESPACE + "snsUserList", pagingDto);
		return snsUserList;
	}
	
	// 간편로그인 회원수 조회
	@Override
	public int getCountSnsUserList(PagingDto pagingDto) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountSnsUserList", pagingDto);
		return count;
	}
	
	// 각 간편로그인 유저 수 조회
	@Override
	public int getCountEachSnsUserList(String sns_type) {
		int count = sqlSession.selectOne(NAMESPACE + "getCountEachSnsUserList", sns_type);
		return count;
	}
	
	// 회원 정보 수정
	@Override
	public boolean updateUser(UserVo userVo) {
		int count = sqlSession.update(NAMESPACE + "updateUser", userVo);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 회원 비밀번호 수정
	@Override
	public boolean updateUserpw(String userid, String userpw) {
		Map<String, Object> map = new HashMap<>();
		map.put("userid", userid);
		map.put("userpw", userpw);
		int count = sqlSession.update(NAMESPACE + "updateUserpw", map);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 유저 포인트 수정
	@Override
	public boolean updateUserPoint(int point, int userno) {
		Map<String, Integer> map = new HashMap<>();
		map.put("point", point);
		map.put("userno", userno);
		int count = sqlSession.update(NAMESPACE + "updateUserPoint", map);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 유저 프로필사진 수정
	@Override
	public boolean updateProfileImage(String profile_image, int userno) {
		Map<String, Object> map = new HashMap<>();
		map.put("profile_image", profile_image);
		map.put("userno", userno);
		int count = sqlSession.update(NAMESPACE + "updateProfileImage", map);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 회원 삭제
	@Override
	public boolean deleteUser(int userno) {
		int count = sqlSession.update(NAMESPACE + "deleteUser", userno);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 다중 유저 정지
	@Override
	public boolean multiUserSuspend(List<Integer> list) {
		int count = sqlSession.update(NAMESPACE + "multiUserSuspend", list);
		if(count > 0) {
			return true;
		}
		return false;
	}
	
	// 다중 유저 복구
	public boolean multiUserRecover(List<Integer> list) {
		int count = sqlSession.update(NAMESPACE + "multiUserRecover", list);
		if(count > 0) {
			return true;
		}
		return false;		
	}
}

