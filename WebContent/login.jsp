<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.4/darkly/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  
</head>
<body>

<form action="ControllerServlet" method="post" class="form-horizontal">
  <fieldset>
    <legend>Login Page</legend>
    <h4><span class="glyphicon glyphicon-lock"></span>Login</h4>
               
                <div class="modal-body" style="padding:40px 50px;">
         
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Username" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox"  checked>Remember me</label>
            </div>
        
        <div class="modal-footer">
          <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" value="login" class="btn btn-primary">Login</button>
      </div>
    </div>
    
        </div>
      
        </div>
        </fieldset>
        </form>
        <ul class="pager">
  <li><a href="index.jsp">Previous</a></li>
</ul>    
</body>
</html>
