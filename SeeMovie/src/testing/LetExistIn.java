package testing;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LetExistIn")
public class LetExistIn extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		HttpSession session = request.getSession();
		session.setAttribute("account", account);
		
		
		Properties props = new Properties();
		props.setProperty("user", "root");
		props.setProperty("password", "root");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =
			DriverManager.getConnection(
				"jdbc:mysql://localhost/movie",props);
			
			if(isExist(account, conn)) {
				System.out.println("yes it is inside");
				RequestDispatcher dispacher = request.getRequestDispatcher("C9_f_order.jsp");
				dispacher.include(request, response);
			}else {
				System.out.println("No exist!");
			}
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}

	static boolean isExist(String account, Connection conn)
		throws SQLException {
		String sql = "SELECT count(*) as count FROM member WHERE account=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		
		System.out.println(count);//1 代表 有一筆資料
		
		return count != 0;  //不等於0 ，那就是有此筆資料
	}
		
		
		
}

	
	
