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
	PreparedStatement ps=con.prepareStatement("select * from signup where email='"+x+"'");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		
%>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">welcome: <%=rs.getString(1) %>  <i class="icon-angle-down"></i></a>
                         <%
	}
	
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}


%>
                        <ul class="dropdown-menu">
                            <li><a href="update.jsp">UpdateProfile</a></li>
                            <li><a href="vieworder.jsp">ViewOrder</a></li>
                            <li><a href="changepassword.jsp">Change Password</a></li>
                            
                        </ul>
                    </li>
                     
                    <li><a href="contact-us.jsp">Contact</a></li>
                    <li><form action="logout" method="post">
    <input type="submit" class="btn btn-default btn-info" value="Logout">
    
</form></li>

    </header><!--/header-->

   
 <%

try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select * from menu");
	ResultSet rs=ps.executeQuery();
	
	
	out.println("<form action='AddS' method='post'");
	
	%>
	 
    <section id="pricing col-md-3 col-xs-6">
   
        <div class="container">
       
            <div class="center">
             
                
            </div><!--/.center-->   
            <div class="gap"></div> 
             
            <div id="pricing-table" class="row">
             <%while(rs.next())
	{
		
		%>
                <div class="col-md-3 col-xs-6">
                
                    <ul class="plan plan1">
                        <li class="plan-name">
                            <h3><%=rs.getString(2)%></h3>
                        </li>
                        <li class="plan-price">
                            <div>
                                <span class="price"><sup>&#8377;&nbsp;</sup><%=rs.getString(4)%></span>
                                
                            </div>
                          <li>  <%out.print("&nbsp;");
                        		out.print("<input type='submit' name='cb' class='btn'  value="+rs.getString(1)+" />");
                        		%>
                        </li>
                        </li>
                        
                    </ul>
                    
                    
                </div><!--/.col-md-3-->
                
                <% } %>
               
            </div> 
            
               
        </div>
           </section><!--/#pricing-->
  
	


<% 
out.println("</form>"); } catch(Exception e)
{
	e.printStackTrace();
}
%>

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