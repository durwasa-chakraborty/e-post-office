package com.epostoffice;
import java.sql.*;


public class RegBean 
{
	
	private String username;
	private String email;
	private String password;
	private String address;
	private Connection connection=null;
	Statement stmt;
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username=username;		
	}	
	public String getEmail(){
		return email;
	}
	public void setEmail(String email){
		this.email=email;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public String getAddress(){
		return  address;
	}
	public void setAddress(String address)
	{
		this.address=address;
	}
	public boolean validate()
	{
		boolean validate_value = false;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");
			stmt = (Statement)connection.createStatement();
			
			String sql = "INSERT INTO info (username, email, password, address) VALUES ("+"'"+getUsername()+"'"+","+"'"+getEmail()+"'"+","+"'"+getPassword()+"'"+","+"'"+getAddress()+"')";
			stmt.executeUpdate(sql);
			validate_value=true;
			
			
		}
		catch(Exception ex)
		{
			ex.getCause();
		}
		return validate_value;
	}
	
	

	
}
