package testing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;


public class TestMemberExist {

	public static void main(String[] args) {
		
		
		String tify = "tify";
		String mimi = "mimi";
		
		Properties props = new Properties();
		props.setProperty("user", "root");
		props.setProperty("password", "root");
		
		try(Connection conn =
			DriverManager.getConnection(
				"jdbc:mysql://localhost/movie",props)){
			
			if(isExist(tify, conn)) {
				System.out.println("mimi inside");
			}else {
				System.out.println("No exist!");
			}
			
//			if (!isExist(account, conn)) {
//				String sql = "INSERT INTO member " + 
//							"(account,passwd,realname)"+
//							" VALUE (?,?,?)";
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, account);
//				//pstmt.setString(2, passwd);
//				//pstmt.setString(3, realname);
//				pstmt.executeUpdate();
//				System.out.println("OK");
//			}else {
//				System.out.println("資料重複");
//			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}// auto-close
		
		
		
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


