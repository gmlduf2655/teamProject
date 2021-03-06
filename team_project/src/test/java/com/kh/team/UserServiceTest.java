package com.kh.team;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.service.UserService;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class UserServiceTest {
	@Autowired
	UserService userService;
	
	// 회원가입 테스트
	@Test
	public void testSignup() {
		UserVo userVo = new UserVo("user02", "1234", "유저 2별명", "유저2", "user02@naver.com");
		userVo.setAddress("한국");
		userVo.setCellphone("01012345678");
		boolean result = userService.signUp(userVo);
		System.out.println("UserServiceTest, testSignup, result : " + result);
	}
	
	// 간편로그인 회원추가 테스트
	@Test
	public void testAddSnsUser() {
		UserVo userVo = new UserVo(null, null, "유저03 별명", "유저03", null);
		userVo.setCellphone("01012345678");
		userVo.setSns_id("user03");
		userVo.setSns_type("naver");
		
		System.out.println("userVo : " + userVo);
		boolean result = userService.addSnsUser(userVo);
		System.out.println("UserDaoTest, testInsetSnsUser, result : " + result);		
	}
	
	// 회원 정보 조회 테스트
	@Test
	public void testGetUserInfo() {
		UserVo userVo = userService.getUserInfo("user01");
		System.out.println("UserServiceTest, testGetUserInfo, userVo : " + userVo);
	}
	
	// 유저번호로 회원정보 조회 테스트
	@Test
	public void testGetUserInfoByUserno() {
		UserVo userVo = userService.getUserInfoByUserno(1);
		System.out.println("UserServiceTest, testGetUserInfoByUserno, userVo : " + userVo);		
	}
	
	// 회원 목록 조회 테스트
	@Test
	public void testGetUserList() {
		List<UserVo> userList = userService.getUserList();
		for(UserVo userVo : userList) {
			System.out.println("userServiceTest, testGetUserTest, userVo : " + userVo);
		}
	}

	// 총 유저 수 조회
	@Test
	public void testGetCountUserList() {
		int count = userService.getCountUserList();
		System.out.println("userServiceTest, testGetCountUserList, count : " + count);
	}	
	
	// 기존회원 목록 조회 테스트
	@Test
	public void testGetOriginUserList() {
		List<UserVo> userList = userService.getOriginUserList(null);
		for(UserVo userVo : userList) {
			System.out.println("userServiceTest, testGetOriginUserTest, userVo : " + userVo);
		}
	}
	
	// 기존 회원수 조회 테스트
	@Test
	public void testGetCountOriginUserList() {
		int count = userService.getCountOriginUserList(null);
		System.out.println("userServiceTest, testGetCountOriginUserList, count : " + count);
	}
	
	// 간편로그인회원 목록 조회 테스트
	@Test
	public void testGetSnsUserList() {
		List<UserVo> userList = userService.getSnsUserList(null);
		for(UserVo userVo : userList) {
			System.out.println("userServiceTest, testGetSnsUserTest, userVo : " + userVo);
		}
	}

	// 간편로그인 회원수 조회 테스트
	@Test
	public void testGetCountSnsUserList() {
		int count = userService.getCountSnsUserList(null);
		System.out.println("userServiceTest, testGetCountSnsUserList, count : " + count);
	}	
	
	// 아이디 중복체크 테스트
	@Test
	public void testUseridDuplCheck() {
		boolean result = userService.useridDuplCheck("user01");
		System.out.println("UserServiceTest, testUseridDuplCheck, result : " + result);
	}
	
	// 닉네임 중복체크 테스트
	@Test
	public void testNicknameDuplCheck() {
		boolean result = userService.nicknameDuplCheck("누구인가");
		System.out.println("UserServiceTest, testNicknameDuplCheck, result : " + result);
	}
	// 간편로그인 회원 중복체크
	@Test
	public void testSnsUserDuplCheck() {
		boolean result = userService.snsUserDuplCheck("user03", "naver");
		System.out.println("UserServiceTest, testSnsUserDuplCheck, result : " + result);
	}
	
	// 간편로그인 아이디와 타입으로 회원 정보 조회
	@Test
	public void testGetUserBySnsIdAndType() {
		UserVo userVo = userService.getUserBySnsIdAndType("gmlduf2655", "naver");
		System.out.println("UserServiceTest, testGetUserBySnsIdAndType, userVo : " + userVo);
	}
	
	// 회원번호와 회원타입으로 회원 아이디 조회 테스트
	@Test
	public void testGetUseridByUsernoAndSnsType() {
		String userid = userService.getUseridByUsernoAndSnsType(25, "naver");
		System.out.println("UserServiceTest, testGetUseridByUsernoAndSnsType, userid : " + userid);
	}
	
	// 회원번호로 회원 아이디 조회 테스트
	@Test
	public void testGetUseridByUserno() {
		String userid = userService.getUseridByUserno(1);
		System.out.println("UserServiceTest, testGetUseridByUserno, userid : " + userid);
	}
	
	// 회원아이디와 회원타입으로 회원 번호 조회 테스트
	@Test
	public void testGetUsernoByUseridAndSnsType() {
		int userno = userService.getUsernoByUseridAndSnsType("gmlduf2655", null);
		System.out.println("UserServiceTest, testGetUseridByUsernoAndSnsType, userno : " + userno);
	}
	
	// 회원 이름과 이메일로 회원 아이디 조회 테스트
	@Test
	public void testGetUseridByUsernameAndEmail() {
		String userid = userService.getUseridByUsernameAndEmail("유저1", "user01@naver.com");
		System.out.println("UserServiceTest, testGetUseridByUsernameAndEmail, userid : " + userid);
	}
	
	// 유저 번호와 비밀번호로 유저 조회 테스트
	@Test
	public void testGetUserByUsernoAndUserpw() {
		UserVo userVo = userService.getUserByUsernoAndUserpw(1, "1234");
		System.out.println("UserServiceTest, testGetUserByUsernoAndUserpw, userVo : " + userVo);
	}
	
	// 로그인 테스트
	@Test
	public void testLogin() {
		UserVo userVo = userService.login("user02", "1234");
		System.out.println("UserServiceTest, testLogin, userVo : " + userVo);
	}
	
	// 유저정보 수정 테스트
	@Test
	public void testModifyUser() {
		UserVo userVo = new UserVo("user03", "1234", "유저 3별명2", "유저", "user02@naver.com");
		boolean result = userService.modifyUser(userVo);
		System.out.println("UserServiceTest, testUpdate, result : " + result);
	}	
	
	// 회원 탈퇴 테스트
	@Test
	public void testUnregister() {
		boolean result = userService.unregister(1);
		System.out.println("UserServiceTest, testUnregister, result : " + result);
	}
	
	// 유저 비밀번호 변경 테스트
	@Test
	public void testModifyUserpw() {
		boolean result = userService.modifyUserpw("user01", "1234");
		System.out.println("UserServiceTest, testModifyUserpw, result : " + result);
	}
	
	// 유저 프로필사진 수정 테스트
	@Test
	public void testModifyProfileImage() {
		boolean result = userService.modifyProfileImage("", 1);
		System.out.println("UserServiceTest, testModifyProfileImage, result : " + result);		
	}
	
	// 임시 비밀번호로 비밀번호 변경 테스트
	@Test
	public void testUpdateUserpwToTempPwd() {
		boolean result = userService.updateUserpwToTempPwd("user01@naver.com", "user01","1234");
		System.out.println("UserServiceTest, testUpdateUserpwToTempPwd, result : " + result);
	}
	
	// 다중 유저 정지 테스트
	@Test
	public void testMultiUserSuspend() {
		List<Integer> list = new ArrayList<>();
		list.add(1);
		boolean result = userService.multiUserSuspend(list);
		System.out.println("UserServiceTest, testMultiUserSuspend, result : " + result);
	}
	
	// 다중 유저 복구 테스트
	@Test
	public void testMultiUserRecover() {
		List<Integer> list = new ArrayList<>();
		list.add(1);
		boolean result = userService.multiUserRecover(list);
		System.out.println("UserServiceTest, testMultiUserRecover, result : " + result);
	}
}
