<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script type="text/javascript" src="commom.js"></script>
<%
ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("namelist");
ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
int log = (int)session.getAttribute("log");

String inputPw = request.getParameter("pw");
String userPw = pwList.get(log);

String inputName = request.getParameter("name");
String inputGender = request.getParameter("gender");


boolean samePw = false;

if(inputPw.equals(userPw)){
	samePw = true;
	nameList.set(log, inputName);
	genderList.set(log, inputGender);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(samePw) {%>
		<script>
			alert('회원정보가 수정 되었습니다.');
			location.href = "02_main.jsp";
		</script>
	<% } else { %>
		<script>
		 alert('비밀번호 불일치');
		 location.href = "03_31_updateForm.jsp";
		</script>
	<% } %>

</body>
</html>