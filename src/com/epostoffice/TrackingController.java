package com.epostoffice;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class TrackingController extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException
	{
		response.setContentType("text/html");
		String trackId = request.getParameter("trackId");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		
		
		TrackBean tbean = new TrackBean();
		tbean.setTrackId(trackId);
		tbean.setSource(source);
		tbean.setDestination(destination);
		tbean.setPercentage(50);
		request.setAttribute("tbean", tbean);
		boolean status = tbean.validate();
		if(status)
		{
			try
			{
				RequestDispatcher dispatch = request.getRequestDispatcher("courierTrackingNew.jsp");
				dispatch.forward(request,response);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
	{
		doPost(request,response);
	}
	public int getPercentage()
	{
		return 50;
		
	}
}
