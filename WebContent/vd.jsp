<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

        <link rel="stylesheet" href="css/abc.css">

    
    
    
  </head>

  <body>
<header style="color: black;background-color: steelblue;padding:8px;font-family: cursive;width: 100%;">
  <a href="index.jsp" ><img src="img/logo.png" style="width:80px;height:80px;"></img>  <font size="6"  color="black">Pre-Order for Canteen</font></a>&nbsp;&nbsp;
  </header>
<h1 style=text-align:center>Daily Order List</h1>
<%

try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select * from cart");
	ResultSet rs=ps.executeQuery();
	
	out.println("<table border=1>");
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
			
			out.println("<td>");
			out.println("<input type='submit' value='Delete'");
			out.println("</td>");
			out.println("</form>");
			out.println("</tr>");
		
		
	}
	out.println("</table>");
	}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>