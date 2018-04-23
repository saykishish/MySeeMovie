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

//String choices1 = request.getParameter("choice1");
//String choices2 = request.getParameter("choice2");

//out.print(choices1 + "<br>");
//out.print(choices2);


//加上hidden 欄位 choice1就不是唯一的值了   因為如此一來有三個choice1 所以需要陣列
String[] myChoice = request.getParameterValues("choice1");

for(String choice : myChoice){
	out.print(choice + "<br>");
}

//for(String choice : choices2){
//	out.print(choice + "<br>");
//}


%>
</body>
</html>