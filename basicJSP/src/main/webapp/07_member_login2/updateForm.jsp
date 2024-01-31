<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./header.jsp" %>
<% 
	if(session.getAttribute("admin") != null){
		response.sendRedirect("main.jsp");
		return;
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 회원수정  </h1>
	<form action="updatePro.jsp" method="post">
	<table border="1">
		<tr><td>아이디</td><td><input type="text" name="id" value="<%=dao.getLogMember().getId()%>" readonly></td></tr>
		<tr><td>패스워드</td><td><input type="password" name="pw" required></td></tr>
		<tr><td>이름</td><td><input type="text" name="name" value="<%=dao.getLogMember().getName()%>" ></td></tr>
		<tr><td>성별</td><td><input type="radio" name="gender" value="남성" <%if(dao.getLogMember().getGender().equals("남성")){ %> checked <%} %>/>남성&nbsp;
                     <input type="radio" name="gender" value="여성" <%if(dao.getLogMember().getGender().equals("여성")){ %> checked <%} %>>여성&nbsp;</td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="정보수정"></td></tr>
	</table>
	</form>
	<input type="button" value="메인으로" id="btn" onclick="location.href='main.jsp'" />


</body>
</html>