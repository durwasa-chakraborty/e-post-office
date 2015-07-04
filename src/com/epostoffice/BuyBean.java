package com.epostoffice;
import java.sql.*;
public class BuyBean {
    
    private String inlandPostcards;
    private String commemorativePostcards;
    private String internationalPostcards;
    public Double Amount=0.00;
    private String picturePostcards;
    private Connection connection = null;
    Statement statement;
    
    public String getInlandPostcards()
    {
        
        return inlandPostcards;
    }
    public void setInlandPostcards(String inlandPostcards)
    {
        if(inlandPostcards.isEmpty())
            inlandPostcards="0.00";
        Double inlandPostcard_value=0.00;
        inlandPostcard_value = Double.valueOf(inlandPostcards);
        inlandPostcard_value=inlandPostcard_value*5;
        Amount+=inlandPostcard_value;
        inlandPostcards=inlandPostcard_value.toString();
        
        this.inlandPostcards= inlandPostcards;
    }
    public String getInternationalPostcards()
    {
        return internationalPostcards;
    }
    public void setInternationalPostcards(String internationalPostcards)
    {
        if(internationalPostcards.isEmpty())
            internationalPostcards="0.00";
        
        Double internationalPostcards_value=0.00;
        internationalPostcards_value = Double.valueOf(internationalPostcards);
        internationalPostcards_value *=5;
        Amount+=internationalPostcards_value;
        internationalPostcards=internationalPostcards_value.toString();
        this.internationalPostcards=internationalPostcards;
    }
    
    public String getCommemorativePostcards()
    {
        return commemorativePostcards;
    }
    public void setCommemorativePostcards(String commemorativePostcards )
    {
        if(commemorativePostcards.isEmpty())
            commemorativePostcards="0.00";
        Double commemorativePostcards_value=0.00;
        commemorativePostcards_value = Double.valueOf(commemorativePostcards);
        commemorativePostcards_value =commemorativePostcards_value*1.25;
        Amount+=commemorativePostcards_value;
        commemorativePostcards = commemorativePostcards_value.toString();
        this.commemorativePostcards = commemorativePostcards;
    }
    
    
    public String getPicturePostcards()
    {
        return picturePostcards;
    }
    public void setPicturePostcards(String picturePostcards)
    {
        if(picturePostcards.isEmpty())
            picturePostcards="0.00";
        Double picturePostcards_value=0.00;
        picturePostcards_value = Double.valueOf(picturePostcards);
        picturePostcards_value = picturePostcards_value*2.50;
        Amount+=picturePostcards_value;
        picturePostcards = picturePostcards_value.toString();
        this.picturePostcards=picturePostcards;
    }  
  
    public void setAmount(Double Amount)
    {
        this.Amount= Amount;
    }
    public String getAmount()
    {
    	Double value_sum=0.00;
    	try
    	{
    		Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");		
			statement = (Statement) connection.createStatement();
			String sql = "SELECT * FROM amount where type = 0";
			ResultSet rs = statement.executeQuery(sql);
			if(rs.next())
				 value_sum= rs.getDouble("amount");
    		
    	}
    	catch(Exception ex)
    	{
    		ex.getCause();
    	}
    	this.Amount += value_sum;
        return Amount.toString();
    }
    public boolean validate()
    {
    	try
    	{
    		Class.forName("com.mysql.jdbc.Driver");
    		connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");
    		statement = (Statement)connection.createStatement();
    		String sql = "UPDATE amount SET amount = "+"'"+getAmount()+"'"+"where type=1";
    		statement.executeUpdate(sql);
    	}
    	catch(Exception ex)
    	{
    		ex.getCause();
    	}
    	return true;
    }


}
