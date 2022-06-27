package com.kh.team.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.team.vo.UserVo;

// 임희열 : 관리자만 들어갈 수 있는 페이지를 설정하기 위해 만듬
public class HostInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		UserVo loginUserVo = (UserVo) session.getAttribute("loginUserVo");
		// 임희열 : 로그인이 끊겼을 때 로그인 화면으로 이동
		if(loginUserVo == null) {
			response.sendRedirect("/user/login_form");
		}else if(loginUserVo.getUserid().equals("admin") && loginUserVo.getUserpw().equals("1234")){ // 임희열 : 관리자 계정일 때만 관리자 화면으로 이동하도록 함
			System.out.println("관리자 인증완료");
		}else { // 관리자 계정이 아닌 다른 계정이 접근 할 시 메인 페이지로 이동
			response.sendRedirect("/");
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
