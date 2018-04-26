<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>    

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%

	LinkedList<HashMap<String,String>> ms = new LinkedList<>();



	HashMap<String,String> d0 = new HashMap<>();

	d0.put("data1", "data01");

	d0.put("data2", "data02");

	d0.put("data3", "data03");

	ms.add(d0);



	HashMap<String,String> d1 = new HashMap<>();

	d1.put("data1", "data11");

	d1.put("data2", "data12");

	d1.put("data3", "data13");

	ms.add(d1);



	HashMap<String,String> d2 = new HashMap<>();

	d2.put("data1", "data21");

	d2.put("data2", "data22");

	d2.put("data3", "data23");

	ms.add(d2);



	HashMap<String,String> d3 = new HashMap<>();

	d3.put("data1", "data31");

	d3.put("data2", "data32");

	d3.put("data3", "data33");

	ms.add(d3);



	HashMap<String,String> d4 = new HashMap<>();

	d4.put("data1", "data41");

	d4.put("data2", "data42");

	d4.put("data3", "data43");

	ms.add(d4);



	HashMap<String,String> d5 = new HashMap<>();

	d5.put("data1", "data51");

	d5.put("data2", "data52");

	d5.put("data3", "data53");

	ms.add(d5);



	HashMap<String,String> d6 = new HashMap<>();

	d6.put("data1", "data61");

	d6.put("data2", "data62");

	d6.put("data3", "data63");

	ms.add(d6);



	HashMap<String,String> d7 = new HashMap<>();

	d7.put("data1", "data71");

	d7.put("data2", "data72");

	d7.put("data3", "data73");

	ms.add(d7);



	HashMap<String,String> d8 = new HashMap<>();

	d8.put("data1", "data81");

	d8.put("data2", "data82");

	d8.put("data3", "data83");

	ms.add(d8);



	HashMap<String,String> d9 = new HashMap<>();

	d9.put("data1", "data91");

	d9.put("data2", "data92");

	d9.put("data3", "data93");

	ms.add(d9);



	HashMap<String,String> d10 = new HashMap<>();

	d10.put("data1", "data101");

	d10.put("data2", "data102");

	d10.put("data3", "data103");

	ms.add(d10);



	HashMap<String,String> d11 = new HashMap<>();

	d11.put("data1", "data111");

	d11.put("data2", "data112");

	d11.put("data3", "data113");

	ms.add(d11);



	// 以上隨意增加資料項吧!

	// ------------------------------------------------------------------

	// 計算以上資料量 

	int amount = ms.size();

	// 計算以上資料量的列數 

	int rows = (int)Math.ceil(amount / 5.0);

	

	pageContext.setAttribute("ms", ms);

	pageContext.setAttribute("rows", rows-1);

	pageContext.setAttribute("amount", amount);

%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<title>no title</title>

</head>

<body>



<div class="container-fluid">

	<div class="row">

	



	以下是客戶要求的原版的頁面原始碼

	<div class="row">

		<div class="col-md-1">

		</div>
		
		... 以下出現五次 ...

		<div class="col-md-2">

			<img alt="Bootstrap Image Preview" src="http://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />

			<h3>

				h3. Lorem ipsum dolor sit amet.

			</h3> 

			<button type="button" class="btn btn-success">

				<a href="https://lab-saykishish.c9users.io/180416/c_introduction.html">電影介紹</a>

			</button>

		</div>

		... 以上出現五次 ...

		<div class="col-md-1">

		</div>

	</div>



 
	... 第二次for-each 長出幾列  ...
	
 	<c:forEach var="j" begin="0" end="${rows }">

 	

		<div class="row">

			<div class="col-md-1">

			</div>

			
			... 第一次for-each 長五個 div ...
			
			<c:forEach var="i" begin="0" end="4">

			

				<c:if test="${ 5*j+i < amount }">

			

					... 五個 div ...

					<div class="col-md-2">

						<img alt="Bootstrap Image Preview" src="http://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />

						<h3>

							${ms[5*j+i].data2 }

						</h3> 

						<button type="button" class="btn btn-success">

							<a href="https://lab-saykishish.c9users.io/180416/c_introduction.html">電影介紹</a>

						</button>

					</div>
					
					... 五個 div ...
				

				</c:if>

				

			</c:forEach>

			 ... 第一次for-each 長五個 div ...
			 

			<div class="col-md-1">

			</div>

		</div>

		

	</c:forEach>

	... 第二次for-each 長出幾列  ...
	

 </div>

 </div>

</body>

</html>