package com.epostoffice;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RegistrationController extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException
	{
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		RegBean rgbean = new RegBean();
		rgbean.setUsername(username);
		rgbean.setAddress(address);
		rgbean.setEmail(email);
		request.setAttribute("rgbean", rgbean);
		boolean status = rgbean.validate();
		if(status)
		{
			try
			{
				RequestDispatcher dispatch = request.getRequestDispatcher("registration-confirmation.jsp");			
				dispatch.forward(request, response);	
				
			}
			catch (Exception e)
			{
				e.printStackTrace();		
			}
		}
	}
		
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException
		{
			doPost(request,response);
		}
	
}
