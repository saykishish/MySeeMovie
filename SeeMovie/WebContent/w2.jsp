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

if (session.isNew()|| 
		request.getParameter("account") == null ||
		request.getParameter("passwd") == null ) {
	response.sendRedirect("brad89.jsp");
	return;
}

String account = request.getParameter("account");
String passwd = request.getParameter("passwd");

if (account.equals("brad") && passwd.equals("123456")){
	session.setAttribute("account", account);
	response.sendRedirect("brad91.jsp");
}else{
	response.sendRedirect("brad89.jsp");
}


%>
</body>
</html>