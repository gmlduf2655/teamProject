package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.EventVo;
import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ReviewPagingDto;

public interface EventDao {
	
	public List<EventVo> list(PagingDto pagingDto); //게시글 리스트
	public boolean insert(EventVo eventVo); //게시글 작성
	public boolean modify(EventVo eventVo); //게시글 수정
	public boolean delete(int event_no); //게시글 삭제
	public EventVo readContent(int event_no); // 게시글 읽기
	public void viewConuntUpdate(int event_no); // 조회수 증가
	public List<EventVo> nowEventlist(PagingDto pagingDto); // 현재 진행중 리스트
	public List<EventVo> lastEventlist(PagingDto pagingDto); // 지난 이벤트 리스트 
	public int getCount(PagingDto pagingDto); //게시글 갯수

}
