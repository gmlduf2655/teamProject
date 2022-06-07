
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
		UserVo userVo = new UserVo("user03", "1234", "유저03 별명", "유저03", "user03@naver.com");
		System.out.println("userVo : " + userVo);
		boolean result = userDao.insertUser(userVo);
		System.out.println("UserDaoTest, testInsetUser, result : " + result);
	}
	
	// 간편로그인 회원추가 테스트
	@Test
	public void testInsertSnsUser() {
		UserVo userVo = new UserVo(null, null, "유저03 별명", "유저03", null);
		userVo.setCellphone("01012345678");
		userVo.setSns_id("user03");
		userVo.setSns_type("naver");
		
		System.out.println("userVo : " + userVo);
		boolean result = userDao.insertSnsUser(userVo);
		System.out.println("UserDaoTest, testInsetSnsUser, result : " + result);
	}
	
	// 아이디로 회원 조회하기 테스트
	@Test
	public void testSelectUserById() {
		UserVo userVo = userDao.selectUserById("user01");
		System.out.println("UserDaoTest, testSelectUserById, userVo : " + true);
	}
	
	// 아이디, 비밀번호로 회원 조회하기 테스트
	@Test
	public void testSelectUserByIdAndPwd() {
		UserVo userVo = userDao.selectUserByIdAndPwd("user01","1234");
		System.out.println("UserDaoTest, testSelectUserByIdAndPwd, userVo : " + userVo);
	}	
	
	// 닉네임으로 회원 조회하기 테스트
	@Test 
	public void testSelectUserByNickname() {
		UserVo userVo = userDao.selectUserByNickname("누구인가");
		System.out.println("UserDaoTest, testSelectUserByNickname, userVo : " + userVo);
	}
	
	// 이메일로 회원 조회하기 테스트
	@Test 
	public void testSelectUserByEmail() {
		UserVo userVo = userDao.selectUserByEmail("user01@naver.com");
		System.out.println("UserDaoTest, testSelectUserByEmail, userVo : " + userVo);
	}
	
	// 간편로그인 아이디와 종류로 회원 조회 테스트
	@Test
	public void testSelectUserBySnsIdAndType() {
		UserVo userVo = userDao.selectUserBySnsIdAndType("user03", "naver");
		System.out.println("UserDaoTest, testSelectUserBySnsIdAndType, userVo : " + userVo);
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
//		UserVo userVo = new UserVo("user01", "1234", "유저1 별명", "유저1", "user01@naver.com", "한국 어딘가", "01012345678", 
//									0, null, "1", null, null, null, null, null);
		UserVo userVo = new UserVo("user03", "1234", "유저03 별명2", "유저03", "user03@naver.com");
		boolean result = userDao.updateUser(userVo);
		System.out.println("UserDaoTest, testUpdateUser, result : " + result);		
	}
	
	@Test
	// 유저 비밀번호 수정 테스트
	public void testUpdateUserpw() {
		boolean result = userDao.updateUserpw("user01", "1234");
		System.out.println("UserDaoTest, testUpdateUserpw, result : " + result);
	}
	
	// 유저 정보 삭제 테스트
	@Test
	public void testDeleteUser() {
		boolean result = userDao.deleteUser("user03");
		System.out.println("UserDaoTest, testDeleteUser, result : " + result);		
	}
	
}