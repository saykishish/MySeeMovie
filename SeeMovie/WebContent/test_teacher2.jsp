<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	LinkedList<HashMap<String, String>> ms = new LinkedList<>();

	HashMap<String, String> d0 = new HashMap<>();

	d0.put("data1", "data01");

	d0.put("data2", "data02");

	d0.put("data3", "data03");

	ms.add(d0);

	HashMap<String, String> d1 = new HashMap<>();

	d1.put("data1", "data11");

	d1.put("data2", "data12");

	d1.put("data3", "data13");

	ms.add(d1);

	HashMap<String, String> d2 = new HashMap<>();

	d2.put("data1", "data21");

	d2.put("data2", "data22");

	d2.put("data3", "data23");

	ms.add(d2);

	HashMap<String, String> d3 = new HashMap<>();

	d3.put("data1", "data31");

	d3.put("data2", "data32");

	d3.put("data3", "data33");

	ms.add(d3);

	HashMap<String, String> d4 = new HashMap<>();

	d4.put("data1", "data41");

	d4.put("data2", "data42");

	d4.put("data3", "data43");

	ms.add(d4);

	HashMap<String, String> d5 = new HashMap<>();

	d5.put("data1", "data51");

	d5.put("data2", "data52");

	d5.put("data3", "data53");

	ms.add(d5);

	HashMap<String, String> d6 = new HashMap<>();

	d6.put("data1", "data61");

	d6.put("data2", "data62");

	d6.put("data3", "data63");

	ms.add(d6);

	HashMap<String, String> d7 = new HashMap<>();

	d7.put("data1", "data71");

	d7.put("data2", "data72");

	d7.put("data3", "data73");

	ms.add(d7);

	HashMap<String, String> d8 = new HashMap<>();

	d8.put("data1", "data81");

	d8.put("data2", "data82");

	d8.put("data3", "data83");

	ms.add(d8);

	HashMap<String, String> d9 = new HashMap<>();

	d9.put("data1", "data91");

	d9.put("data2", "data92");

	d9.put("data3", "data93");

	ms.add(d9);

	HashMap<String, String> d10 = new HashMap<>();

	d10.put("data1", "data101");

	d10.put("data2", "data102");

	d10.put("data3", "data103");

	ms.add(d10);

	HashMap<String, String> d11 = new HashMap<>();

	d11.put("data1", "data111");

	d11.put("data2", "data112");

	d11.put("data3", "data113");

	ms.add(d11);

	// 以上隨意增加資料項吧!

	// ------------------------------------------------------------------
	//以上從0開始~11筆 共12個資料，一列放五個/5=2.2  (會有兩列  多兩個)
	//ceil 會幫助運算成3個，與他相對的為flow吧會幫助運算為2
	//因此我們得到有3列  這件事
	//外圈的for-each 從0開始 做到第row個，--> 0 1 2 ，我們row是3 所以row-1=2
	//if 判斷 若<總數12 就持續執行
	

	// 計算以上資料量 

	int amount = ms.size();

	// 計算以上資料量的列數 

	int rows = (int) Math.ceil(amount / 5.0);

	pageContext.setAttribute("ms", ms);

	pageContext.setAttribute("rows", rows - 1);

	pageContext.setAttribute("amount", amount);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<title>no title</title>

</head>

<body>



	<div class="container-fluid">

		



			<!-- 
<div class="row">
	以下是客戶要求的原版的頁面原始碼

	<div class="row">

		<div class="col-md-1">

		</div>

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

 -->



			<c:forEach var="j" begin="0" end="${rows }">



				<div class="row">

					<div class="col-md-1"></div>



					<c:forEach var="i" begin="0" end="4">


						<!-- 外圈j=2 內圈i=2 時，12。 總共資料為0~11筆，12>11了 後面都不要做了不用印了 -->
						<c:if test="${ 5*j+i < amount }">



							<div class="col-md-2">

								<img alt="Bootstrap Image Preview"
									src="http://www.layoutit.com/img/sports-q-c-140-140-3.jpg" />
								
								<!-- 在計算紙上計算著，
								第一列:0 1 2 3 4
								第二列:5 6 7 8 9
								第三列:10 11
								每列之間都差5，所以會依5的倍數遞增
								所以才會"5*j列"，然後北列的01234本來就存在 所以會加i，不然單存只有5*j->5 10 15 
								j=0 i=0: 0
								j=0 i=1: 1
								j=0 i=2: 2
								j=0 i=3: 3
								j=0 i=4: 4
								走完第一輪
								j=1 i=0: 5
								j=1 i=1: 6
								j=1 i=2: 7
								j=1 i=3: 8
								j=1 i=4: 9
								走完第二輪								
								j=2 i=0: 10
								j=2 i=1: 11  
								j=2 i=2: 12  (12 < amount(12筆) 超出12不要在印了) 
								j=2 i=3: 13  (不用做了) 改印版型div
								j=2 i=4: 14  (不用做了) 改印版型div
								
								<div class="container-fluid"> boostrap 已經做了行像長的事情 不是程式控制的
								老師信中程式碼 就是第45列多寫的
								
								這裡的特性可以幫忙處理版面，但table又更複雜 就要看回java的九九乘法
								這裡可以參考j2ee的版本九九乘法
								 -->
								<h3>${ms[5*j+i].data2 }</h3>

								<button type="button" class="btn btn-success">

									<a href="https://lab-saykishish.c9users.io/180416/c_introduction.html">電影介紹</a>

								</button>

							</div>



						</c:if>
						<!-- 總資料0~11筆，12>=12，多印出這個div -->
						<c:if test="${ 5*j+i >= amount }">
							<div class="col-md-2">

							</div>
						</c:if>


					</c:forEach>



					<div class="col-md-1"></div>

				</div>



			</c:forEach>



		</div>

	</div>

</body>

</html>