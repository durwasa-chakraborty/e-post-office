package com.epostoffice;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class BuyStamp extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String inlandStamps = request.getParameter("inlandStamps");
		String commemorativeStamps = request.getParameter("commemorativeStamps");
		String internationalStamps = request.getParameter("internationalStamps");
		String parcelStamps = request.getParameter("parcelStamps");
		
		BuyBeanStamp BbeanStamp = new BuyBeanStamp();
		
		BbeanStamp.setInlandStamps(inlandStamps);
		BbeanStamp.setCommemorativeStamps(commemorativeStamps);
		BbeanStamp.setInternationalStamps(internationalStamps);
		BbeanStamp.setParcelStamps(parcelStamps);
	
		
		request.setAttribute("BbeanStamp", BbeanStamp);
		boolean status = BbeanStamp.validate();
		if(status)
			{
				RequestDispatcher requestdispatcher = request.getRequestDispatcher("buy-now-stamp.jsp");
				requestdispatcher.forward(request,response);
			}
			
		}
		
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException
		{
			doPost(request,response);
		}

	}
