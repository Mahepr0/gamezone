package firstservlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class logindetails
 */
public class logindetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/employeedb";
			String userName = "root";
			String password = "welcome123";
			Connection con =  DriverManager.getConnection(url,userName,password);
			System.out.println("connection successful"+con);
			
			PreparedStatement ps=con.prepareStatement("select * from userd where uname=? and password=?");
			
			String name = request.getParameter("txtname");
			String pwd =request.getParameter("txtpass");
			
			ps.setString(1, request.getParameter("txtname"));
			ps.setString(2, request.getParameter("txtpass"));
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next())
			{
				HttpSession hs = request.getSession();
				hs.setAttribute("uname",name);
				RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
				rd.forward(request, response);
			}
			else
			{
				pw.print("<font color=red size=5>Enter a valid user name or password</font>");
				RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static void main(String[] args) {
		new logindetails();
	}

}
