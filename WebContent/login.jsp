<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html >
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome</title>
    
  
    
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

        <link rel="stylesheet" href="css/style.css">

    
    
    
  </head>

  <body>
  <header style="color: black;background-color: steelblue;padding:8px;font-family: cursive;width: 100%;">
  <a href="index.jsp" ><img src="img/logo.png" style="width:80px;height:80px;"></img>  <font size="6"  color="black">Pre-Order for Canteen</font></a>&nbsp;&nbsp;
  </header>

      <div class="wrapper">
    <form class="form-signin" action="LogS" method="post">       
      <h2 class="form-signin-heading">Log In...!!</h2>
      <input type="email" class="form-control" name="email" placeholder="Email Id" required="1234" autofocus="1234" />
      <input type="password" class="form-control" name="pswd" placeholder="Password" required="1234"/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> <br>
        <font size="3" color="black">Not yet Registered?</font><font size="3" color="blue"><a href="register.jsp">Click Here</a></font>  
      </form>
      
  </div>
    
  </body>
</html>
