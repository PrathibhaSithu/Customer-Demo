package com.customer;	

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
		List<Customer> cusDetails  = CustomerDBUtil.validate(username, password); // Assign the List Object which create on validate method
		request.setAttribute("cusDetails", cusDetails); //Set attributes to display
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
		dis.forward(request, response);	
			
	}

}
