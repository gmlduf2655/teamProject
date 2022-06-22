package com.kh.team.interceptor;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.team.service.VisitNumberService;
import com.kh.team.vo.UserVo;
import com.kh.team.vo.VisitnumberVo;

// 임희열 : 방문자 수를 알기 위해 해당 인터셉트 사용
public class VisitorInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	VisitNumberService visitNumberService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String visited = (String) session.getAttribute("visited");
		if(visited == null) {
			
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONDAY) + 1;
			int day = cal.get(Calendar.DAY_OF_MONTH);
			
			// 오늘 방문자 수 내역이 만들어졌다면 방문자 수를 증가시키고 
			// 안만들어 졌다면 방문자 수 내역을 만듬
			if(visitNumberService.isTodayVisitNumberCreated(year, month, day)) {
				visitNumberService.plusVisitNumber(year, month, day);
				System.out.println("방문자 수 증가됨");
			}else {
				VisitnumberVo visitnumberVo = new VisitnumberVo();
				visitnumberVo.setYear(year);
				visitnumberVo.setMonth(month);
				visitnumberVo.setDay(day);
				visitnumberVo.setVisit_number(1);
				visitNumberService.addVisitNumberHistory(visitnumberVo);
				System.out.println("오늘 처음온 방문자");
			}
			visited = "true";
			session.setAttribute("visited", visited);
		}
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
