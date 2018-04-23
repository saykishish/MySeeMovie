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
import javax.servlet.http.HttpSession;

@WebServlet("/Test_Register")
public class Test_Register extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String email = request.getParameter("email");
		
//		String account = "eee";
//		String passwd = "123";
//		String email = "qwedf@ggh";
		
		HttpSession session = request.getSession();
		session.setAttribute("account", account);
		session.setAttribute("passwd", passwd);
		session.setAttribute("email", email);
		//register 是註冊 不用在這裡用session 先用request舊好?
		
		RequestDispatcher dispacher = request.getRequestDispatcher("test_login.jsp");
		dispacher.include(request, response);

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie", "root", "root");
			
			Statement stmt = conn.createStatement();
				String sql = "INSERT INTO member (account,passwd,email)" +
				"VALUES('"+account+"','"+passwd+"','"+email+"')";    //是逗號  不是加號
				//"values(1,2,3)";
				//"VALUES('"+account+"'+'"+passwd+"'+'"+email+"')";
				
				stmt.execute(sql);
				
//				stmt.addBatch(sql); 
//				stmt.executeBatch();
				
				stmt.close();
			
			System.out.println("member INSERT OK");
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}

		
		
	}


}
