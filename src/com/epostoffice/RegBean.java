package com.epostoffice;


public class RegBean 
{
	
	private String username;
	private String email;
	private String password;
	private String address;
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
		return true;
	}
	/*public String getDatabaseData()
	{
		try
		{
			getUserName();
			getEmail();
			getPassword();
			
			
			
			return "The contents of the proceedings have been saved";
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "Error";
		}
	}*/
	

	
}
