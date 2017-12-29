<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Menu| iOrder</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
    <header class="navbar navbar-inverse navbar-fixed-top wet-asphalt" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="bootstrap.jsp"><img src="1234" alt="iOrder"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    
                    
                    <li class="dropdown active">
                    <%
String x=(String)session.getAttribute("email");
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select * from  signup where email='"+x+"'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		
%>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">welcome: <%=rs.getString(1) %>  <i class="icon-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="update.jsp">UpdateProfile</a></li>
                            <li><a href="vieworder.jsp">ViewOrder</a></li>
                            <li><a href="changepassword.jsp">Change Password</a></li>
                            
                        </ul>
                    </li>
                     
                    <li><a href="contact-us.jsp">Contact</a></li>
                    <li class="active"><a href="index.html">Logout</a></li>
                </ul>
            </div>
        </div>
        <%
	}
	
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}


%>
    </header><!--/header-->
    
    
    
  <section id="services" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            
                        </div>
                        <div class="media-body"><br><br>
                            <h1 class="media-heading">Welcome User</h1><br>
                            <h3 class="media-heading">Please Login to Order Tasty Food </h3>
                            
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                
                <div class="col-md-4 col-sm-6">
                    <div class="media">
                        <div class="pull-left">
                            <i class="icon-user icon-md"></i>
                        </div>
                        <div class="media-body">
  <%
String y=(String)session.getAttribute("email");
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select * from  signup where email='"+y+"'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		
%>                           
        <form class="center" role="form" action="updateS" method="post">
            <fieldset class="registration-form">
                
                 <table style="width:30%" align="center">
  <tr>
<th align="right"><label><b><font color="black">Fname :</font></b></label></th>
<th align="left"><input type="text" name="fname" value=<%=rs.getString(1) %> placeholder="first name" ><br><br></th>
</tr>
<tr>
<th align="right"><label><b>Lname :</b></label></th>
<th align="left"><input type="text" name="lname" value=<%=rs.getString(2) %> placeholder="last name" ><br><br></th>
</tr>
<tr>
<th align="right"><label><b>Date of Birth :</b></label></th>
<th align="left"><input type="date" value=<%=rs.getString(3) %> name="dob"  ><br><br></th>
</tr>
<tr>
<th align="right"><label><b>Mobile :</b></label></th>
<th align="left"><input type="text" name="mob" value=<%=rs.getString(4) %>  placeholder="Mobile" ><br><br></th>
</tr>
<tr>
<th align="right"><label><b>Gender</b></label></th>
<th align="left"><input type="radio" name="gen" value="male">Male
<input type="radio" name="gen" value="female">Female<br><br></th>
</tr>
<tr>
<th align="right"><label><b>Email :</th><th align="left"><%=rs.getString(6) %></b></label></th>
<input type="hidden" name="email"  value=<%=rs.getString(6) %> placeholder="email" ><br><br>
</tr>
</table>
<input type="submit" value="update">
<input type="reset" value="Cancel">
            </fieldset>
        </form>
 <%
	}
	
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}


%>
      
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                <div class="col-md-4 col-sm-6">
                    
                </div><!--/.col-md-4-->
            </div>
        </div>
    </section><!--/#services-->  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <section id="bottom" class="wet-asphalt">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h4>About Us</h4>
                    <p>Site Under Construction</p>
                    <p></p>
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                   
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <h4>Address</h4>
                    <address>
                        <strong>iOrder</strong><br>
                        team-6, CSE-C<br>
                        MRIET<br>
                        <abbr title="Phone">P:</abbr> 567890
                    </address>
                    
                </div> <!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                   &copy; 2016 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">iOrder</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a id="gototop" class="gototop" href="#"><i class="icon-chevron-up"></i></a></li><!--#gototop-->
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>

</body>
</html>