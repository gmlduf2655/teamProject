package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.EventVo;

public interface EventService {
	public List<EventVo> list(); //이벤트 게시글 리스트
	public boolean insert(EventVo eventVo); //이벤트 게시글 작성
	public boolean modify(EventVo eventVo); //이벤트 게시글 수정
	public boolean delete(int event_no); //이벤트 게시글 삭제
	public EventVo readContent(int event_no); // 게시글 읽기
}
