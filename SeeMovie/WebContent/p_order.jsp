<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="p_back_order.jsp" method="get">
		
		<input type="checkbox" name="choice1" value="1"/>1<br>
		<input type='hidden' name='choice1' value='09:00' />
		<input type='hidden' name='choice1' value='二聽' />
		
		<input type="checkbox" name="choice2" value="2"/>2<br>
		<input type='hidden' name='choice2' value='20:00' />
		<input type='hidden' name='choice2' value='一聽' />
		
		<input type="submit" value="OK" />
	</form>

</body>
</html>