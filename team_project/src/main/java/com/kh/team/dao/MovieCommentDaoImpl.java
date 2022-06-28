package com.kh.team.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.team.vo.MovieCommentVo;
import com.kh.team.vo.PagingDto;

@Repository
public class MovieCommentDaoImpl implements MovieCommentDao {
	private final String NAMESPACE = "com.kh.team.mappers.moviecomment.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean commentInsert(MovieCommentVo commentVo) {
		int count = sqlSession.insert(NAMESPACE + "commentInsert", commentVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<MovieCommentVo> commentListuser(String userid,int startRow, int endRow) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("userid", userid);
		parameter.put("startRow", startRow);
		parameter.put("endRow", endRow);
		List<MovieCommentVo> commentlistuser = sqlSession.selectList(NAMESPACE + "commentListuser",parameter);
		return commentlistuser;
	} 

	@Override
	public boolean commentUpdate(MovieCommentVo commentVo) {
		int count = sqlSession.update(NAMESPACE + "commentUpdate", commentVo);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean commentDelete(int cno) {
		int count = sqlSession.delete(NAMESPACE + "commentDelete", cno);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean commentAdminUpdate(int cno, String admin_delete) {
		Map<String, Object> parameter = new HashMap<String, Object>();
		parameter.put("admin_delete", admin_delete);
		parameter.put("cno", cno);
		int count = sqlSession.update(NAMESPACE + "commentAdminUpdate", parameter);
		if(count > 0) {
			return true;
		}
		return false;
	}

	@Override
	public List<MovieCommentVo> commentListHole(PagingDto commentpagingDto) {
		List<MovieCommentVo> commentListhole = sqlSession.selectList(NAMESPACE+"commentListHole",commentpagingDto);
		return commentListhole;
	}

	@Override
	public int getCountmoviecomment(PagingDto commentpagingDto) {
		String searchType = commentpagingDto.getSearchType();
		String keyword = commentpagingDto.getKeyword();
		int count = 0;
		if(searchType == null || keyword == null) {
			count = sqlSession.selectOne(NAMESPACE+"getCountmoviecomment");
		} else {
			Map<String, String> parameter = new HashMap<String, String>();
			parameter.put("searchType",searchType );
			parameter.put("keyword", keyword);
			count = sqlSession.selectOne(NAMESPACE+"getCountmoviecomment",parameter);
		}
		System.out.println("count, commentpagingDto" + commentpagingDto);
		return count;
	}

	@Override
	public List<MovieCommentVo> commentListsection(String movie_code, int startRow, int endRow) {
		Map<String, Object> parameter = new HashMap<>();
		parameter.put("movie_code", movie_code);
		parameter.put("startRow", startRow);
		parameter.put("endRow", endRow);
		List<MovieCommentVo> movieCommentList = sqlSession.selectList(NAMESPACE+ "commentListsection", parameter);
		return movieCommentList;
	}

	


}
