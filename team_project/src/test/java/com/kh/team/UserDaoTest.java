package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.UserDao;
import com.kh.team.vo.UserVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class UserDaoTest {
	@Autowired
	UserDao userDao;
	
	// 회원추가 테스트
	@Test
	public void testInsertUser() {
		UserVo userVo = new UserVo("user01", "1234", "유저 1별명", "유저", "user01@naver.com", "한국", "01012345678", 
									0, null, "1", null);
		System.out.println("userVo : " + userVo);
		boolean result = userDao.insertUser(userVo);
		System.out.println("UserDaoTest, testInsetUser, result : " + result);
	}
	
	// 아이디로 회원 조회하기 테스트
	@Test
	public void testSelectUserById() {
		UserVo userVo = userDao.selectUserById("user01");
		System.out.println("UserDaoTest, testSelectUserById, userVo : " + userVo);
	}
	
	// 아이디, 비밀번호로 회원 조회하기 테스트
	@Test
	public void testSelectUserByIdAndPwd() {
		UserVo userVo = userDao.selectUserByIdAndPwd("user01","1234");
		System.out.println("UserDaoTest, testSelectUserByIdAndPwd, userVo : " + userVo);
	}	
	
	// 회원 목록 조회 테스트
	@Test
	public void testUserList() {
		List<UserVo> userList = userDao.userList();
		for(UserVo userVo : userList) {
			System.out.println("UserDaoTest, userList, userVo : " + userVo);
		}
	}
	
	// 유저 정보 수정 테스트
	@Test
	public void testUpdateUser() {
		UserVo userVo = new UserVo("user01", "1234", "유저 1별명2", "유저", "user01@naver.com", "한국 어딘가", "01087654321", 
									0, null, "1", null);
		boolean result = userDao.updateUser(userVo);
		System.out.println("UserDaoTest, testUpdateUser, result : " + result);		
	}
	
	// 유저 정보 삭제 테스트
	@Test
	public void testDeleteUser() {
		boolean result = userDao.deleteUser("user01");
		System.out.println("UserDaoTest, testDeleteUser, result : " + result);		
	}
}