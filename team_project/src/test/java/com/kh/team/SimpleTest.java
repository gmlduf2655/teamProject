package com.kh.team;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/*.xml")
public class SimpleTest {
	// 임희열 : JUnit Test 예시
	@Test
	public void simpleTest() {
		System.out.println("hello");
	}
}
