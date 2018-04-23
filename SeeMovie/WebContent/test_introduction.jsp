<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-3">
			<img alt="Bootstrap Image Preview" src="./imgs/golden.jpg" style="width:200px"/>
			<br>
			<div class="row">
				<div class="col-md-12">
					 <form action="x_back_order_register.jsp">
						<button type="submit" class="btn btn-success btn-block active btn-lg">
							訂票
						</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<h3>
				大雄的金銀島
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
							1
						</td>
						<td>
							2018/06/09 (六)
						</td>
						<td>
							09:00
						</td>
						<td>
							二聽
						</td>
					</tr>
					<tr class="table-active">
						<td>
							2
						</td>
						<td>
							2018/06/11 (一)
						</td>
						<td>
							20:00
						</td>
						<td>
							一聽
						</td>
					</tr>
					<tr class="table-success">
						<td>
							3
						</td>
						<td>
							2018/06/13 (三)
						</td>
						<td>
							14:45
						</td>
						<td>
							二聽
						</td>
					</tr>
					<tr class="table-warning">
						<td>
							4
						</td>
						<td>
							2018/06/20 (三)
						</td>
						<td>
							9:00
						</td>
						<td>
							一聽
						</td>
					</tr>
					<tr class="table-danger">
						<td>
							5
						</td>
						<td>
							2018/06/22 (五)
						</td>
						<td>
							14:30
						</td>
						<td>
							二聽
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="col-md-1">
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-10">
			<h3>
				劇情簡介
			</h3>
			<p>
				<strong>出發尋寶</strong>. 
				「我一定會找到金銀島！」大雄這麼對胖虎宣言後，就向哆啦A夢求救，使用道具「尋寶地圖」尋找金銀島。
				而地圖指示出來的位置，居然是太平洋上莫名冒出來的新島嶼……。 <br>
				<strong>海盜來襲</strong>. 
				大雄一行人搭著名為「大雄奧拉號」的船前往金銀島，就在即將靠岸時，卻有海盜來襲！面對突然現身的敵人，
				大雄他們陷入一陣苦戰，此時靜香卻被抓到海盜船上了！<br>
				<strong>「找到的是，超越寶物的寶物」</strong>. 
				海盜們逃走後，大雄他們遇到了一名在海上漂流的少年「弗洛克」與機器鸚鵡「謎題」。
				弗洛克是從海盜船逃出來的機械工，而且知道金銀島隱藏的重要秘密！究竟大雄他們是否能夠從海盜手中救出靜香！？
				而沉眠於金銀島上的財寶究竟又有什麼秘密！？<br>
			</p>
		</div>
		<div class="col-md-1">
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-3">
			<img alt="" src="" />
		</div>
		<div class="col-md-4">
			<img alt="" src="" />
		</div>
		<div class="col-md-3">
			<img alt="" src="" />
		</div>
		<div class="col-md-1">
		</div>
	</div>
</div>
    <br>
</body>

</html>