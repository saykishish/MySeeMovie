<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


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
							 <a class="nav-link" href="http://localhost:8080/SeeMovie/C9_b_movieList.jsp">電影介紹</a>
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
	
	<div class="row">
		<div class="col-md-12">
			<div class="carousel slide" id="carousel-167744">
				<ol class="carousel-indicators">
					<li data-slide-to="0" data-target="#carousel-167744">
					</li>
					<li data-slide-to="1" data-target="#carousel-167744" class="active">
					</li>
					<li data-slide-to="2" data-target="#carousel-167744">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item">
						<img class="d-block w-100" alt="Carousel Bootstrap First" src="./imgs/dora3.jpg" />
						<div class="carousel-caption">
							<h4>
								First Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					<div class="carousel-item active">
						<img class="d-block w-100" alt="Carousel Bootstrap Second" src="./imgs/dora1.jpg" style="width:200px"/>
						<div class="carousel-caption">
							<h4>
								Second Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					
					<br>
					
					<div class="carousel-item" style="margin:30px;">
						<img class="d-block w-100" alt="Carousel Bootstrap Third" src="./imgs/dora2.jpg" />
						<div class="carousel-caption">
							<h4>
								Third Thumbnail label
							</h4>
							<p>
								Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
							</p>
						</div>
					</div>
					
				</div> <a class="carousel-control-prev" href="#carousel-167744" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-167744" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		
		<br/>
		
		<div class="col-md-3">
			<h3>
				h3. Lorem ipsum dolor sit amet.
			</h3>
			<p>
				Lorem ipsum dolor sit amet, <strong>consectetur adipiscing elit</strong>. Aliquam eget sapien sapien. Curabitur in metus urna. In hac habitasse platea dictumst. Phasellus eu sem sapien, sed vestibulum velit. Nam purus nibh, lacinia non faucibus et, pharetra in dolor. Sed iaculis posuere diam ut cursus. <em>Morbi commodo sodales nisi id sodales. Proin consectetur, nisi id commodo imperdiet, metus nunc consequat lectus, id bibendum diam velit et dui.</em> Proin massa magna, vulputate nec bibendum nec, posuere nec lacus. <small>Aliquam mi erat, aliquam vel luctus eu, pharetra quis elit. Nulla euismod ultrices massa, et feugiat ipsum consequat eu.</small>
			</p>
		</div>
		<div class="col-md-4">
			<h3>
				h3. Lorem ipsum dolor sit amet.
			</h3>
			<ul>
				<li class="list-item">
					Lorem ipsum dolor sit amet
				</li>
				<li class="list-item">
					Consectetur adipiscing elit
				</li>
				<li class="list-item">
					Integer molestie lorem at massa
				</li>
				<li class="list-item">
					Facilisis in pretium nisl aliquet
				</li>
				<li class="list-item">
					Nulla volutpat aliquam velit
				</li>
				<li class="list-item">
					Faucibus porta lacus fringilla vel
				</li>
				<li class="list-item">
					Aenean sit amet erat nunc
				</li>
				<li class="list-item">
					Eget porttitor lorem
				</li>
			</ul>
		</div>
		<div class="col-md-3">
			<ol>
				<li class="list-item">
					Lorem ipsum dolor sit amet
				</li>
				<li class="list-item">
					Consectetur adipiscing elit
				</li>
				<li class="list-item">
					Integer molestie lorem at massa
				</li>
				<li class="list-item">
					Facilisis in pretium nisl aliquet
				</li>
				<li class="list-item">
					Nulla volutpat aliquam velit
				</li>
				<li class="list-item">
					Faucibus porta lacus fringilla vel
				</li>
				<li class="list-item">
					Aenean sit amet erat nunc
				</li>
				<li class="list-item">
					Eget porttitor lorem
				</li>
			</ol>
			<h3>
				h3. Lorem ipsum dolor sit amet.
			</h3>
		</div>
		<div class="col-md-1">
		</div>
	</div>
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-5">
			<h3 class="text-center">
				h3. Lorem ipsum dolor sit amet.
			</h3>
			<ol>
				<li class="list-item">
					Lorem ipsum dolor sit amet
				</li>
				<li class="list-item">
					Consectetur adipiscing elit
				</li>
				<li class="list-item">
					Integer molestie lorem at massa
				</li>
				<li class="list-item">
					Facilisis in pretium nisl aliquet
				</li>
				<li class="list-item">
					Nulla volutpat aliquam velit
				</li>
				<li class="list-item">
					Faucibus porta lacus fringilla vel
				</li>
				<li class="list-item">
					Aenean sit amet erat nunc
				</li>
				<li class="list-item">
					Eget porttitor lorem
				</li>
			</ol>
		</div>
		<div class="col-md-5">
			<div class="media">
				<img class="mr-3" alt="Bootstrap Media Preview" src="http://www.layoutit.com/img/sports-q-c-64-64-8.jpg" />
				<div class="media-body">
					<h5 class="mt-0">
						Nested media heading
					</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
					<div class="media mt-3">
						 <a class="pr-3" href="#"><img alt="Bootstrap Media Another Preview" src="http://www.layoutit.com/img/sports-q-c-64-64-2.jpg" /></a>
						<div class="media-body">
							<h5 class="mt-0">
								Nested media heading
							</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-1">
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-toggleable-md navbar-light bg-faded">
				 
				<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="navbar-toggler-icon"></span>
				</button> <a class="navbar-brand" href="#">Brand</a>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="navbar-nav">
						<li class="nav-item active">
							 <a class="nav-link" href="#">Link <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							 <a class="nav-link" href="#">Link</a>
						</li>
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">Dropdown link</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
								<div class="dropdown-divider">
								</div> <a class="dropdown-item" href="#">Separated link</a>
							</div>
						</li>
					</ul>
					<form class="form-inline">
						<input class="form-control mr-sm-2" type="text" /> 
						<button class="btn btn-primary my-2 my-sm-0" type="submit">
							Search
						</button>
					</form>
					<ul class="navbar-nav ml-md-auto">
						<li class="nav-item active">
							 <a class="nav-link" href="#">Link <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item dropdown">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">Dropdown link</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
								 <a class="dropdown-item" href="#">Action</a> <a class="dropdown-item" href="#">Another action</a> <a class="dropdown-item" href="#">Something else here</a>
								<div class="dropdown-divider">
								</div> <a class="dropdown-item" href="#">Separated link</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</div>  


</body>

</html>