package aegis.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class aegis_signedin extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public aegis_signedin () {}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		String action = req.getParameter("signedin");
		
		HttpSession sessionuname = req.getSession();
		String uname = (String) sessionuname.getAttribute("username");
		sessionuname.setAttribute("username", uname);

		System.out.println("\n");
		System.out.println(action);
		System.out.println(uname);
		System.out.println(sessionuname);
		
		if (action.equals("home"))
		{
			if (uname == null || uname == "")
			{
				//res.sendRedirect("UserJSP/aegis-login.jsp");
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-home.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("gradingsheet"))
		{
			if (uname == null || uname == "")
			{
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-gradingsheet.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("BSCOE54"))
		{
			if (uname == null || uname == "")
			{
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-open.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("BSCOE55"))
		{
			if (uname == null || uname == "")
			{
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-close.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("signout"))
		{
			if(sessionuname != null)
			{
				sessionuname.invalidate(); //removes all session attributes bound to the session
				System.out.println("\n");
				System.out.println(uname + " sign out");
				System.out.println(sessionuname);
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
		}
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
	{
		String action = req.getParameter("signedin");
		
		HttpSession sessionuname = req.getSession();
		String uname = (String) sessionuname.getAttribute("username");
		sessionuname.setAttribute("username", uname);

		System.out.println("\n");
		System.out.println(action);
		System.out.println(uname);
		System.out.println(sessionuname);
		
		if (action.equals("home"))
		{
			if (uname == null || uname == "")
			{
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-home.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("gradingsheet"))
		{
			if (uname == null || uname == "")
			{
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/UserJSP/aegis-gradingsheet.jsp").forward(req, res);
			}
		}
		
		else if (action.equals("signout"))
		{
			if(sessionuname != null)
			{
				sessionuname.invalidate(); //removes all session attributes bound to the session
				System.out.println("\n");
				System.out.println(uname + " sign out");
				System.out.println(sessionuname);
				req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			}
		}
	}
}
