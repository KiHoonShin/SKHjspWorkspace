<%@page import="member.Member"%>
<%@page import="java.awt.dnd.DropTargetListener"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="./header.jsp" %>       
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 회원 목록 </h1>

<table border="1">
<tr>
  <th>아이디 </th>
  <th>패스워드 </th>
  <th>이름 </th>
  <th>성별 </th>
  <th> 삭제 </th>
</tr>

<% for(int i =0; i < dao.getListCount(); i++ ) {
	Member m = dao.getOneMember(i);
	if(m.getId().equals("admin")) continue;
	
%>
<tr>
  <th> <%= m.getId()%> </th>
  <th><%= m.getPw()%> </th>
  <th><%= m.getName()%> </th>
  <th><%= m.getGender()%> </th>
  <th> <button onclick="location.href='adminDeletePro.jsp?idx=<%=i%>'" > 삭제 </button> </th>
</tr>
<% } %>

</table>


</body>
</html>