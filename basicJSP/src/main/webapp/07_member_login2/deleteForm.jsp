<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./header.jsp" %>    
<% 
  if(session.getAttribute("log")== null){
	  response.sendRedirect("index.jsp");
  }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 회원삭제 </h1>
	<form action="deletePro.jsp">
<table border="1">
		<tr><td> PW </td><td><input type="text" name="pw" required="required"></td></tr>
		<tr><td colspan = "2" align="center" id="submit"><input type="submit" value="회원탈퇴"></td></tr>
	</table>

	<input type="button" value="메인으로" id="btn" onclick="location.href='main.jsp'" />
	
</form>

</body>
</html>