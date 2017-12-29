package action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AddS")
public class AddS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddS() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
	
		String id=request.getParameter("cb");
		String ma=(String)session.getAttribute("email");
		Date date=new Date();
		String e=date.toString();

		System.out.println(id);
		
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
			PreparedStatement ps=con.prepareStatement("select * from  menu where id='"+id+"' ");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String a=rs.getString(1);
				String b=rs.getString(2);
				String c=rs.getString(3);
				String d=rs.getString(4);
			
				System.out.println(a+b+c+d);
				
				PreparedStatement p=con.prepareStatement("insert into  cart values(?,?,?,?,?,?)");
				p.setString(1,ma);
				p.setString(2,a);
				p.setString(3,b);
				p.setString(4,c);
				p.setString(5,d);
				p.setString(6,e);
				int i=p.executeUpdate();
				if(i==1)
				{
					session.setAttribute("msg","Item add..Try adding another.. else Click on Go Back...!!");
					getServletContext().getRequestDispatcher("/profile.jsp").include(request, response);
				}
				
			}
		
		
		} catch(Exception ee)
				{
					ee.printStackTrace();
				}
		
		
		
		
		
		
	}

}
