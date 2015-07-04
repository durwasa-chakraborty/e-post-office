package com.epostoffice;
import java.sql.*;
import java.sql.DriverManager;


public class BuyBeanStamp {
	private String inlandStamps;
    private String commemorativeStamps;
    private String internationalStamps;
    private String parcelStamps;
    private Connection connection = null;
    private Statement statement;

    private Double AmountStamp=0.00; 
   
	
	 public String getInlandStamps()
	    {
	        return inlandStamps;
	    }
	    public void setInlandStamps(String inlandStamps)
	    {
	        if(inlandStamps.isEmpty())
	            inlandStamps="0.00";
	        Double inlandStamps_value = Double.valueOf(inlandStamps);
	        inlandStamps_value = inlandStamps_value*0.50;
	        AmountStamp+=inlandStamps_value;
	        inlandStamps = inlandStamps_value.toString();
	        this.inlandStamps=inlandStamps;
	    }

	    public String getCommemorativeStamps()
	    {
	        return commemorativeStamps;
	    }

	    public void setCommemorativeStamps(String commemorativeStamps)
	    {
	        if(commemorativeStamps.isEmpty())
	            commemorativeStamps="0.00";
	        Double commemorativeStamps_value = Double.valueOf(commemorativeStamps);
	        commemorativeStamps_value=commemorativeStamps_value*1.50;
	        AmountStamp+=commemorativeStamps_value;
	        commemorativeStamps = commemorativeStamps_value.toString();
	        this.commemorativeStamps = commemorativeStamps;

	    }
	    
	    public String getInternationalStamps()
	    {
	        return internationalStamps;
	    }

	    public void setInternationalStamps(String internationalStamps)
	    {
	        if(internationalStamps.isEmpty())
	            internationalStamps="0.00";
	        Double internationalStamps_value = Double.valueOf(internationalStamps);
	        internationalStamps_value=internationalStamps_value*2.50;
	        AmountStamp+=internationalStamps_value;
	        internationalStamps = internationalStamps_value.toString();
	        this.internationalStamps=internationalStamps;
	    }

	    public String getParcelStamps()
	    {
	        return parcelStamps;
	    }
	    public void setParcelStamps(String parcelStamps)
	    {
	        if(parcelStamps.isEmpty())
	            parcelStamps="0.00";
	        Double parcelStamps_value = Double.valueOf(parcelStamps);
	        parcelStamps_value=parcelStamps_value*10;
	        AmountStamp+=parcelStamps_value;
	        parcelStamps = parcelStamps_value.toString();
	        this.parcelStamps = parcelStamps;
	    }

	    public String getAmount()
	    {
	        return AmountStamp.toString();
	    }
	    
	    public boolean validate()
	    {
	    	try
	    	{
	    		Class.forName("com.mysql.jdbc.Driver");
	    		connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ePostOffice", "root", "root");
	    		statement = (Statement)connection.createStatement();
	    		String sql = "UPDATE amount SET amount = "+"'"+getAmount()+"'"+"where type=0";
	    		statement.executeUpdate(sql);
	    	}
	    	catch(Exception ex)
	    	{
	    		ex.getCause();
	    	}
	    	return true;
	    }

}
