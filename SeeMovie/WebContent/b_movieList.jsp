<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%//taglib要帶過來 不然core都不能用 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
//String[] b = (String[])request.getAttribute("movieNames");
//String[] d = (String[])request.getAttribute("theImg");

//request.getAttribute("tempMapList");

session.getAttribute("movieNames");
%>

<hr>
<body>
<h1>電影選單</h1>
<hr>
<form action="B_MovieStore" method="get">
	
	您剛剛選擇要看的電影:
	<c:forEach items="${movieNames}" var="w">${w } </c:forEach>
	<!--<c:forEach items="${tempMapList }" var="y">${y.name } </c:forEach>-->
	<br>
	那個電影的照片:
	<c:forEach items="${movieNames}" var="w">${w } </c:forEach>
	<br>
	請輸入訂票張數:<input type="text" name="ticket" value=""/>
	
<hr>
	<input type="submit" value="送出"/>
</form>

</body></html>