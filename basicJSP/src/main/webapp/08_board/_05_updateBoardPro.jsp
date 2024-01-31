<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>    
<%
	if(request.getParameter("subject") == null || request.getParameter("textarea") == null){
		response.sendRedirect("_05_updateBoard.jsp");
		return;
	}
	String sub = request.getParameter("subject");
	String cont = request.getParameter("textarea");
	
	daoB.updateBoard(sub, cont);
%>
<script>
  alert('수정 완료');
  location.href = "_00_main.jsp";
</script>