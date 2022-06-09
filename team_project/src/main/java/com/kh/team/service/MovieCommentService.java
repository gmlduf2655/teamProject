package com.kh.team.service;

import java.util.List;

import com.kh.team.vo.MovieCommentVo;

public interface MovieCommentService {
	public boolean commentInsert(MovieCommentVo commentVo);
	public List<MovieCommentVo> commentList(String movie_code);
	public boolean commentUpdate(MovieCommentVo commentVo);
	public boolean commentDelete(int cno);
}
