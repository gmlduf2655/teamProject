package com.kh.team.service;

import com.kh.team.vo.FollowVo;

public interface FollowService {
	// 팔로우 내역 추가
	public boolean insertFollow(int follower, int follow);
	// 팔로워 수 조회
	public int selectFollowerNumber(int follower);
	// 팔로우 수 조회
	public int selectFollowNumber(int follow);
	// 팔로우 여부 확인
	public boolean isFollowed(int follower, int follow);
	// 팔로우 내역 삭제
	public boolean deleteFollow(int follower, int follow);
}
