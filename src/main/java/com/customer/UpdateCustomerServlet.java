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
 * Servlet implementation class UpdateCustomerServlet
 */
@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id= request.getParameter("cusid");
		String name= request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username= request.getParameter("uname");
		String password =  request.getParameter("password");
 		
		boolean isTrue;
		
       isTrue = CustomerDBUtil.updatecustomer(id, name, email, phone, username, password);
    		   if(isTrue == true)
    		   {
    			   
    			   List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
    			   request.setAttribute("cusDetails", cusDetails);
    			   
    			   RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp"); // TO use for redirect to userAccount page
    			   dis.forward(request, response);
    		   }
    		   else {
    			   
    			   List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
    			   request.setAttribute("cusDetails", cusDetails);
    			   
    			   RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
    			   dis.forward(request, response);
    		   }
	}

}
