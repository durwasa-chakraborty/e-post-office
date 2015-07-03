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


<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>#</th>
      <th>Packet Name</th>
      <th>Packet Type</th>
      <th>Packet Number</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>
        <form class="form-inline">
        <div class="form-group">
        <label class="sr-only" >Number of Packets</label>
        <div class="input-group">
          <div class="input-group-addon">Quantity</div>
          <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
          <div class="input-group-addon">00</div>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
  </td>
    </tr>
    <tr>
      <td>2</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>
      <form class="form-inline">
        <div class="form-group">
        <label class="sr-only" >Number of Packets</label>
        <div class="input-group">
          <div class="input-group-addon">Quantity</div>
          <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
          <div class="input-group-addon">00</div>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
    </td>
    </tr>
    <tr>
      <td>3</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>
      <form class="form-inline">
        <div class="form-group">
        <label class="sr-only" >Number of Packets</label>
        <div class="input-group">
          <div class="input-group-addon">Quantity</div>
          <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
          <div class="input-group-addon">00</div>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
      
      </td>
    </tr>
    <tr>
      <td>4</td>
      <td>Column content</td>
      <td>Column content</td>
      <td>
      <form class="form-inline">
        <div class="form-group">
        <label class="sr-only" >Number of Postcards</label>
        <div class="input-group">
          <div class="input-group-addon">Quantity</div>
          <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
          <div class="input-group-addon">00</div>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
      </td>
    </tr>
    <tr class="danger">
     
    
  </tbody>
</table> 
<nav class="navbar navbar-default navbar-fixed-bottom">
  <div class="container">
    <ul class="pager">
	  <li><a href="#">Save</a></li>
	  <li><a href="#">Buy Now</a></li>
	</ul>
  </div>
</nav>


</body>
</html>