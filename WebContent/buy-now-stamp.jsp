
<%@page import="com.epostoffice.BuyBeanStamp"  %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E Post Office</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.4/darkly/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">E-Post-Office</a>
            </div>
    
      <ul class="nav navbar-nav">
          
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="history_post.jsp">History</a></li>
            <li><a href="stamp.jsp">Philately</a></li>
            <li><a href="termsAndConditions.jsp">Government Documentation</a></li>
            <li class="divider">
              <li><a href="contacts.jsp">Contact Us</a></li>
          </ul>
        </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Static Merchandising  <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="postcards.jsp">Postcard</a></li>
            <li><a href="stamp.jsp">Philately</a></li>
            <li><a href="#">Mobile</a></li>
            <li><a href="packets.jsp">Packets</a></li>
          </ul>
        </li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Courier <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="courierTracking.jsp">Track Packet</a></li>
            <li><a href="transactionHistory.jsp">History</a></li>
            <li><a href="registerCourier.jsp">Register Courier</a></li>
          </ul>
        </li>
      </ul>

     
          </div>
</nav> 

<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th> Type</th>
      <th>Amount</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Inland Postcards</td>
      <td>INR <%BuyBeanStamp Bbean = (BuyBeanStamp)request.getAttribute("BbeanStamp");
      out.print(Bbean.getInlandStamps());%></td>
    </tr>
    <tr>
    	<td>2</td>
    	<td>Commemorative Postcards</td>
    	<td>INR <%
    	out.print(Bbean.getCommemorativeStamps());%></td>
    </tr>
    <tr>
    	<td>3</td>
    	<td>International Postcards</td>
    	<td>INR <%
    	out.print(Bbean.getInternationalStamps());%></td>
    </tr>
    <tr>
    	<td>4</td>
    	<td>Picture Postcards</td>
    	<td>INR <%
    	out.print(Bbean.getParcelStamps());
    	%></td>
    </tr>
    
    
    </tbody>
    </table>
    
    <nav class="navbar navbar-default navbar-fixed-bottom">
  	<div class="container">
    <ul class="pager">
    
    <h3>Amount</h3>
    <h4>
    	INR.<%
    	out.print(Bbean.getAmount());
    	%>
	  </h4>
	
	</ul>
  </div>
</nav>
    
</body>
</html>