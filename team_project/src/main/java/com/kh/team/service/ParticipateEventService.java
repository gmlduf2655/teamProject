package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.ParticipateEventVo;

public interface ParticipateEventService {
	
	public boolean insert(ParticipateEventVo vo);// 작성
	public boolean delete(ParticipateEventVo vo);// 삭제
	public List<ParticipateEventVo> list();// 리스트 

}
