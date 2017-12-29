package action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DelS")
public class DelS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public DelS() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		

		String a=request.getParameter("cb");
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
		Connection	con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
			System.out.println("connection success");
			
			PreparedStatement ps=con.prepareStatement("UPDATE cart SET status='delivered' where email='"+a+"'");
			int i=ps.executeUpdate();
			if(i==1)
			{
				getServletContext().getRequestDispatcher("/vd.jsp").forward(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
