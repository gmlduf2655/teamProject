
package com.kh.team;

import java.sql.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kh.team.dao.GetServerTimeDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class ServerTimeTest {
	
	@Autowired
	private GetServerTimeDao getServerTimeDao;
	
	@Test
	public void getServerTimeTest() {
		String time = getServerTimeDao.getServerDate();
		System.out.println(time);
	}
	

}
