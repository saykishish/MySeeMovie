<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if ( session.getAttribute("account") != null ) {
	response.sendRedirect("brad91.jsp");
	return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="brad90.jsp" method="post">
	<input type="text" name="account" /><br />
	<input type="password" name="passwd" /><br />
	<input type="submit" value="Login" />
</form>


</body>
</html>