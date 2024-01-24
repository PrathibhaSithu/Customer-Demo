package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {    // DBUtil eke thamai validate part eka hadaganne 
    
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt =null;
	private static ResultSet rs = null;
	
	
	
	public static List<Customer>validate(String name, String password){
		ArrayList<Customer> cus = new ArrayList<>(); 
		
		//validate part
		try {  
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql= "select * from customer where username='"+name+"' and password ='"+password+"'"; //Create database query and validate name and password
		    rs = stmt.executeQuery(sql); //Run the query and pass the SQL query
			
			if(rs.next()) //next() is boolean method its return two values they are TRUE and FALSE 
			{
				int id  = rs.getInt(1);
				String username  = rs.getString(2); 
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
			    String passU = rs.getString(6);
			    
			    Customer c = new Customer(id,username,email, phone,userU,passU); //Create object in customer class and pass values to variables in Constructor
			    cus.add(c); // Pass values Customer class object to ArrayList object	
			}
		}
		catch(Exception e)
		{
			e.printStackTrace(); // Display error message 
		}
	 
		return cus;
	}
	
	public static boolean insertcustomer(String name, String email, String phone, String username, String password)
	{
		boolean isSuccess = false;
		
		try
		{
			con = DBconnect.getConnection();
			stmt = con.createStatement();	 
			String sql= "insert into customer values(0, '"+name+"' , '"+email+"', '"+phone+"', '"+username+"', '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password)
	{
		try
		{
		 con = DBconnect.getConnection();
		 stmt = con.createStatement();
		 String sql= "update customer set name='"+ name+"', email='"+email+"' , phone='"+phone+"' , username ='"+username+"' , password='"+password+"'" + "where id='"+id+"'";
		 int rs = stmt.executeUpdate(sql);
		 
		 if(rs > 0)
		 {
			 isSuccess= true;
		 }
		 else
		 {
			 isSuccess= false;
		 }
		}
		catch(Exception e)
		{
			e .printStackTrace();
		}
		
		
		return isSuccess;
	}
	 public static List<Customer> getCustomerDetails(String Id)	{
		 
		 int convertedID =Integer.parseInt(Id);
		 ArrayList<Customer> cus = new ArrayList<>();
		 
		 try {
			 con = DBconnect.getConnection();
			 stmt=con.createStatement();
			 String sql = "select * from customer where id='"+convertedID+"' ";
			 rs = stmt.executeQuery(sql);
			 
			 while(rs.next())
			 {
				 int id = rs.getInt(1);
				 String name = rs.getString(2);
				 String email = rs.getString(3);
				 String phone = rs.getString(4);
				 String username = rs.getString(5);
				 String password= rs.getString(6);
				 
				 Customer c = new Customer(id,name,email,phone,username,password);
				 cus.add(c);
			 }
		 }
		 catch(Exception e) {
			
			 e.printStackTrace();
		 }
		 return cus;
	 }
	  
	 public static boolean deleteCustomer(String id)
	 {
		 int conID = Integer.parseInt(id);	
		 
		 try {
			 con = DBconnect.getConnection();
			 stmt = con.createStatement();
			 String sql = "delete from customer where id='"+conID	+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0)
			 {
				 isSuccess = true;
			 }
			 else
			 {
				 isSuccess = false;
			 }
			 
		 }
		 catch(Exception e) {
			 e.printStackTrace();
		 }
 
		 return isSuccess;
	 }
	 
}
    
