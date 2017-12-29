
package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconn.db;


@WebServlet("/LogS")
public class logS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public logS() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pswd=request.getParameter("pswd");
		HttpSession session=request.getSession();
		demo obj=new demo();
		obj.setEmail(email);
		obj.setPswd(pswd);
		
		try{
			String ans=db.log(obj);
			if(ans.equals("success"))
			{
				session.setAttribute("email",email);
				getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);
			}
			else
			{
				session.setAttribute("msg","userid and password In-correct..!! :-(");
				getServletContext().getRequestDispatcher("/login.jsp").include(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
