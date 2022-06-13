
package com.kh.team;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.ReviewDao;
import com.kh.team.vo.ReviewVo;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class ReviewDaoTest {
	
	@Autowired
	private ReviewDao reviewDao;
	
	@Test
	public void testInsert() {
		ReviewVo reviewVo = new ReviewVo("user01", "제목-2", "내용-2", 4);
		boolean result = reviewDao.insert(reviewVo);
		System.out.println("result: "+ result);
	} 
	
	@Test
	public void testModify() {
		ReviewVo reviewVo = new ReviewVo("user01", "제목-수정", "내용-수정", 1);
		reviewVo.setReview_no(2);
		boolean result = reviewDao.modify(reviewVo);
		System.out.println("result: "+ result);
	}
	
	@Test
	public void testDelete() {
		int review_no = 2;
		boolean result = reviewDao.delete(review_no);
		System.out.println("result: "+ result);
	}
	
//	@Test
//	public void testList() {
//		List<ReviewVo> reviewList = reviewDao.list();
//		System.out.println("reviewList: "+ reviewList);
//	}

}
