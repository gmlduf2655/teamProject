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
		WinnerVo winnerVo = new WinnerVo("제목-4", "내용-4", null);
		boolean result = winnerDao.insert(winnerVo);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testInsert500() {
		for (int i = 1 ; i <= 500 ; i++) {
			WinnerVo winnerVo = new WinnerVo("제목-"+i, "내용-"+i, null);
			winnerDao.insert(winnerVo);
		}
	}
	
	@Test
	public void testModify() {
		WinnerVo winnerVo = new WinnerVo("제목-수정", "내용-수정", null);
		winnerVo.setWinner_no(2);
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
