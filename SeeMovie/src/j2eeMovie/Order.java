package j2eeMovie;

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

@WebServlet("/Order")
public class Order extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		
		//from C9_f_order.jsp
		String yebiGoldenIsland = request.getParameter("yebiGoldenIsland");
		String imgString = request.getParameter("imgString");
			System.out.println("接收電影參數:" + yebiGoldenIsland);
			System.out.println("接收照片參數:" + imgString);
		HttpSession session = request.getSession();
		session.setAttribute("yebiGoldenIsland", yebiGoldenIsland);
		session.setAttribute("imgString", imgString);
		
		
		
		
		String[] choice1 = request.getParameterValues("choice1");
		if(choice1.length == 4){
			//request.setAttribute("choice1", choice1);
			session.setAttribute("choice1", choice1);
				System.out.println(choice1.length); //有拿到4個
				
			RequestDispatcher dispacher = request.getRequestDispatcher("C9_g_seat.jsp");
			dispacher.include(request, response);
		}
		
		
		String[] choice2 = request.getParameterValues("choice2");
		if(choice2.length == 4){
			//request.setAttribute("choice2", choice2);
			session.setAttribute("choice2", choice2);
				System.out.println(choice2.length); //有拿到4個
				
			RequestDispatcher dispacher = request.getRequestDispatcher("C9_g_seat.jsp");
			dispacher.include(request, response);
		}
		
		
		String[] choice3 = request.getParameterValues("choice3");
		if(choice3.length == 4){
			//request.setAttribute("choice3", choice3);
			session.setAttribute("choice3", choice3);
				System.out.println(choice3.length); //有拿到4個
				
			RequestDispatcher dispacher = request.getRequestDispatcher("C9_g_seat.jsp");
			dispacher.include(request, response);
		}
		
		
		String[] choice4 = request.getParameterValues("choice4");
		if(choice4.length == 4){
			//request.setAttribute("choice4", choice4);
			session.setAttribute("choice4", choice4);
			
			RequestDispatcher dispacher = request.getRequestDispatcher("C9_g_seat.jsp");
			dispacher.include(request, response);
		}
		
		
		String[] choice5 = request.getParameterValues("choice5");
		if(choice5.length == 4){
			//request.setAttribute("choice5", choice5);
			session.setAttribute("choice5", choice5);
				System.out.println(choice5.length); //有拿到4個
			
			RequestDispatcher dispacher = request.getRequestDispatcher("C9_g_seat.jsp");
			dispacher.include(request, response);
		}
		

		
		

		//動態輸出已經被下訂的座位  disabled
		
			out.print("座位A1沒有了!");

		
		
			String seat = null;
			
			Properties props = new Properties();
			props.setProperty("user", "root");
			props.setProperty("password", "root");
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn =
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie",props);
				
				if(isBooked(seat, conn)) {
					System.out.println("yes seat is booked");
					
					//印出這些已被下訂的 disabled 座位
					out.print("座位 xxx 沒有了!");
					
					
				}else {
					System.out.println("No exist!");
				}
				
			}catch(Exception e) {
				System.out.println(e.toString());
			}
		
	}


	static boolean isBooked(String seat, Connection conn)throws SQLException {
		String sql = "SELECT count(*) as count FROM seat WHERE seatNumber=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, seat);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		
		System.out.println("isBooked資料有幾筆:" + count);//1 代表 有一筆資料
		
		return count != 0;  //不等於0 ，那就是有此筆資料
	}

	
	
}
