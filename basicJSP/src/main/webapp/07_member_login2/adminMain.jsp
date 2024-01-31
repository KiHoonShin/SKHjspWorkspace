<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./header.jsp" %>    
<% 

  if(session.getAttribute("log")== null){
	  response.sendRedirect("index.jsp");
	  return;
  }else if(session.getAttribute("admin")== null){
	  response.sendRedirect("main.jsp");
	  return;
  }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="commom.js"></script>   
</head>
<body>
<h1> 관리자 메인 </h1>
	<a href="logoutPro.jsp"> 로그아웃 </a>
	<a href="adminUserList.jsp"> 회원관리 </a>
<input type="button" value="메인으로" id="btn" onclick="location.href='main.jsp'" />
</body>
</html>