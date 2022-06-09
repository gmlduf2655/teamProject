package com.kh.team.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.team.vo.UserVo;

// 임희열 : 로그인이 필요한 페이지를 위한 인터셉터
public class LoginAuthInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		UserVo loginUserVo = (UserVo) session.getAttribute("loginUserVo");
		if(loginUserVo == null) {
			System.out.println("로그인이 되지 않았거나 끊김");
			String uri = request.getRequestURI();
			String queryString = request.getQueryString();
			String locationTarget = uri + "?" + queryString;
			session.setAttribute("locationTarget", locationTarget);
			response.sendRedirect("/user/login_form");
			return false;
		}
		return super.preHandle(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
