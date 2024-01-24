package com.customer;

public class Customer {
     private int id;         // create variables in customer class
     private String name;    // create customer name using string Data type
     private String email;
     private String phone;
     private String username;
     private String password;
     	 
	public Customer(int id, String name, String email, String phone, String username, String password) { // Implement the overloaded constructor
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
	    this.username = username;
		this.password = password;
	}

	public int getId() { 
		return id;
	}

	
	public String getName() { 
		return name;
	}

	
	public String getEmail() { 
		return email;
	}

	
	public String getPhone() { 
		return phone;
	}

	
	public String getUsername() {  
		return username;
	}

	
	public String getPassword() {  	
		return password;
	}

	
}
