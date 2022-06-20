package com.kh.team.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GetServerTimeDao {
	private final String NAMESPACE = "com.kh.team.mappers.get-time.";
	
	@Autowired
	private SqlSession sqlSession;

	public String getServerDate() {
		String time = sqlSession.selectOne(NAMESPACE + "getServerDate");
		 
		return time;
	}
	
	
}
