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
            <li><a href="catalogue.html">Postcard</a></li>
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
<form class="form-horizontal">
  <fieldset>
    <legend>Courier Services</legend>
 <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-4">
        <input type="name" class="form-control" id="inputName" placeholder="Name">
      </div>
    </div>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-4">
        <input type="text" class="form-control" id="inputEmail" placeholder="Email">
      </div>
    </div>
   <div class="form-group">
      <label for="textarea" class="col-lg-2 control-label">Source Address</label>
      <div class="col-lg-4">
        <textarea class="form-control" rows="3" id="Source Address"></textarea>
</div>
</div>
  
<div class="form-group">
      <label for="textarea" class="col-lg-2 control-label">Destination Address</label>
      <div class="col-lg-4">
        <textarea class="form-control" rows="3" id="Destination Address"></textarea>
</div>
</div>
  <div class="form-group">
  <label for="inputNumber" class="col-lg-2 control-label">Contact</label>
<div class="col-lg-4">
  <input type="Contact" class="form-control" id="inputNumber" placeholder="Contact">
      </div>
    </div>


  <div class="form-group">
  <label for="inputNumber" class="col-lg-2 control-label">Weight</label>
<div class="col-lg-4">
  <input type="Weight of the package" class="form-control" id="inputWeight" placeholder="Weight">
      </div>
    </div>
 <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
</form>
</body>
</html>