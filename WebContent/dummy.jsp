

<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.*"%>


<%
Class.forName("com.ibm.db2.jcc.DB2Driver");
Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
	String pag="1234";
	String file = request.getParameter("file");
	String path = getServletContext().getRealPath("1234");
	File fl = new File(path, file);
	String table = file.substring(0, file.lastIndexOf("."));
	BufferedReader br = new BufferedReader(new FileReader(fl));
	boolean inv = false;
	if(table.equalsIgnoreCase("menu"))
		inv=true;
	outer:try{
		if(!inv)
		{
			pag = "uploadcsv.jsp?msg=err";
			break outer;
		}
		String s = br.readLine();
		String parts[] = s.split(",");
		StringBuffer sb = new StringBuffer("()");
		for(String part:parts)
			sb.insert(1, "?,");			
		sb.deleteCharAt(sb.length()-2);
		con.createStatement().executeUpdate("delete from  "+table);
		while((s = br.readLine())!=null)
		{
			PreparedStatement ps = con.prepareStatement("insert into  "+table+ " values " + sb.toString());
			parts = s.split(",");
			for(int i = 0;i<parts.length;i++)
				ps.setString(i+1, parts[i]);
			ps.executeUpdate();
		}
		pag = "uploadcsv.jsp?msg=scs";
	}
	catch(Exception e){
		pag = "uploadcsv.jsp?msg=err";
		e.printStackTrace(response.getWriter());
	}
	response.sendRedirect(pag);
%>