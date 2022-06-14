package com.kh.team.dao;

import com.kh.team.vo.MovieLikeVo;

public interface MovieLikeDao {
	public boolean insertLike(MovieLikeVo movieLikeVo);
	public boolean isLike(int movie_no, String userid);
	public int countLike(int movie_no);
	public boolean deleteLike(int movie_no, String userid);
}