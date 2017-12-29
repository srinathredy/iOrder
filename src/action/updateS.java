package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateS")
public class updateS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateS() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String mob=request.getParameter("mob");
		String gen=request.getParameter("gen");
		String email=request.getParameter("email");
		
		demo obj=new demo();
		obj.setFname(fname);
		obj.setLname(lname);
		obj.setDob(dob);
		obj.setMob(mob);
		obj.setGen(gen);
		obj.setEmail(email);
		

		HttpSession session=request.getSession();
		if(fname.equals("")||lname.equals("")||dob.equals("")||dob.equals("")||gen.equals(""))
		{
			session.setAttribute("msg","All fields are Mandatory");
			getServletContext().getRequestDispatcher("/update.jsp").include(request, response);
		}
		


			try{
			String ans=dbconn.db.up(obj);
			if(ans.equals("success"))
			{
				session.setAttribute("msg","Update Successfull..!!");
				getServletContext().getRequestDispatcher("/profile.jsp").forward(request, response);	
			}
			else
			{
				session.setAttribute("msg","error..!!");
				getServletContext().getRequestDispatcher("/update.jsp").include(request, response);
			}
			
			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}
}

			
	


