<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%



//String[] seat = (String[])request.getParameterValues("seat");
//for(String one : seat) {
//	System.out.println(one);
//}


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="test_self.jsp" method="get">
	<table>
 		<td>A</td>
		<td><input type="checkbox" name="seat" value="A1"></td>
		<td><input type="checkbox" name="seat" value="A2"></td>
		<td><input type="checkbox" name="seat" value="A3"></td>
		<td><input type="checkbox" name="seat" value="A4"></td>
		
	
	</table>
	<button type="submit">
		Submit
	</button>
	
	
</form>

</body>
</html>