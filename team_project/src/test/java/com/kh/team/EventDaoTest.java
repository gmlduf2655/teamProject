package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.EventDao;
import com.kh.team.vo.EventVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class EventDaoTest {
	
	@Autowired
	private EventDao eventDao;
	
	@Test
	public void testInsert() {
		EventVo eventVo = new EventVo("제목", "내용", null, null);
		boolean result = eventDao.insert(eventVo);
		System.out.println("result: "+ result);
	} 

}
