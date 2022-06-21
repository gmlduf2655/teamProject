package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieCommentVo;

public interface MovieCommentDao {

	public boolean commentInsert(MovieCommentVo commentVo);
	public List<MovieCommentVo> commentList(String movie_code);
	public boolean commentUpdate(MovieCommentVo commentVo);
	public boolean commentDelete(int cno);
	public boolean commentAdminUpdate(int cno);
}
