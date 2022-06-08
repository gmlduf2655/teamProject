package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.FollowDao;
import com.kh.team.service.FollowService;
import com.kh.team.vo.FollowVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class FollowServiceTest {
	@Autowired
	FollowService followService;
	
	// 팔로우 내역 추가 테스트
	@Test
	public void testInsertFollow() {
		FollowVo followVo = new FollowVo(0, 19, 1, null);
		boolean result = followService.insertFollow(followVo);
		System.out.println("FollowServiceTest, testInsertFollow, result : " + result);
	}
	// 팔로워 수 조회 테스트
	@Test
	public void testSelectFollowerNumber() {
		int count = followService.selectFollowerNumber(19);
		System.out.println("FollowServiceTest, testSelectFollowerNumber, count : " + count);
	}
	// 팔로우 수 조회 테스트
	@Test
	public void testSelectFollowNumber() {
		int count = followService.selectFollowNumber(1);
		System.out.println("FollowServiceTest, testSelectFollowNumber, count : " + count);		
	}
	// 팔로우 내역 조회 테스트
	@Test
	public void testDeleteFollow() {
		boolean result = followService.deleteFollow(19, 1);
		System.out.println("FollowServiceTest, testDeleteFollow, result : " + result);		
	}	
}
