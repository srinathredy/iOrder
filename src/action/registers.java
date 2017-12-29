package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class registers
 * @param <P>
 */
@WebServlet("/registers")
public class registers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dob=request.getParameter("dob");
		String mob=request.getParameter("mob");
		String gen=request.getParameter("gen");
		String email=request.getParameter("email");
		String pswd=request.getParameter("pswd");
		String cpswd=request.getParameter("cpswd");
		String wallet=request.getParameter("wallet");
		demo obj=new demo();
		obj.setFname(fname);
		obj.setLname(lname);
		obj.setDob(dob);
		obj.setMob(mob);
		obj.setGen(gen);
		obj.setEmail(email);
		obj.setPswd(pswd);
		obj.setCpswd(cpswd);
		obj.setWallet(wallet);
		
		
		HttpSession session=request.getSession();
		if(fname.equals("")||lname.equals("")||dob.equals("")||mob.equals("")||gen.equals("")||email.equals("")||pswd.equals("")||cpswd.equals("")     )
		{ 
		session.setAttribute("msg","All fields Are Mandatory")	;
		getServletContext().getRequestDispatcher("/register.jsp");
		}
		else if(pswd.equals(cpswd))
		{
			try {
				String ans=dbconn.db.reg(obj);
				if(ans.equals("success"))
					{
					session.setAttribute("msg","register sucessful...!!!" );	
					getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
					}
				}catch(Exception e)
				{
					e.printStackTrace();
				}
			try{
				String ans=dbconn.db.wallet(obj);
				if(ans.equals("success"))
				{
					session.setAttribute("msg","Update Successfull..!!");
					getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);	
				}
				else
				{
					session.setAttribute("msg","error..!!");
					getServletContext().getRequestDispatcher("/register.jsp").include(request, response);
				}
				
				
				}catch(Exception e)
				{
					e.printStackTrace();
				}
		}
		else
		{
			session.setAttribute("msg","All fields Are Mandatory")	;	
			getServletContext().getRequestDispatcher("/register.jsp");
		}
		
		
		
		
		}
	

	}

		
	
 		 
