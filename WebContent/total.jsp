<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String f=(String)session.getAttribute("email");
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	PreparedStatement ps=con.prepareStatement("select sum(cost) from cart where email='"+f+"'");
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		out.println("Total cost :"+rs.getString(1));
	}
}
catch(Exception e)
{
	
}
%>
</body>
</html>