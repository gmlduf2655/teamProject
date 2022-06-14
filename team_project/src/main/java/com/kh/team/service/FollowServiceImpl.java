package com.kh.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.team.dao.FollowDao;
import com.kh.team.vo.FollowVo;

@Service
public class FollowServiceImpl implements FollowService {
	@Autowired
	FollowDao followDao;
	
	// 팔로우 내역 추가
	@Override
	public boolean insertFollow(int follower, int follow) {
		boolean result = followDao.insertFollow(follower, follow);
		return result;
	}

	// 팔로워 수 조회
	@Override
	public int selectFollowerNumber(int follower) {
		int count = followDao.selectFollowerNumber(follower);
		return count;
	}

	// 팔로우 수 조회
	@Override
	public int selectFollowNumber(int follow) {
		int count = followDao.selectFollowNumber(follow);
		return count;
	}

	// 팔로우 여부 확인
	@Override
	public boolean isFollowed(int follower, int follow) {
		boolean result = followDao.selectFollow(follower, follow);
		return result;
	}	
	
	// 팔로우 내역 삭제
	@Override
	public boolean deleteFollow(int follower, int follow) {
		boolean result = followDao.deleteFollow(follower,follow);
		return result;
	}


}
