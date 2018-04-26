package j2eeMovie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/D_Check")
public class D_Check extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		RequestDispatcher dispacher = request.getRequestDispatcher("e_congragulation.jsp");
		dispacher.include(request, response);

		
		String img = request.getParameter("img");
		String movieName = request.getParameter("movieName");
		
		String choice1 = request.getParameter("choice1");
		String choice2 = request.getParameter("choice2");
		String choice3 = request.getParameter("choice3");
		String choice4 = request.getParameter("choice4");
		String choice5 = request.getParameter("choice5");
		
		String choice = null;
		if(choice1 != null || 
		   choice2 != null ||
		   choice3 != null ||
		   choice4 != null ||
		   choice5 != null ) {
			toMySQL2(choice);
		}
		
		
		String ticket = request.getParameter("ticket");
		String seats = request.getParameter("seats");
		
		
		
	
	
	}//doGet

	
	private void toMySQL2(String choice) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
			String sql2 = 
					"INSERT INTO checkorder2(time) " + "VALUES('" + choice + "')";

			stmt.executeUpdate(sql2);
			stmt.close();

			System.out.println("INSERT checkorder2 OK");

		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}

	
	
	
	private void toMySQL(String img, String movieName, String choice1, String ticket, String seats) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
			String sql2 = 
					"INSERT INTO checkorder(img,moviename,time,ticket,seat) " + "VALUES('" + img + "','"
					+ movieName + "','" + choice1 + "','" + ticket + "','" + seats + "')";

			stmt.executeUpdate(sql2);
			stmt.close();

			System.out.println("INSERT checkOrder OK");

		} catch (Exception e) {
			System.out.println(e.toString());
		}
	}
	
	

}
