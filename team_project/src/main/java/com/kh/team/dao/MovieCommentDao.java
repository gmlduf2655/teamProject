package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

public interface MovieCommentDao {

	public boolean commentInsert(MovieCommentVo commentVo);
	public List<MovieCommentVo> commentListuser(String userid,int startRow, int endRow);
	public boolean commentUpdate(MovieCommentVo commentVo);
	public boolean commentDelete(int cno);
	public boolean commentAdminUpdate(int cno,String admin_delete);
	public List<MovieCommentVo> commentListHole(PagingDto commentpagingDto);
	public int getCountmoviecomment(PagingDto commentpagingDto);
	public List<MovieCommentVo> commentListsection(String movie_code,int startRow, int endRow);
}
