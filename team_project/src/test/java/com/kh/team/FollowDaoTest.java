package com.kh.team;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.FollowDao;
import com.kh.team.dao.MovieDao;
import com.kh.team.vo.FollowVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class FollowDaoTest {
	@Autowired
	FollowDao followDao;
	@Autowired
	MovieDao movieDao;
	
	// 팔로우 내역 추가 테스트
	@Test
	public void testInsertFollow() {
		boolean result = followDao.insertFollow(19, 1);
		System.out.println("FollowDaoTest, testInsertFollow, result : " + result);
	}
	
	// 팔로워 수 조회 테스트
	@Test
	public void testSelectFollowerNumber() {
		int count = followDao.selectFollowerNumber(19);
		System.out.println("FollowDaoTest, testSelectFollowerNumber, count : " + count);
	}
	
	// 팔로우 수 조회 테스트
	@Test
	public void testSelectFollowNumber() {
		int count = followDao.selectFollowNumber(1);
		System.out.println("FollowDaoTest, testSelectFollowNumber, count : " + count);		
	}
	
	// 팔로우 여부 조회 테스트
	@Test
	public void testSelectFollow() {
		boolean result = followDao.selectFollow(19, 1);
		System.out.println("FollowDaoTest, testSelectFollow, result : " + result);
	}
	
	// 팔로우 내역 조회 테스트
	@Test
	public void testDeleteFollow() {
		boolean result = followDao.deleteFollow(19, 1);
		System.out.println("FollowDaoTest, testDeleteFollow, result : " + result);		
	}	
	
	// 임희열 : 장르별 영화 수 테스트
	@Test
	public void testGetCountMovieGroupByGenre() {
		List<Map<String,Object>> listMap = movieDao.getCountMovieGroupByGenre();
		System.out.println("FollowDaoTest, testGetCountMovieGroupByGenre, listMap : " + listMap);
		for(Map<String,Object> map : listMap) {
			System.out.println("count : " + map.get("count"));
			System.out.println("movie_genre : " + map.get("movie_genre"));
		}
	}
}
