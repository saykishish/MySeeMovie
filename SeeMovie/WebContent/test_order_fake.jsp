<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="bean.ComicVo" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	
	<form action="test_back_order_fake.jsp" method="get">
		<div class="row">
			<div class="col-md-1">
			</div>
			<div class="col-md-3">
				<img alt="Bootstrap Image Preview" src="./imgs/golden.jpg" style="width:200px"/>
				<br>
			</div>
			<div class="col-md-4">
				<h3>
					大雄的金銀島
					<input type='hidden' name='x' value='123' />
				</h3>
				<address>
					 <strong>上映 日</strong><br /> 2018/06/09 (六)<br /> 
				</address>
				<dl>
					<dt>
						片長
					</dt>
					<dd>
						109 分
						<input type='hidden' name='x' value='123' />
					</dd>
					<dt>
						導演
					</dt>
					<dd>
						今井一曉
					</dd>
					<dt>
						編劇
					</dt>
					<dd>
						川村元氣
					</dd>
					<dt>
						英文名稱
					</dt>
					<dd>
						Doraemon the Movie 2018 Nobita's Treasure Island
					</dd>
				</dl>
			</div>
			<div class="col-md-3">
				<table class="table">
					<thead>
						<tr>
							<th>
								#
							</th>
							<th>
								日期
							</th>
							<th>
								時間
							</th>
							<th>
								聽次
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<input type="checkbox" name="choice1" value="1"/>
							</td>
							<td>
								2018/06/09 (六)
								<input type='hidden' name='choice1' value='2018/06/09 (六)' />
							</td>
							<td>
								09:00
								<input type='hidden' name='choice1' value='09:00' />
							</td>
							<td>
								二聽
								<input type='hidden' name='choice1' value='二聽' />
							</td>
						</tr>
						<tr class="table-active">
							<td>
								<input type="checkbox" name="choice2" value="2"/>
							</td>
							<td>
								2018/06/11 (一)
								<input type='hidden' name='choice2' value='2018/06/11 (一)' />
							</td>
							<td>
								20:00
								<input type='hidden' name='choice2' value='20:00' />
							</td>
							<td>
								一聽
								<input type='hidden' name='choice2' value='一聽' />
							</td>
						</tr>
						<tr class="table-success">
							<td>
								<input type="checkbox" name="'choice3'" value="3"/>
							</td>
							<td>
								2018/06/13 (三)
								<input type='hidden' name='choice3' value='2018/06/13 (三)' />
							</td>
							<td>
								14:45
								<input type='hidden' name='choice3' value='14:45' />
							</td>
							<td>
								二聽
								<input type='hidden' name='choice3' value='二聽' />
							</td>
						</tr>
						<tr class="table-warning">
							<td>
								<input type="checkbox" name="choice4" value="4"/>
							</td>
							<td>
								2018/06/20 (三)
								<input type='hidden' name='choice4' value='2018/06/20 (三)' />
							</td>
							<td>
								9:00
								<input type='hidden' name='choice4' value='9:00' />
							</td>
							<td>
								一聽
								<input type='hidden' name='choice4' value='一聽' />
							</td>
						</tr>
						<tr class="table-danger">
							<td>
								<input type="checkbox" name="choice5" value="5"/>
							</td>
							<td>
								2018/06/22 (五)
								<input type='hidden' name='choice5' value='2018/06/22 (五)' />
							</td>
							<td>
								14:30
								<input type='hidden' name='choice5' value='14:30' />
							</td>
							<td>
								二聽
								<input type='hidden' name='choice5' value='二聽' />
							</td>
						</tr>
					</tbody>
				</table>
				
				<button type="submit" class="btn btn-success">
					Submit
				</button>
				
				
			</div>
			<div class="col-md-1">
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
			</div>
			<div class="col-md-4">
				 
			</div>
			<div class="col-md-4">
			</div>
		</div>
	</form>
</div>
   
   
   <br>
</body>

</html>

