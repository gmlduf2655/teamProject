package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

public interface MovieCommentService {
	public boolean commentInsert(MovieCommentVo commentVo);
	public List<MovieCommentVo> commentList(String movie_code);
	public boolean commentUpdate(MovieCommentVo commentVo);
	public boolean commentDelete(int cno);
	public boolean commentAdminUpdate(int cno);
	public List<MovieCommentVo> commentListHole(PagingDto pagingDto);
	public int getCount(PagingDto pagingDto);
}
