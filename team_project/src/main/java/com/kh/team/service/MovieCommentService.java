package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

public interface MovieCommentService {
	public boolean commentInsert(MovieCommentVo commentVo);
	public List<MovieCommentVo> commentListuser(String userid);
	public boolean commentUpdate(MovieCommentVo commentVo);
	public boolean commentDelete(int cno);
	public boolean commentAdminUpdate(int cno, String admin_delete);
	public List<MovieCommentVo> commentListHole(PagingDto commentpagingDto);
	public int getCountmoviecomment(PagingDto commentpagingDto);
	public List<MovieCommentVo> commentListsection(String movie_code,int startRow, int endRow);
}
