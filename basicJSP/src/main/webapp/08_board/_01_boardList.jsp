<%@page import="board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>전체 게시글 수 : <%= daoB.getLength()%>개 </p>
	<table border='1'>
	 <tr>
	  <th/> 번호
	  <th/> 작성자
	  <th/> 작성일
	  <th/> 제목
	  <th/> 내용
	  <th/> 삭제
	 </tr>
	<% for(int i = 0; i < daoB.getLength(); i+=1 ) {
		BoardVO v = daoB.getOneMember(i);
	%>
	 <tr>
	  <td><%= v.getNo() %></td>
	  <td><%= v.getWriter() %></td>
	  <td><%= v.getRegDate() %></td>
	  <td><a href="_05_updateBoard.jsp?index=<%=i%>"><%= v.getSubject() %></a></td>
	  <td><%= v.getContents() %></td>
	  <td><button onclick="location.href = '_06_deleteBoardPro.jsp?index=<%= i %>'">삭제하기</button></td>
	 </tr>
 <% } %>
	 <tr> 
	 <td><button onclick="location.href='_00_main.jsp'">메인화면</button></td>
	 </tr>
	</table>
</body>
</html>