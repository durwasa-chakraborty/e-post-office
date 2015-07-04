package com.epostoffice;
import java.sql.*;

public class LoginBean {
	private String name,password;
	private Connection connection=null;
	Statement statement;
	
public String getName() {
	return name;
}
public void setName(String name)
{
	this.name=name;
}

public String getPassword()
{
	return password;
}
public void setPassword(String password)
{
	this.password=password;
}
public boolean validate()
{
	boolean validate_value=false;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");		
		statement = (Statement) connection.createStatement();
		String sql = "SELECT password FROM registration where username = "+"'"+getName()+"'";
		ResultSet rs = statement.executeQuery(sql);
		if(rs.next())
		{
			String eval = rs.getString("password");
			if(eval.equals(getPassword()))
				validate_value = true;
			else
				validate_value = false;			
		}
			
	}
	
	catch(Exception ex)
	{
		ex.getCause();
	}
	return validate_value;
}
}
