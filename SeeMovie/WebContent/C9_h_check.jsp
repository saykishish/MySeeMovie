<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String[] choice1 = (String[])session.getAttribute("choice1");
	String[] choice2 = (String[])session.getAttribute("choice2");
	String[] choice3 = (String[])session.getAttribute("choice3");
	String[] choice4 = (String[])session.getAttribute("choice4");
	String[] choice5 = (String[])session.getAttribute("choice5");
	
	System.out.println("choice1長度: " + choice1.length);  //四個元素
	System.out.println("choice2長度: " + choice2.length);  //四個元素
	System.out.println("choice3長度: " + choice3.length);  //四個元素
	System.out.println("choice4長度: " + choice4.length);  //四個元素
	System.out.println("choice5長度: " + choice5.length);  //四個元素
	
	if(choice1.length == 4){
		for(String choice : choice1){
			System.out.println("choice1: " + choice);
			}			
	}

	if(choice2.length == 4){
		for(String choice : choice2){
			System.out.println("choice2: " + choice);
			}
	}

	if(choice3.length == 4){
		for(String choice : choice3){
			System.out.println("choice3: " + choice);
			}			
	}

	if(choice4.length == 4){
		for(String choice : choice4){
			System.out.println("choice4: " + choice);
			}			
	}

	if(choice5.length == 4){
		for(String choice : choice5){
			System.out.println("choice5: " + choice);
			}			
	}

	
	
	
	String ticket = (String)request.getAttribute("ticket");
	String[] seats = (String[])request.getAttribute("seats");
	for(String seat : seats){
		System.out.println("seats: " + seat);
	}
	
	String name = (String)session.getAttribute("yebiGoldenIsland");
	String img = (String)session.getAttribute("imgString");
	
	String account = (String)session.getAttribute("account");
	
	System.out.println("img: " + img + "\n" +
					   "name:" + name +  "\n" +
					   "ticket: " + ticket +  "\n" +
					   "account" + account);
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

<form action="D_Check" method="get">

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
							<input type="hidden" name="img" value="${imgString}"/>
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
									<input type="hidden" name="movieName" value="${yebiGoldenIsland}"/>
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
									
									<input type="hidden" name="choice1" value="${choice1}"/>
									<input type="hidden" name="choice2" value="${choice2}"/>
									<input type="hidden" name="choice3" value="${choice3}"/>
									<input type="hidden" name="choice4" value="${choice4}"/>
									<input type="hidden" name="choice5" value="${choice5}"/>
								</td>
							</tr>
							<tr class="table-success">
								<th>
									張數:
								</th>
								<td>
									${ticket }
									<input type="hidden" name="ticket" value="${ticket}"/>
								</td>
							</tr>
							<tr class="table-warning">
								<th>
									座位:
								</th>
								<td>
									<c:forEach var="x" items="${ seats }">${x } </c:forEach>
									<input type="hidden" name="seats" value="${seats}"/>
								</td>
							</tr>
						</tbody>
					</table> 
					
					
					<button type="submit" class="btn btn-info btn-lg btn-block">
						確認
					</button>
					
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
		
		<br>

</form>

</body>

</html>



