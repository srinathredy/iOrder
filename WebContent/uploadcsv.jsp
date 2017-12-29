<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="upload.jsp" method="post" enctype="multipart/form-data">
<h1 style="text-align:center">Upload Files</h1>
<h2><i>* Please upload CSV files only. and only one file at a time is allowed for upload.</i></h2>
<h2><i>* Please name must be TABLENAME.csv and it has to be MENU.csv Otherwise, the data will not be uploaded into the database.</i></h2>
<table align="center" cellpadding=20px;>
<tr>
 <td>Select a File:</td>
 <td><input type="file" name="file" class="formtext"></td>
</tr>
<tr>
<td colspan=2 align=center>
<input type="submit" value="Upload" class="formbutton">
<br>
</table>
</form>
 <script>
 <%
 try
 {
	 if(request.getParameter("msg").equals("upscs"))
	 {
		 out.println("alert(\"Upload Successful\");");
	 }
	 else if(request.getParameter("msg").equals("upfld"))
	 {
		 out.println("alert(\"Upload Failed!\");");
	 }
	 
 }
 catch(Exception e){}
 %>
 </script>
</body>
</html>