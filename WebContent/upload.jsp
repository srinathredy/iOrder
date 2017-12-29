<%@page import="java.util.Date"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
String pag="1234";
try
{
	String path = getServletContext().getRealPath("1234");
	out.println(path);
	MultipartRequest req = new MultipartRequest(request, path);
	File files[] = new File(path).listFiles();
	File upFile = null;
	long l = 0;
	for(File file:files)
	{
		if(file.lastModified()>l)
		{
			upFile = file;
			l = file.lastModified();
		}
	}
	out.print("<br>" + upFile.getName() + " " + new Date(upFile.lastModified()).toString());
	String fileName = upFile.getName();
	pag="dummy.jsp?file="+fileName;
}
catch(Exception e){
	e.printStackTrace();
	pag="uploadcsv.jsp?msg=err";
}
out.println(pag);
response.sendRedirect(pag);
%>