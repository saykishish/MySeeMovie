<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String yebiGoldenIsland = request.getParameter("yebiGoldenIsland");
	String imgString = request.getParameter("imgString");
		System.out.println("接收電影參數:" + yebiGoldenIsland);
		System.out.println("接收照片參數:" + imgString);
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
	

	
	

%>

</body>
</html>