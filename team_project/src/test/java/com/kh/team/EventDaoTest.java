package com.kh.team;

import java.util.List;

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
		EventVo eventVo = new EventVo("제목-5", "내용-5", null, null);
		boolean result = eventDao.insert(eventVo);
		System.out.println("result: "+ result);
	} 
	
	@Test
	public void testModify() {
		EventVo eventVo = new EventVo("제목-수정", "내용-수정", null, null);
		boolean result = eventDao.modify(eventVo);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testDelete() {
		int event_no = 1;
		boolean result = eventDao.delete(event_no);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testList() {
		List<EventVo> eventList = eventDao.list();
		System.out.println("eventList: "+ eventList);
	}

}
