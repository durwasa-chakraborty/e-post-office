<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

      <ul class="nav navbar-nav navbar-right">
        <li><a href="registration.jsp"><span class="glyphicon glyphicon-road" ></span> Sign Up</a></li>
          <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in" id="login"></span> Login</a></li>
          </ul>
          </div>
</nav> 
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    
	<div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img class="img-responsive center-block" src="http://hellosubscription.com/sandbox/wp-content/uploads/2015/01/IMG_6673-600x450.jpg" alt="Postcard" width="460" height="345" >
	      </div>
	
	      <div class="item">
	        <img class="img-responsive center-block" src="http://www.puretravel.com/blog/wp-content/uploads/2013/04/Is-the-holiday-postcard-extinct.jpg" alt="psotcard" width="460" height="345" class="img-responsive center-block">
	      </div>
	    
	      <div class="item">
	        <img class="img-responsive center-block" src="http://www.iomps.com/data/Images%5Csue.jones/1538_vintagepostbox.jpg" alt="Postbox" width="460" height="345" >
	      </div>
	
	      <div class="item">
	        <img class="img-responsive center-block" src="https://farm3.staticflickr.com/2819/12282796615_68c813debb_b.jpg" alt="Images_vivekananda" width="460" height="345">
	      </div>
	</div>
	
	    
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
  </div>
<ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

</body>
</html>