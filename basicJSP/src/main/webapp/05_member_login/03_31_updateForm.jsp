<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
	ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("namelist");
	ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
	
	int log = (int)session.getAttribute("log");
	String gender = genderList.get(log);
	
	boolean isMan = false;
	if(gender.equals("남성")){
		isMan = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원정보 수정</h1>
	<form action = "03_32_updatePro.jsp">
	<table border ="1">
		<tr>
			<td /> 아이디
			<td />
			<input name="id" value="<%=idList.get(log)%>" />
		</tr>
		<tr>
			<td /> 패스워드
			<td />
			<input type = "text" name="pw" />
		</tr>
		<tr>
			<td /> 이름
			<td />
			<input type="text" name="name" value="<%=nameList.get(log)%>" />
		</tr>
		<tr>
			<td /> 성별
			<% if(isMan) { %>
				<td><input type="radio" name="gender" value="남성" checked> 남성 
				<input type="radio" name="gender" value="여성"> 여성</td>
			<% } else { %>
				<td><input type="radio" name="gender" value="남성"> 남성 
				<input type="radio" name="gender" value="여성" checked> 여성</td>
			<% } %>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="입력완료"></td>
		</tr>
	</table>
	</form>
</body>
</html>