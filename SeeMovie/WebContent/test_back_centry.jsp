<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

String[] choices2 = request.getParameterValues("choice2");
request.setAttribute("choices2", choices2);

String[] seats = request.getParameterValues("seat");
request.setAttribute("seats", seats);

String ticket = request.getParameter("ticket");
request.setAttribute("ticket", ticket);

RequestDispatcher dispatcher = request.getRequestDispatcher("test_check.jsp");
dispatcher.include(request, response);






%>


</body>
</html>