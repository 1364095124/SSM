package org.fkit.personalmvc;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.fkit.personalmvc.Personal;
import org.fkit.test.Manager;
public class Personal implements HandlerInterceptor{
	private static final String[] allow_url={"/login","/home"};
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception)
			throws Exception {
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView mv) throws Exception {
		
	}
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
		boolean flag=false;
		String servletPath=request.getServletPath();
		
		for(String s:allow_url){
			if(servletPath.contains(s)){
				flag=true;
				break;
			}
		}
		if(!flag){
			Manager manager=(Manager)request.getSession().getAttribute("user_session");
			if(manager==null){
				request.setAttribute("message","请先登录");
				request.getRequestDispatcher("login").forward(request, response);	
			}
			else{
				flag=true;
			}
		}
		return flag;
	}
}
