package com.kh.team.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.FollowVo;

@Repository
public class FollowDaoImpl implements FollowDao {
	private final String NAMESPACE = "com.kh.team.mappers.follow.";
	
	@Autowired
	SqlSession sqlSession;
	
	// 팔로우 내역 추가
	@Override
	public boolean insertFollow(FollowVo followVo) {
		int count = sqlSession.insert(NAMESPACE + "insertFollow", followVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	// 팔로워 수 조회
	@Override
	public int selectFollowerNumber(int follower) {
		int count = sqlSession.selectOne(NAMESPACE + "selectFollowerNumber", follower);
		return count;
	}

	// 팔로우 수 조회
	@Override
	public int selectFollowNumber(int follow) {
		int count = sqlSession.selectOne(NAMESPACE + "selectFollowNumber", follow);
		return count;
	}

	// 팔로우 내역 삭제
	@Override
	public boolean deleteFollow(int follower, int follow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("follower", follower);
		map.put("follow", follow);
		int count = sqlSession.delete(NAMESPACE + "deleteFollow", map);
		if(count > 0) {
			return true;
		}
		return false;
	}

}
