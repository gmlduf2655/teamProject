package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.WinnerDao;
import com.kh.team.vo.WinnerVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class WinnerDaoTest {
	
	@Autowired
	private WinnerDao winnerDao;
	
	@Test
	public void testInsert() {
		WinnerVo winnerVo = new WinnerVo("제목", "내용", null);
		boolean result = winnerDao.insert(winnerVo);
		System.out.println("result: "+ result);
	}

}
