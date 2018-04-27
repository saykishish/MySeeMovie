<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	//動態輸出已經被下訂的座位  disabled
	
	//out.print("座位A1沒有了!");
	
	boolean isDisabled = false;
	String seatNumber = null;

	//String seat = "A4";  //所以想辦法 接收 訂位過來的參數  帶入做判斷

	
	boolean[] isBooking = new boolean[32];
	//boolean isBooking[] = {false};
	
	
	
	Properties props = new Properties();
	props.setProperty("user", "root");
	props.setProperty("password", "root");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn =
		DriverManager.getConnection(
	"jdbc:mysql://localhost/movie",props);
		
		//不要select 幾筆了  select*全部  看資料表有哪些:A5 B7，在與下面去判斷 要不要disabled
		String sql = "SELECT * FROM seat";   //有問號  才會有  這句話pstmt.setString(1, seat);。除錯可以直接先帶A5 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			seatNumber = rs.getString("seatNumber"); //取得資料庫這個欄位
			System.out.println("isBooked資料有哪些:" + seatNumber); //有拿到全部 A5 B5了

			if (seatNumber != null) {
				System.out.println("yes " + seatNumber + " is inside");
				//只有 disabled = ture 才會進到這裡來。 其他都不會進來。
				//isDisabled = true;

				for (int i = 0; i < 32; i++) {
					isBooking[i] = true;
				}

			} else {
				System.out.println("No exist!");
			}
		}

		
		//if(seatNumber != null) {
		//System.out.println("yes " + seatNumber + " is inside");
		//只有 disabled = ture 才會進到這裡來。 其他都不會進來。
		//isDisabled = true;

		//	for(int i=0; i<32; i++){
		//		isBooking[i] = true;
		//	}

		//}else {
		//	System.out.println("No exist!");
		//}

	} catch (Exception e) {
		System.out.println(e.toString());
	}
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

<style type="text/css">
     tr> td> input{zoom:3}
     td{align:middle}
     th{text-align: center;}
     td{text-align: center; padding: 10px; margin: auto;}
</style>

</head>

<body>

<form action="C_SeatStore" method="get">	
<div class="container-fluid">
    
	<div class="row">
		<div class="col-lg-12">
			<nav class="navbar navbar-expand-md navbar-light bg-faded" style="background-color:#9ed0e5; font-weight:bolder; font-size:25px;">
				 
			    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			     <span class="navbar-toggler-icon"></span>
			    </button> <a class="navbar-brand" href="#" style="width:200px"><img class="img-responsive" src="./imgs/myLogo.png" alt="我的首頁" style="width:100%"></a>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="navbar-nav">
						<li class="nav-item">
							 <a class="nav-link" href="https://lab-saykishish.c9users.io/180416/b_movieList.html">電影介紹</a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="#">餐飲商品</a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="#">遊戲抽獎</a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="#">活動優惠</a>
						</li>
						
						<li class="nav-item">
							 <a class="nav-link" href="#">Register</a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="#">Login</a>
						</li>

					</ul>
				</div>
			</nav>
			<br>
			<div class="page-header">
				<h1>
					Hello, <small>Welcome to SeeMovie!</small>
				</h1>
			</div>
		</div>
	</div>
	
	<br>

	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="form-group">
				 
				<label for="exampleInputEmail1">
					請輸入訂票張數:
				</label>
				<input type="text" name="ticket" value="" class="form-control"/>	
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
		    <hr>
			<h3 class="text-center">
				SRCEEN
			</h3>
			<hr>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		
		
			<table class="table">
				<thead>
					<tr>
            			<th></th>
            			<th>1</th> <th>2</th> <th>3</th> <th>4</th> <th class="table-success"></th>
            			<th>5</th> <th>6</th> <th>7</th> <th>8</th>
					</tr>
				</thead>
				<tbody>
					<tr>
            			<td>A</td>
            			<td><input type="checkbox" name="seat" value="A1" <% if(isBooking[0]) out.println("disabled"); %>></td>         
            			<td><input type="checkbox" name="seat" value="A2" <% if(isBooking[1]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="A3" <% if(isBooking[2]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="A4" <% if(isBooking[3]) out.println("disabled"); %>></td>
            			
            			<td class="table-success" style="font-size:25px;">走</td>
            			
            			<!-- if() 接 單列敘述句 -->
            			<td><input type="checkbox" name="seat" value="A5" <% if(isBooking[4]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="A6" <% if(isBooking[5]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="A7" <% if(isBooking[6]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="A8" <% if(isBooking[7]) out.println("disabled"); %>></td>
					</tr>
					<tr>
            			<td>B</td>
            			<td><input type="checkbox" name="seat" value="B1" <% if(isBooking[8]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B2" <% if(isBooking[9]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B3" <% if(isBooking[10]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B4" <% if(isBooking[11]) out.println("disabled"); %>></td>
            			
            			<td class="table-success"></td>
            						
            			<td><input type="checkbox" name="seat" value="B5" <% if(isBooking[12]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B6" <% if(isBooking[13]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B7" <% if(isBooking[14]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="B8" <% if(isBooking[15]) out.println("disabled"); %>></td>
					</tr>
					<tr>
            			<td>C</td>
            			<td><input type="checkbox" name="seat" value="C1" <% if(isBooking[16]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C2" <% if(isBooking[17]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C3" <% if(isBooking[18]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C4" <% if(isBooking[19]) out.println("disabled"); %>></td>
            			
            			<td class="table-success"></td>
            			
            			<td><input type="checkbox" name="seat" value="C5" <% if(isBooking[20]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C6" <% if(isBooking[21]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C7" <% if(isBooking[22]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="C8" <% if(isBooking[23]) out.println("disabled"); %>></td>
					</tr>
					<tr>
            			<td>D</td>
            			<td><input type="checkbox" name="seat" value="D1" <% if(isBooking[24]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D2" <% if(isBooking[25]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D3" <% if(isBooking[26]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D4" <% if(isBooking[27]) out.println("disabled"); %>></td>
            			
            			<td class="table-success" style="font-size:25px;">道</td>
            			
            			<td><input type="checkbox" name="seat" value="D5" <% if(isBooking[28]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D6" <% if(isBooking[29]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D7" <% if(isBooking[30]) out.println("disabled"); %>></td>
            			<td><input type="checkbox" name="seat" value="D8" <% if(isBooking[31]) out.println("disabled"); %>></td>
					</tr>
				</tbody>
			</table> 
			
			
			<button type="submit" class="btn btn-info btn-lg btn-block">
				Submit
			</button>
		</div>
		<div class="col-md-2">
		</div>
	</div>

</div> 
 
</form> 
</body>

<br>

</html>

