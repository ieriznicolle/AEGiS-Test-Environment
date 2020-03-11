package aegis.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class aegis_login extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public aegis_login () {}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		String action = req.getParameter("action");
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		System.out.println(action);
		System.out.println(user);
		System.out.println(pass);
		
		if (action.equals("login") && user.equals("FA1234MN2020") && pass.equals("Tiktok"))
		{
			req.getRequestDispatcher("/UserJSP/aegis-home.jsp").forward(req, res);
		}
		
		else
		{
			//req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
			res.sendRedirect("http://www.twitter.com/rxncll");
		}
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
		{
			String action = req.getParameter("action");
			String user = req.getParameter("username");
			String pass = req.getParameter("password");
			
			if (action.equals("login") && user.equals("FA1234MN2020") && pass.equals("Tiktok"))
			{
				req.getRequestDispatcher("/aegis-home.jsp").forward(req, res);
			}
			
			else
			{
				req.getRequestDispatcher("/aegis-login.jsp").forward(req, res);
			}
		}
}
