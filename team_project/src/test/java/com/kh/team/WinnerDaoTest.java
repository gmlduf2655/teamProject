package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.WinnerDao;
import com.kh.team.vo.EventVo;
import com.kh.team.vo.WinnerVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class WinnerDaoTest {
	
	@Autowired
	private WinnerDao winnerDao;
	
	@Test
	public void testInsert() {
		WinnerVo winnerVo = new WinnerVo("제목-3", "내용-3", null);
		boolean result = winnerDao.insert(winnerVo);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testModify() {
		WinnerVo winnerVo = new WinnerVo("제목-수정", "내용-수정", null);
		boolean result = winnerDao.modify(winnerVo);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testDelete() {
		int winner_no = 1;
		boolean result = winnerDao.delete(winner_no);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testList() {
		List<WinnerVo> winnerList = winnerDao.list();
		System.out.println("winnerList: "+ winnerList);
	}
	

}
