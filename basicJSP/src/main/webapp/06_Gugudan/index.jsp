<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
GugudanDAO Gdao = null; 
if(session.getAttribute("Gdao")== null){
	session.setAttribute("Gdao", new GugudanDAO());
}else{
	Gdao = (GugudanDAO)session.getAttribute("Gdao");
	if(Gdao.getCount() >= 5){
		session.invalidate();
		response.sendRedirect("index.jsp");
	}
}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> 구구단 게임 </h1>
   <h2> 5문제를 모두 맞추면 게임 종료 </h2>
   <a href="gugudan.jsp"> 게임 시작 </a>
</body>
</html>