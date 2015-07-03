<%@page import ="com.epostoffice.LoginBean" %>
<html>
<head>
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
      <br>
      <ul class="nav navbar-nav navbar-right">      
       <label for="usrname"><span class="glyphicon glyphicon-user"><%
LoginBean bean = (LoginBean)request.getAttribute("bean");
out.print("Welcome "+bean.getName().toUpperCase());
%> </span></label>
</ul>
</div>
</nav>

<div class="nav navbar-nav navbar-fixed-bottom">
<ul class="pager">
  <li><a href="index.jsp">LogOut</a></li>
  </ul>

</div>
          
         

  

</body>
</head>
</html>