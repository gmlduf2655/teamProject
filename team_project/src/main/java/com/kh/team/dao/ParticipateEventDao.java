package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;

public interface ParticipateEventDao {
	
	public boolean insert(ParticipateEventVo vo);// 작성
	public boolean delete(int participate_no);// 삭제
	public List<ParticipateEventVo> list(PagingDto pagingDto);// 리스트 
	public int getCount(PagingDto pagingDto); //게시글 갯수
	public List<ParticipateEventVo> adminList(PagingDto pagingDto); // 관리자가 보는 이벤트 참여자 리스트
	public boolean winnerUpdate(ParticipateEventVo vo); // 이벤트 당첨자 업데이트 
}
