package com.briup.estore.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.briup.estore.bean.Customer;

/**
 * 身份验证
 * */
public class AuthFilter implements Filter {

    public AuthFilter() {
    }

	public void destroy() {
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		
		HttpSession session = req.getSession();
		Customer customer = 
				(Customer) session.getAttribute("customer");
		//如果用户登录
		if(customer!=null){
			//调用下一个过滤器或者是servlet
			chain.doFilter(request, response);
		}else{
			req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
