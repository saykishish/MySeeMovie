<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String choices1 = request.getParameter("choice1");
String choices2 = request.getParameter("choice2");

out.print(choices1 + "<br>");
out.print(choices2);


//for(String choice : choices1){
//	out.print(choice + "<br>");
//}

//for(String choice : choices2){
//	out.print(choice + "<br>");
//}


%>
</body>
</html>