<%@page import="java.util.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
ArrayList movieList = new ArrayList();
Map movie1 = new HashMap();
movie1.put("name", "大雄的恐龍");
movie1.put("year", "1980");
movie1.put("img", "https://chinesedora.com/images/69movie.jpg");
movieList.add(movie1);

Map movie2 = new HashMap();
movie2.put("name", "大雄的宇宙開拓史");
movie2.put("year", "1981");
movie2.put("img", "https://chinesedora.com/images/70movie.jpg");
movieList.add(movie2);

Map movie3 = new HashMap();
movie3.put("name", "大雄的大魔境");
movie3.put("year", "1982");
movie3.put("img", "https://chinesedora.com/images/71movie.jpg");
movieList.add(movie3);

Map movie4 = new HashMap();
movie4.put("name", "大雄的海底鬼岩城");
movie4.put("year", "1983");
movie4.put("img", "https://chinesedora.com/images/72movie.jpg");
movieList.add(movie4);

Map movie5 = new HashMap();
movie5.put("name", "大雄的魔界大冒險");
movie5.put("year", "1984");
movie5.put("img", "https://chinesedora.com/images/73movie.jpg");
movieList.add(movie5);

Map movie6 = new HashMap();
movie6.put("name", "大雄的宇宙小戰爭");
movie6.put("year", "1985");
movie6.put("img", "https://chinesedora.com/images/74movie.jpg");
movieList.add(movie6);

Map movie7 = new HashMap();
movie7.put("name", "大雄的鐵人兵團");
movie7.put("year", "1986");
movie7.put("img", "https://chinesedora.com/images/75movie.jpg");
movieList.add(movie7);

Map movie8 = new HashMap();
movie8.put("name", "大雄的龍騎士");
movie8.put("year", "1987");
movie8.put("img", "https://chinesedora.com/images/76movie.jpgg");
movieList.add(movie8);

Map movie9 = new HashMap();
movie9.put("name", "大雄的平行西遊記");
movie9.put("year", "1988");
movie9.put("img", "https://chinesedora.com/images/77movie.jpg");
movieList.add(movie9);

Map movie10 = new HashMap();
movie10.put("name", "大雄的日本誕生");
movie10.put("year", "1989");
movie10.put("img", "https://chinesedora.com/images/78movie.jpg");
movieList.add(movie10);


pageContext.setAttribute("movieList", movieList);
%>

<table border="1">

<c:forEach items="${movieList }" var="x">
	<tr>
		<td><c:out value="${x.name }"></c:out></td>
		<td><c:out value="${x.year }"></c:out></td>
		<td><c:out value="${x.img }"></c:out></td>
	</tr>
</c:forEach>

</table>





</body>
</html>





