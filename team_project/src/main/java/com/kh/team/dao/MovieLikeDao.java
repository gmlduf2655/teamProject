package com.kh.team.dao;

import java.util.List;

import com.kh.team.vo.MovieLikeVo;
import com.kh.team.vo.MovieVo;

public interface MovieLikeDao {
	public boolean insertLike(MovieLikeVo movieLikeVo);
	public boolean isLike(int movie_no, String userid);
	public int countLike(int movie_no);
	public boolean deleteLike(int movie_no, String userid);
	// 임희열 : 유저가 좋아요 누른 영화 조회
	public List<MovieVo> selectLikeMovieListByuserid(String userid);
}
