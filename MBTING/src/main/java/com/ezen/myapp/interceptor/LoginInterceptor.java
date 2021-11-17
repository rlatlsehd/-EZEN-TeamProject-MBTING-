package com.ezen.myapp.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	//로그인을 하고 난후 세션값을 담아놓는 역할 클래스
	
	@Override
	public void postHandle(
			HttpServletRequest request,
			HttpServletResponse response, 
			Object handler,
			ModelAndView modelAndView
			) throws Exception {
		
	Object memberid = modelAndView.getModel().get("memberid");
	
		if (memberid != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberid", memberid);
		}		
	}
	
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response, 
			Object handler) {
		
		//메소드 동작전에 세션값이 있으면 제거
		
		HttpSession session = request.getSession();
		if (session.getAttribute("memberid")  != null) {
			session.removeAttribute("memberid");
			session.invalidate();
		}
		return true;
	}
	
	
	
}
