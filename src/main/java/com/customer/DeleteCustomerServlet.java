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
 * Servlet implementation class DeleteCustomerServlet
 */
@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String id = request.getParameter("cusid");
       boolean isTrue;
       
       isTrue = CustomerDBUtil.deleteCustomer(id);
       
       if(isTrue == true)
       {
    	   RequestDispatcher dispatcher = request.getRequestDispatcher("CusInsert.jsp");
    	   dispatcher.include(request, response);
       }
       else {
    	   List<Customer> cusDetails = 	CustomerDBUtil.getCustomerDetails(id);
    	   request.setAttribute("cusDetails", cusDetails);
    	   
    	   RequestDispatcher dispatcher = request.getRequestDispatcher("userAccount.jsp");
    	   dispatcher.include(request, response);
       }
	}

}
