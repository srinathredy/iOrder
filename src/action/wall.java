
package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class wall
 * @param <P>
 */
@WebServlet("/wall")
public class wall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public wall() {
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
		
		String email=request.getParameter("email");
		String wallet=request.getParameter("wallet");
		
		demo obj=new demo();
		
		obj.setEmail(email);
		obj.setWallet(wallet);
		
		
		
		HttpSession session=request.getSession();
		if(email.equals("")||wallet.equals(""))
		{
			session.setAttribute("msg","All fields are Mandatory");
			getServletContext().getRequestDispatcher("/adminwallet.jsp").include(request, response);
		}
		


			try{
			String ans=dbconn.db.wallet(obj);
			if(ans.equals("success"))
			{
				session.setAttribute("msg","Update Successfull..!!");
				getServletContext().getRequestDispatcher("/aprofile.jsp").forward(request, response);	
			}
			else
			{
				session.setAttribute("msg","error..!!");
				getServletContext().getRequestDispatcher("/adminwallet.jsp").include(request, response);
			}
			
			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}

	}

		
	
 		 
