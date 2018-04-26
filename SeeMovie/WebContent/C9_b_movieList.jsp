<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	String id = "";
	String bdTitle = "";
	String bdYear = "";
	String bdImg = "";
	ResultSet rs = null;
	
	List<ComicVo> tempMapList = new ArrayList<>();
	ComicVo theData = null;
	
	try {
		Properties props = new Properties();
		props.setProperty("user", "root");
		props.setProperty("password", "root");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/movie",props);
		Statement stmt = conn.createStatement();			
		rs = stmt.executeQuery("SELECT id,title,year,imgLink FROM homepage");
				
		while(rs.next()) { 
			//ComicVo data = new ComicVo();			
			//ComicVo theData = new ComicVo("name","1990","https://chinesedora.com/images/97movie.jpg");
	
			id = rs.getString("id");
			bdTitle = rs.getString("title");
			bdYear = rs.getString("year");
			bdImg = rs.getString("imgLink");
			
			//我在這裡一直new new new 物件  然後加加加
			theData = new ComicVo(bdTitle,bdYear,bdImg);
			
			tempMapList.add(theData); //要在這裡重複的迴圈的 把資料放進去 才不會只有最後一筆資料
		
		}	
	}catch(Exception e){
		System.out.println(e.toString());
	}
	
	
	//計算總資料量
	int total = tempMapList.size();
	System.out.println("總資料量:" + total);  //39筆
	
	//計算資料量列數
	int rows = (int)Math.ceil(total/5.0);
	System.out.println("資料量列數:" + rows);  //8列
	
	
	
	pageContext.setAttribute("tempMapList", tempMapList);	
	pageContext.setAttribute("rows", rows-1);	
	pageContext.setAttribute("total", total);	
	
	
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
							 <a class="nav-link" href="http://localhost:8080/SeeMovie/C9_d_register.jsp">Register</a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="http://localhost:8080/SeeMovie/C9_e_login.jsp">Login</a>
						</li>

					</ul>
					<form class="form-inline" style="position:absolute; right:20px;">
						<input class="form-control mr-sm-2" type="text" /> 
						<button class="btn btn-primary my-2 my-sm-0" type="submit">
							Search
						</button>
					</form>
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
	



		<c:forEach var="j" begin="0" end="${rows }">

			<!-- start movieList -->
			<div class="row">
			
				<div class="col-md-1">
				</div>
		
		
				<c:forEach var="i" begin="0" end="4">

					
					<!-- 要不要印 來做一下判斷 -->
					<c:if test="${5*j+i < total }">
				
						<!-- 以下長五次 -->
						<div class="col-md-2">
							<img alt="myImg" src="${tempMapList[5*j+i].img }" style="width:200px"/>
							<h5>
								${tempMapList[5*j+i].name }
							</h5>
							<h6>${tempMapList[5*j+i].year }</h6>
							<button type="button" class="btn btn-success" 
									onclick="location.href='http://localhost:8080/SeeMovie/C9_c_introduction.jsp'">
								電影介紹
							</button>
						</div>
						<!-- 以上長五次 -->
		
		
					</c:if>
				
				</c:forEach>
				
				
				<div class="col-md-1">
				</div>
				
			</div>
			
			<br>
			<!-- end movieList -->
	
		</c:forEach>
	

	<!-- start pagination -->
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination">
					<li class="page-item">
						<a class="page-link" href="#">Previous</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">1</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">2</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">3</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">4</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">5</a>
					</li>
					<li class="page-item">
						<a class="page-link" href="#">Next</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- end pagination -->
</div>

</body>
</html>



