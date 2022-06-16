package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.PagingDto;
import com.kh.team.vo.ParticipateEventVo;

public interface ParticipateEventDao {
	
	public boolean insert(ParticipateEventVo vo);// 작성
	public boolean delete(ParticipateEventVo vo);// 삭제
	public List<ParticipateEventVo> list(PagingDto pagingDto);// 리스트 
	public int getCount(PagingDto pagingDto); //게시글 갯수
}
