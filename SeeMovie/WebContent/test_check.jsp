<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
//String[] a =(String[])session.getAttribute("seat");

//String qwe = (String)session.getAttribute("snoopy");

//String tickek = (String)session.getAttribute("myTicket");

request.getAttribute("choices2");

request.getAttribute("ticket");
request.getAttribute("seats");

%>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>訂單確認</h1>
<hr />

<form action="D_Check" method="get">
	
	<table>
	
			<tr>
				<td>片名:</td>
				<td><c:forEach var="x" items="${ movieName }">${x } </c:forEach></td>
			<tr/>
			<tr>
				<td>照片:</td>
				<td><c:forEach var="x" items="${theImg }">${x } </c:forEach></td>
			<tr/>
			<tr>
				<td>測試用:</td>
				<td></td>
			</tr>
			<tr>
				<td>片種:</td>
				<td></td>
			<tr/>
			
			<tr>
				<td>日期:</td>
				<td><c:forEach var="x" items="${choices2 }">${x } </c:forEach></td>
				<!-- <td>${choices2 }</td> -->
			<tr/>
			<tr>
				<td>時間:</td>
				<td></td>
			<tr/>
			<tr>
				<td>票種:</td>
				<td></td>
			<tr/>
			<tr>
				<td>張數:</td>
				<td>${ticket }</td>
			<tr/>
			<tr>
				<td>座位:</td>
				<td><c:forEach var="x" items="${ seats }">${x } </c:forEach></td>
				
			<tr/>
	
		
	</table>
	
<hr/>
<input type="submit" value="確認"/>

</form>






</body>
</html>