<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="./common.jsp" %>

<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
	
dao.addMember(id, pw, name, gender);

%>

<script>
	msgGoMain('회원가입 성공');
</script>