package com.epostoffice;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ControllerServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		
		LoginBean bean = new LoginBean();
		bean.setName(name);
		bean.setPassword(password);
		request.setAttribute("bean", bean);
		
		boolean status = bean.validate();
		if(status)
		{
			RequestDispatcher requestdispatcher=request.getRequestDispatcher("login-success.jsp");
			requestdispatcher.forward(request, response);
		}
		
		
			else
		{
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("index.jsp");
			requestdispatcher.forward(request,response);
		}
	}
		
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws ServletException, IOException
		{
			doPost(req,resp);
		}
	
	

}
