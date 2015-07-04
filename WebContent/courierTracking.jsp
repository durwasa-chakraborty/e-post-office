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

          </div>
</nav> 

 <form action="TrackingController" method="post" class="form-inline" >
  			<div class="form-group">
    		<label class="sr-only" >Track Id</label>
    		<div class="input-group">
      		<div class="input-group-addon">Tracking ID</div>
      		<input type="text" class="form-control" id="trackId" name="trackId" placeholder="TrackId">
      		<br>
      		<input type="text" class="form-control" id="source" name="source" placeholder="Source">
      		<input type="text" class="form-control" id="destination" name="destination" placeholder="Destination">
      		
      		 
    		</div>
  			</div>
  			<button type="submit" class="btn btn-primary">Submit</button>
</form>
<br>
<br>


<div class="progress progress-striped active">
  <div class="progress-bar" style="width: 33%"></div>
</div>

</body>
</html>