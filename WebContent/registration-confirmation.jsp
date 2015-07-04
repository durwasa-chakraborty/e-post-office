 <%@page import ="com.epostoffice.RegBean" %>
 
<html>
<head>

<title>Registration Confirmation</title>
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
            <li><a href="login.jsp">Contact Us</a></li>
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
      <br>
      
       <ul class="nav navbar-nav navbar-right"><b>
        <% RegBean regbean_top = (RegBean)request.getAttribute("rgbean");
        out.print("Welcome "+regbean_top.getUsername().toUpperCase());
        %></b>
        </ul>
     

     
          </div>
</nav> 

<div class="container">
	<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>UserName</th>
      <th>Email</th>
      <th>Address</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><%RegBean rgbean_username = (RegBean)request.getAttribute("rgbean"); 
      out.print(rgbean_username.getUsername().toUpperCase());%></td>
      <td><%RegBean rgbean_email = (RegBean)request.getAttribute("rgbean");
      out.print(rgbean_email.getEmail());%></td>
      <td><%RegBean rgbean_address = (RegBean)request.getAttribute("rgbean");
      out.print(rgbean_address.getAddress());%></td>
    </tr>
    
 
   	
 
  </tbody>
</table> 

</div>


<div class="nav navbar-fixed-bottom">
<ul class="pager">
  <li><a href="index.jsp">LogOut</a></li>
  </ul>
</ul>
</div>
         
  

</body>
</html>