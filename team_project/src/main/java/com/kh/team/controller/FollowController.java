package com.kh.team.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.team.service.FollowService;
import com.kh.team.vo.FollowVo;

@Controller
@RequestMapping(value="/follow")
public class FollowController {
	@Autowired
	FollowService followService;

	@RequestMapping(value="/follow_user", method=RequestMethod.POST)
	@ResponseBody
	@Transactional
	public int followUser(int follower, int follow) {
		boolean result = false;
		if(followService.isFollowed(follower, follow)) {
			result = followService.deleteFollow(follower, follow);
		}else {
			result = followService.insertFollow(follower, follow);
		}
		
		int followerCount = followService.selectFollowerNumber(follower);
			
		return followerCount;
	}
}
