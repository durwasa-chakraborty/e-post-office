package com.epostoffice;

import java.sql.*;


public class TrackBean {

	private String track;
	private String source;
	private String destination;
	private Connection connection=null;
	Statement statement;
	private Integer value=0;
	
	public String getTrackId(){
		return track;
	}
	
	public void setTrackId(String track)
	{
		this.track=track;
	}
	
	public String getSource()
	{
		return source;
	}
	public String getDestination()
	{
		return destination;
	}
	void setDestination(String destination)
	{
		this.destination=destination;
	}
	void setSource(String source)
	{
		this.source=source;
	}
	void setPercentage(Integer value)
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");		
			statement = (Statement) connection.createStatement();
			String sql = "SELECT * FROM track where track = "+getTrackId().toString();
			ResultSet rs = statement.executeQuery(sql);
			if(rs.next())
				this.value = rs.getInt("status");
			}
			
			catch(Exception ex)
			{
				System.out.println(""+ex.getCause());
			}
	}
	public int getPercentage()
	{
		return value*50;
	}
	public boolean validate()
	{
		return true;
	}

}
