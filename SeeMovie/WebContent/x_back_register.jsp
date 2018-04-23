<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String account = request.getParameter("account");
String passwd = request.getParameter("passwd");
String email = request.getParameter("email");

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/movie", 
	    "root", "root");
Statement stmt = conn.createStatement();
String sql = "INSERT INTO member (account,passwd,email)" +
"VALUES('"+account+"','"+passwd+"','"+email+"')"; 
stmt.execute(sql);


RequestDispatcher dispacher = request.getRequestDispatcher("test_login.jsp");
dispacher.include(request, response);

//response.sendRedirect("test_login.jsp");

%>
</body>
</html>



