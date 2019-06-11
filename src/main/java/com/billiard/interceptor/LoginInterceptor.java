package com.billiard.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginInterceptor implements HandlerInterceptor {
	private static final Logger log = LoggerFactory.getLogger(LoginInterceptor.class);
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		
		
		  String urlString = request.getRequestURI();
          
	        ///olForum/forumList.html模拟登录页
	        if(urlString.indexOf("admin/login")>-1){
	            return true;
	        }
		 HttpSession session = request.getSession();
			Object attribute = session.getAttribute("admin_user");
		          //判断session中是否有用户数据，如果有，则返回true，继续向下执行
		         if (attribute != null) {
		             return true;
		          }
		         log.info("管理员登录超时！");
		         response.sendRedirect(request.getContextPath()+"/System_login.jsp");  
		return false;
	}

}
