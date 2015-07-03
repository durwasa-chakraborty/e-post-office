package com.epostoffice;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class BuyNow extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		
		String inlandPostcards = request.getParameter("inlandPostcards");
		String commemorativePostcards = request.getParameter("commemorativePostcards");
		String internationalPostcards = request.getParameter("internationalPostcards");
		String picturePostcards = request.getParameter("picturePostcards");
		
		BuyBean Bbean = new BuyBean();
		Bbean.setInlandPostcards(inlandPostcards);
		Bbean.setCommemorativePostcards(commemorativePostcards);
		Bbean.setInternationalPostcards(internationalPostcards);
		Bbean.setPicturePostcards(picturePostcards);
		Bbean.setSaveAmount();
	
		request.setAttribute("Bbean",Bbean);
		boolean status = Bbean.validate();
		if(status)
		{
			RequestDispatcher requestdispatcher = request.getRequestDispatcher("buy-now.jsp");
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
