<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>   
 <%
 	if(request.getParameter("writer") == null || request.getParameter("subject") == null
 	|| request.getParameter("textarea") == null){
 		response.sendRedirect("_04_addBoard.jsp");
 		return;
 	}
 	String writer = request.getParameter("writer");
 	String sub = request.getParameter("subject");
 	String cont = request.getParameter("textarea");

 	daoB.addBoard(writer, sub, cont);
 %>
 <script>
 	alert('게시글 추가 완료');
 	location.href = "_00_main.jsp";
 </script>
