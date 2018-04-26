package j2eeMovie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/C_SeatStore")
public class C_SeatStore extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			request.setCharacterEncoding("UTF-8");


			String[] seats = request.getParameterValues("seat");
			request.setAttribute("seats", seats);

			String ticket = request.getParameter("ticket");
			request.setAttribute("ticket", ticket);
				System.out.println(ticket);

			
			RequestDispatcher dispatcher = request.getRequestDispatcher("C9_h_check.jsp");
			dispatcher.include(request, response);

			
			
			if(seats != null) {
				toMySQL(seats);
			}
			
			
			

			
			
			
			
	}//doGet

	

	
	
	private void toMySQL(String[] seats) { //陣列若沒指定要印出哪一個index[1] 就會印出記憶體的位子:[Ljava.lang.String;@61b05b73
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
			for(int i=0;i<seats.length;i++) {
				String sql = "INSERT INTO seat (seatNumber)" +
						" VALUES ('" + seats[i] + "')"; //所以在這裡告訴要印第幾個[i]
				stmt.addBatch(sql); //然後使用 SQL批次 處理 會提高許多效能
			}
			stmt.executeBatch(); //在執行批次就可以了
			stmt.close();
			
			System.out.println("座位存入  INSERT OK");
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
	}//toMySQL
		
}//servlet
	

