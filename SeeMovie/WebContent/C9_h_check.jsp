<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
session.getAttribute("choice1");
session.getAttribute("choice2");
session.getAttribute("choice3");
session.getAttribute("choice4");
session.getAttribute("choice5");


request.getAttribute("ticket");
request.getAttribute("seats");

session.getAttribute("yebiGoldenIsland");
session.getAttribute("imgString");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SeeMovie</title>
</head>

<body>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<br>
			<h3 class="text-center" style="font-size:45px;">
				訂單確認
			</h3>
			<hr>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8" align="middle">
					<img alt="imgSee" src="${imgString}" class="rounded" style="width:200px"/>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<table class="table">
				<tbody>
					<tr class="table-info">
						<th>
							片名:
						</th>
						<td>
							${yebiGoldenIsland}
						</td>
					</tr>
					<tr class="table-active">
						<th>
							時間:
						</th>
						<td>
							<c:forEach var="x" items="${choice1 }">${x } </c:forEach>
							<c:forEach var="x" items="${choice2 }">${x } </c:forEach>
							<c:forEach var="x" items="${choice3 }">${x } </c:forEach>
							<c:forEach var="x" items="${choice4 }">${x } </c:forEach>
							<c:forEach var="x" items="${choice5 }">${x } </c:forEach>
						</td>
					</tr>
					<tr class="table-success">
						<th>
							張數:
						</th>
						<td>
							${ticket }
						</td>
					</tr>
					<tr class="table-warning">
						<th>
							座位:
						</th>
						<td>
							<c:forEach var="x" items="${ seats }">${x } </c:forEach>
						</td>
					</tr>
				</tbody>
			</table> 
			<button type="button" class="btn btn-info btn-lg btn-block">
				確認
			</button>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>

<br>

</body>

</html>



