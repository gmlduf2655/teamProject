package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.EventVo;

public interface EventDao {
	public List<EventVo> list(); //게시글 리스트
	public boolean insert(EventVo eventVo); //게시글 작성
	public boolean modify(EventVo eventVo); //게시글 수정
	public boolean delete(int event_no); //게시글 삭제
	public EventVo readContent(int event_no); // 게시글 읽기
	public void viewConuntUpdate(int event_no); // 조회수 증가

}
