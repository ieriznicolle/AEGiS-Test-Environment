package aegis.controller;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import aegis.connection.DBConnection;

public class aegis_encode extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public aegis_encode () {}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException
	{
		HttpSession sessionuname = req.getSession();
		String uname = (String) sessionuname.getAttribute("username");
		sessionuname.setAttribute("username", uname);

		if (uname == null || uname == "")
		{
			//res.sendRedirect("UserJSP/aegis-login.jsp");
			req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
		}
			
		else
		{
			System.out.println("\nEncoding of Grades");
			System.out.println(uname);
			System.out.println(sessionuname);
			
			int length = Integer.parseInt(req.getParameter("length"));
			
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			try
			{
				con = DBConnection.createConnection();
				statement = con.createStatement();

				resultSet = statement.executeQuery("select * from bscoe54");
				
				if (resultSet.first())
				{
					//UPDATE
					for (int i=0; i < length; i++)
					{
						String f_grading = "f_grading" + i;
						String s_grading = "s_grading" + i;
						String c_rating = "c_rating" + i;
						String f_rating = "f_rating" + i;
						String o_remarks = "o_remarks" + i;
						String f_remarks = "f_remarks" + i;
						
						f_grading = req.getParameter(f_grading);
						s_grading = req.getParameter(s_grading);
						c_rating = req.getParameter(c_rating);
						f_rating = req.getParameter(f_rating);
						o_remarks = req.getParameter(o_remarks);
						f_remarks = req.getParameter(f_remarks);	
						
						System.out.println("\n");
						System.out.println(f_grading);
					
						statement.executeUpdate("UPDATE bscoe54 set f_grading ='" +f_grading+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set s_grading ='" +s_grading+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set c_rating ='" +c_rating+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set f_rating ='" +f_rating+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set o_remarks ='" +o_remarks+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set f_remarks ='" +f_remarks+ "' where num =" + (i+1));
					}
				}
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}	

			req.getRequestDispatcher("/UserJSP/aegis-open.jsp").forward(req, res);
		}
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException
	{
		HttpSession sessionuname = req.getSession();
		String uname = (String) sessionuname.getAttribute("username");
		sessionuname.setAttribute("username", uname);

		if (uname == null || uname == "")
		{
			//res.sendRedirect("UserJSP/aegis-login.jsp");
			req.getRequestDispatcher("/UserJSP/aegis-login.jsp").forward(req, res);
		}
			
		else
		{
			System.out.println("\nEncoding of Grades");
			System.out.println(uname);
			System.out.println(sessionuname);
			
			int length = Integer.parseInt(req.getParameter("length"));
			
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			try
			{
				con = DBConnection.createConnection();
				statement = con.createStatement();

				resultSet = statement.executeQuery("select * from bscoe54");
				
				if (resultSet.first())
				{
					//UPDATE
					for (int i=0; i < length; i++)
					{
						String f_grading = "f_grading" + i;
						String s_grading = "s_grading" + i;
						String c_rating = "c_rating" + i;
						String f_rating = "f_rating" + i;
						String o_remarks = "o_remarks" + i;
						String f_remarks = "f_remarks" + i;
						
						f_grading = req.getParameter(f_grading);
						s_grading = req.getParameter(s_grading);
						c_rating = req.getParameter(c_rating);
						f_rating = req.getParameter(f_rating);
						o_remarks = req.getParameter(o_remarks);
						f_remarks = req.getParameter(f_remarks);	
						
						System.out.println(f_grading);
					
						statement.executeUpdate("UPDATE bscoe54 set f_grading ='" +f_grading+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set s_grading ='" +s_grading+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set c_rating ='" +c_rating+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set f_rating ='" +f_rating+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set o_remarks ='" +o_remarks+ "' where num =" + (i+1));
						statement.executeUpdate("UPDATE bscoe54 set f_remarks ='" +f_remarks+ "' where num =" + (i+1));
					}
				}
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}	

			req.getRequestDispatcher("/UserJSP/aegis-open.jsp").forward(req, res);
		}
	}
}
