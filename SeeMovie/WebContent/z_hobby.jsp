<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="z_back_hobby.jsp">
			<input type="radio" name="gender" value="m">Male
			<input type="radio" name="gender" value="f">Female<br />
			
			<input type="checkbox" name="hobby" value="1"> 打電腦
			<input type="hidden" name="hobby" value="打電腦">
			<input type="checkbox" name="hobby" value="2"> 打籃球
			<input type="hidden" name="hobby" value="打籃球">
			<input type="checkbox" name="hobby" value="3"> 打麻將
			<input type="checkbox" name="hobby" value="4"> 打毛線
			<input type="checkbox" name="hobby" value="5"> 打小孩
			<input type="checkbox" name="hobby" value="6"> 打電動
			<input type="submit" value="OK" />
		</form>	

</body>
</html>