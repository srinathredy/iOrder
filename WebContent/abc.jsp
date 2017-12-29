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
                    
                    
                    <li><a href="#">welcome :${e}</a></li>
                     
                    <li><a href="contact-us.jsp">Contact-Us</a></li>
                    <li><form action="logout" method="post">
    <input type="submit" class="btn btn-default btn-info" value="Logout">
    
</form></li>

    </header><!--/header-->
	  <section id="title" class="emerald">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Today's Orders</h1>
                   
                </div>
                <div class="col-sm-6">
                    <ul class="breadcrumb pull-right">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Portfolio</li>
                    </ul>
                </div>
            </div>
        </div>
    </section><!--/#title--> 
<h1 style=text-align:center>Daily Order List</h1>
<%

try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select * from cart");
	ResultSet rs=ps.executeQuery();
	
	out.println("<table class='table'>");
	out.println("<form action='DelS' method='post'");
	out.println("<tr>");
	out.println("<th>");
	
	
	out.println("</th>");
out.println("<th>");
	
	out.println("E-MailID");
	out.println("</th>");
	
out.println("<th>");
	
	out.println("ITEAM");
	out.println("</th>");
	
out.println("<th>");
	
	out.println("TYPE");
	out.println("</th>");
	
out.println("<th>");
	
	out.println("COST");
	out.println("</th>");
	
out.println("<th>");
	
	out.println("DATE");
	out.println("</th>");
	out.println("</tr>");
	
	while(rs.next())
	{
		
			out.println("<tr>")	;
			out.println("<td>");
		out.println("<input type='checkbox' name='cb' value="+rs.getString(1)+" />");
			out.println("</td>");
			out.println("<td>");
			out.println(rs.getString(1));
			out.println("</td>");
			out.println("<td>");
			out.println(rs.getString(3));
			out.println("</td>");
			
			out.println("<td>");
			out.println(rs.getString(4));
			out.println("</td>");
				out.println("<td>");
			out.println(rs.getString(5));
			out.println("</td>");
			out.println("<td>");
			out.println(rs.getString(6));
			out.println("</td>");
			
			
		
		
	}
	out.println("<td>");
			out.println("<input type='submit' value='Delete'");
			out.println("</td>");
			out.println("</form>");
			out.println("</tr>");
	out.println("</table>");
	}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>