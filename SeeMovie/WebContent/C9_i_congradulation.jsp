<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>SeeMovie</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
			</div>
		</div>
	</div>

	<br>	
	
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				恭喜完成訂票，記得買個爆米花喔!!!
			</h3>
		</div>
	</div>
	
	<br>
	
	<div class="row">
		<div class="col-md-2">
		</div>
		
		<div class="col-md-8">
			
			
			<table class="table">
				<tbody>
					<tr class="table-danger">
						<td>
							<h3 class="text-center">
								遊戲抽獎
							</h3> 
							<button type="button" class="btn btn-lg btn-danger btn-block"
							    onclick="location.href='https://lab-saykishish.c9users.io/%E5%B0%88%E9%A1%8C/jQuery%20slot%20machine/SeeMoviePlayGame.html'">
								Play
							</button>
						</td>
					</tr>
				</tbody>
			</table>
			
			
		</div>
		<div class="col-md-2">
		</div>
	</div>
</div>


</body>
</html>


