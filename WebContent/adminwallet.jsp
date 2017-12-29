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
    <form class="form-signin" action="wall" method="post">       
      <h2 class="form-signin-heading">update!!</h2>
      <input type="text" class="form-control" name="email" placeholder="Email Id" required />
      <input type="number" class="form-control" name="wallet" placeholder="enter amount" required/>      
      <button class="btn btn-lg btn-primary btn-block" type="submit">update</button> <br>
         </form>
      
  </div>
    
  </body>
</html>
