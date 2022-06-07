package com.kh.team;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.team.service.UserService;
import com.kh.team.vo.UserVo;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 임희열 : 로그인 세션 임시로 넣기 위해서 사용
	@Autowired
	private UserService userService;

	// 메인페이지로 이동
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		System.out.println("hello");
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		
		UserVo loginUserVo = userService.login("user01", "1234");
		if(loginUserVo != null) {
			session.setAttribute("loginUserVo", loginUserVo);
		}
		
		return "home";
	}
	
}
