package com.kh.team;

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
	
	// 회원 정보 조회 테스트
	@Test
	public void testGetUserInfo() {
		UserVo userVo = userService.getUserInfo("user01");
		System.out.println("UserServiceTest, testGetUserInfo, userVo : " + userVo);
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
	
	// 로그인 테스트
	@Test
	public void testLogin() {
		UserVo userVo = userService.login("user02", "1234");
		System.out.println("UserServiceTest, testLogin, userVo : " + userVo);
	}
	
	// 유저정보 수정 테스트
	@Test
	public void testUpdateUser() {
		UserVo userVo = new UserVo("user03", "1234", "유저 3별명2", "유저", "user02@naver.com");
		boolean result = userService.updateUser(userVo);
		System.out.println("UserServiceTest, testUpdate, result : " + result);
	}	
	// 회원 탈퇴 테스트
	@Test
	public void testUnregister() {
		boolean result = userService.unregister("user03");
		System.out.println("UserServiceTest, testUnregister, result : " + result);
	}
	
	// 임시 비밀번호로 비밀번호 변경 테스트
	@Test
	public void testUpdateUserpwToTempPwd() {
		boolean result = userService.updateUserpwToTempPwd("user01@naver.com", "1234");
		System.out.println("UserServiceTest, testUpdateUserpwToTempPwd, result : " + result);
	}
}
