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
		UserVo userVo = new UserVo("user02", "1234", "유저 2별명", "유저", "user02@naver.com", "한국", "01012345678", 
				0, null, "1", null);
		boolean result = userService.signUp(userVo);
		System.out.println("UserServiceTest, testSignup, result : " + result);
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
		UserVo userVo = new UserVo("user02", "1234", "유저 2별명", "유저", "user02@naver.com", "한국", "01012345678", 
				0, null, "1", null);
		boolean result = userService.updateUser(userVo);
		System.out.println("UserServiceTest, testUpdate, result : " + result);
	}	
	// 회원 탈퇴 테스트
	@Test
	public void testUnregister() {
		boolean result = userService.unregister("user02");
		System.out.println("UserServiceTest, testUnregister, result : " + result);
	}
}
