<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
 ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
 ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("namelist");
 ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
 
 String name = request.getParameter("name");
 String id = request.getParameter("id");
 String pw = request.getParameter("pw");
 String gender = request.getParameter("gender");
 
 if(name != null && id != null && pw != null) {
 idList.add(id);
 pwList.add(pw);
 nameList.add(name);
 genderList.add(gender);
 %>
 	<script>
	alert('회원가입 성공')
	location.href="02_main.jsp";
 	</script>
 <%}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>