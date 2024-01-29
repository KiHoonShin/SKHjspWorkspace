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
		int num1 = Integer.parseInt(request.getParameter("first"));
		int num2 = Integer.parseInt(request.getParameter("two"));
		
		
	%>
	
	<h1> num1 = <%= num1 %></h1>
	<h1> num2 = <%= num2 %></h1>
	<h1> hap = <%= num1 + num2 %></h1>
	
</body>
</html>