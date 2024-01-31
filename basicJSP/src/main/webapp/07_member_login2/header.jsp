<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%@ include file="./sessionCheck.jsp" %> --%>
<%@ include file ="./common.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 내 JSP 로그인 구현 실습 ver2 </title>
<script type="text/javascript" src="commom.js"></script>
</head>
<body>

<% if(dao.getLog() == -1) { %>
	
	<a href="main.jsp"> 홈 </a> &nbsp;&nbsp;
	<a href="joinForm.jsp"> 회원가입 </a> &nbsp;&nbsp;
	<a href="loginForm.jsp"> 로그인 </a> &nbsp;&nbsp;
	<a href="userList.jsp"> 전체 회원 보기 </a> &nbsp;&nbsp;
	
<% } else {  %>
	<a href="main.jsp"> 홈 </a> &nbsp;&nbsp;
	<a href="logoutPro.jsp"> 로그아웃 </a> &nbsp;&nbsp;
	<a href="updateForm.jsp"> 회원정보 수정 </a> &nbsp;&nbsp;
	<a href="deleteForm.jsp"> 회원 탈퇴 </a> &nbsp;&nbsp;
	<a href="userList.jsp"> 전체 회원 보기 </a> &nbsp;&nbsp;
<% } %>
</body>
</html>