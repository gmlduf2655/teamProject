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
	public boolean followUser(int follower, int follow) {
		boolean result = false;
		boolean isFollowed = followService.isFollowed(follower, follow);
		if(isFollowed) {
			result = followService.deleteFollow(follower, follow);
		}else {
			result = followService.insertFollow(follower, follow);
		}
			
		return isFollowed;
	}
	
	@RequestMapping(value="/check_follow", method=RequestMethod.POST)
	@ResponseBody
	public boolean checkFollow(int follower, int follow) {
		boolean result = followService.isFollowed(follower, follow);
		return result;
	}
}
