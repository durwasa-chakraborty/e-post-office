<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E Post Office</title>
   <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/darkly/bootstrap.min.css" rel="stylesheet">
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

     
          </div>
</nav> 
<form action="BuyStamp" method="post" class="form-inline" >
<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>Stamp Name</th>
      <th>Stamp Number</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Inland Stamps</td>
      <td>
      	 
  			<div class="form-group">
    		  
    		<div class="input-group">
      		<div class="input-group-addon">Quantity</div>
      		<input type="text" class="form-control" id="inlandStamps" name="inlandStamps" placeholder="Number">
      		 
    		</div>
  			</div>
  			 
		 
	</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Commemorative Stamps </td>
      <td>
       
  			<div class="form-group">
    		  
    		<div class="input-group">
      		<div class="input-group-addon">Quantity</div>
      		<input type="text" class="form-control" id="commemorativeStamps" name="commemorativeStamps" placeholder="Number">
      		 
    		</div>
  			</div>
  			 
		 
		</td>
    </tr>
    <tr>
      <td>3</td>
      <td>International Stamps</td>
      
      <td>
       
  			<div class="form-group">
    		  
    		<div class="input-group">
      		<div class="input-group-addon">Quantity</div>
      		<input type="text" class="form-control" id="internationalStamps" name="internationalStamps" placeholder="Number">
      		 
    		</div>
  			</div>
  			 
		 
      
      </td>
    </tr>
    <tr >
      <td>4</td>
      <td>Parcel Stamps	</td>
      
      <td>
       
  			<div class="form-group">
    		  
    		<div class="input-group">
      		<div class="input-group-addon">Quantity</div>
      		<input type="text" class="form-control" id="parcelStamps" name="parcelStamps" placeholder="Number">
      		 
    		</div>
  			</div>
  			 
		 
      </td>
    </tr>
    
    
  </tbody>
</table> 

<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container">
    <ul class="pager">
    <button type="submit" class="btn btn-primary">Buy Now</button>
	  
	</ul>
  </div>
  </form>

</body>
</html>