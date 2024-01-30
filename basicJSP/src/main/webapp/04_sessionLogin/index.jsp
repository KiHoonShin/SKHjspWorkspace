<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String name = (String)session.getAttribute("name");
%>
<h1> 홈화면 </h1>

<%
	if(name == null){ %>
		<a href="join.jsp">회원가입</a>
		<a href="login.jsp">로그인</a>
	<% } else { %>
		<h1><%= name %>님 어서오세요 </h1>
		<a href="logout.jsp">로그아웃</a>
	<% } %>
<!-- <a href="join.jsp">회원가입</a>
<a href="login.jsp">로그인</a> -->

</body>
</html>