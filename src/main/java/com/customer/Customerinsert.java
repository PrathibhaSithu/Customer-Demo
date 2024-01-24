	package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customerinsert
 */
@WebServlet("/	")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone= request.getParameter("mobileNo");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
			
		isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("HomePage.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2= request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
