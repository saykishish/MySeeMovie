package j2eeMovie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ComicVo;

@WebServlet("/A_Jump")
public class A_Jump extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		
		String[] movieNames = request.getParameterValues("seeMovie");
		System.out.println("movieNames 元數個數:" + movieNames.length);
		//request.setAttribute("movieNames", movieNames);
		HttpSession session = request.getSession();
		session.setAttribute("movieNames", movieNames);

		//而且不用用這麼多 dispacher ，可以直接在這個後端 處理完邏輯
		RequestDispatcher dispacher = request.getRequestDispatcher("b_movieList.jsp");
		dispacher.include(request, response);

		
		List<ComicVo> tempMapList = new ArrayList<>();
		//ComicVo theData = null;
		String movieName = null; String year = null ; String img = null;
		
		for(int j=0; j<100; j++) {
			//theData = new ComicVo(movieName,year,img);  
			//在這裡都只是同一個變數，所以迴圈100次也只會一直被蓋過去，所以要在這裡宣告才會是新的變數裝的東西。
			ComicVo theData = new ComicVo(movieName,year,img); //像這樣
			
			theData.setName(movieName);
			theData.setName(year);
			theData.setName(img);
			
			tempMapList.add(theData);
		}
		
		
//		request.setAttribute("tempMapList", tempMapList);//把資料都裝近來
		
		
		
		
		
//		for(int i=0;i<temp.length;i++) {
//			String[] a1 =temp[i].split(",");
//			movieNames[i]=a1[0];
//			theImgs[i]=a1[1];
//		}
		
//		for (int i = 0; i < movieNames.length; i++) {
//		    System.out.println("A_Jump.java:movieName:" + movieNames[i].toString()); 
//		}//for 這裡只是程式console除錯看的
		
		
		
		if(movieNames != null) {
			toMySql(movieNames);
		}
		

		
	
	}//doGet
	
	private void toMySql(String[] movieName) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = 
				DriverManager.getConnection(
					"jdbc:mysql://localhost/movie", "root", "root");
			Statement stmt = conn.createStatement();
			for(int i=0;i<movieName.length;i++) {
				String sql = "INSERT INTO seemovie (movieName)" +
						" VALUES ('" + movieName[i] + "')"; //所以在這裡告訴要印第幾個[i]
				stmt.addBatch(sql); //然後使用 SQL批次 處理 會提高許多效能
			}
			stmt.executeBatch(); //在執行批次就可以了
			stmt.close();
			
			System.out.println("seeMovie INSERT OK");
			
			
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}//toMySql

}//servlet
