package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdminS")
public class AdminS extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AdminS() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String email=request.getParameter("email");
		String pswd=request.getParameter("pswd");
		HttpSession session=request.getSession();
		
		if(email.equalsIgnoreCase("admin")&&pswd.equalsIgnoreCase("admin"))
		{
			session.setAttribute("e",email);
			getServletContext().getRequestDispatcher("/aprofile.jsp").forward(request, response);
		}
		else
		{
			session.setAttribute("msg","error..!!");
			getServletContext().getRequestDispatcher("/admin.jsp").include(request, response);
		}
		
		
	}

}
