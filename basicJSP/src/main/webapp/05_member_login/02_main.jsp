<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
  int log = -1;
  if(session.getAttribute("log")== null){
	  response.sendRedirect("index.jsp");
  } else {
	  log = (int)session.getAttribute("log");
  }


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 colspan="2" align="center"> 메인 페이지 </h1>
	<table colspan="2" align="center" border="1">
	 <tr >
	<% if(log == -1) {%>
		<td/><a href="03_11_joinForm.jsp" colspan="2" align="center">회원가입</a>
		<td/><a href="03_21_loginForm.jsp">로그인</a>
	<% } else { %>
		<td/><a href="03_23_logoutPro.jsp">로그아웃</a>
		<td/><a href="03_31_updateForm.jsp">회원정보수정</a>
		<td/><a href="03_41_deleteForm.jsp">회원탈퇴</a>
	<% } %>
	 </tr>
	</table>
</body>
</html>