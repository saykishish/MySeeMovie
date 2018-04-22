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

String[] choices1 = request.getParameterValues("choice1");
String[] choices2 = request.getParameterValues("choice2");
//String[] choices3 = (String[])request.getParameterValues("choice3");
//String[] choices4 = (String[])request.getParameterValues("choice4");
//String[] choices5 = (String[])request.getParameterValues("choice5");




for(String choice : choices1){
	out.print(choice + "<br>");
}

for(String choice : choices2){
	out.print(choice + "<br>");
}

//for(String choice : choices3){
//	out.print(choice + "<br>");
//}

//for(String choice : choices4){
//	out.print(choice + "<br>");
//}

//for(String choice : choices5){
//	out.print(choice + "<br>");
//}

//String[] choices2 = (String[])request.getParameterValues("choice2");
//for(String choice : choices2){
//	out.print(choice + "<br>");
//}


//String[] name = {"Tony","Marry"};

//for(String one : name) {
//	out.print(one);
//}


//out.print("辜");

%>

</body>
</html>