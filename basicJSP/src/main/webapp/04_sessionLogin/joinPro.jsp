<%@page import="java.util.ArrayList"%>
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
 
 String name = request.getParameter("name");
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 
 session.setAttribute("name", name);
 ArrayList list = new ArrayList();
 list.add(id);
 list.add(pw);
 session.setAttribute("user" , list);
 
 // 세션은 보통 30분으로 디폴트 서버안에 저장 되어 있음
 // session.setMaxInactiveInterval(5);  => 5초동안만 유지로 변경
%>

<% if(name != null && id != null && pw != null) { %>
	<script>
		alert('회원가입 성공')
		location.href="login.jsp";
	</script>
<%}%>

<!-- <a href="login.jsp"> 로그인하러가기 </a> -->



</body>
</html>