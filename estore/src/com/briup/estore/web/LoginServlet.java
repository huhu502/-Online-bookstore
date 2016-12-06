package com.briup.estore.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.briup.estore.bean.Customer;
import com.briup.estore.common.exception.CustomerServiceException;
import com.briup.estore.service.ICustomerService;
import com.briup.estore.service.impl.CustomerServiceImpl;

/**
 * 登陆
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		ICustomerService customerService = new CustomerServiceImpl();
		
		String url = "/toIndex";
		// 判断用户是否已经登陆
		HttpSession session = request.getSession();
		Customer customer 
			= (Customer) session.getAttribute("customer");
		if(customer == null){
			try {
				//customer已经登录成功用户
				customer = customerService.login(name, password);
				session.setAttribute("customer", customer);
			} catch (CustomerServiceException e) {
				e.printStackTrace();
				request.setAttribute("msg", e.getMessage());
				url = "WEB-INF/jsp/error.jsp";
			}
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
