<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="./common.jsp" %>   
<script type="text/javascript" src="commom.js"></script>

<% 


String id = request.getParameter("id");
String pw = request.getParameter("pw");

boolean pass = dao.checkLogin(id, pw);

if(!pass){
	%>
	<script>
	msgUrl("로그인실패" ,"loginForm.jsp" );
	</script>
	
	<% }
if(id.equals("admin")){
	
	session.setAttribute("admin", "admin");
	
	%>
	<script>
	
	msgUrl("관리자님 환영합니다" ,"adminMain.jsp" );
	
	</script>
	
	<%
}else{
	%>
	<script>
	
	msgGoMain("로그인성공");
	
	</script>
	
	<%
	}
%>