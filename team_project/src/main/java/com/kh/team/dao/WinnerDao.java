package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.WinnerPagingDto;
import com.kh.team.vo.WinnerVo;

public interface WinnerDao {
	public List<WinnerVo> list(WinnerPagingDto pagingDto); // 게시글 리스트
	public boolean insert(WinnerVo winnerVo); //게시글 작성
	public boolean modify(WinnerVo winnerVo); //게시글 수정
	public boolean delete(int winner_no); //게시글 삭제
	public WinnerVo readContent(int winner_no); // 게시글 읽기
	public void viewConuntUpdate(int winner_no); // 조회수 증가
	public int getCount(WinnerPagingDto pagingDto); //게시글 갯수

}
