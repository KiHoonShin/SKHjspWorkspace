<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>    
<%
	int idx = Integer.parseInt(request.getParameter("index"));
	daoB.deleteOne(idx);
%>
<script>
	alert('게시글 삭제 완료');
	location.href = "_00_main.jsp";
</script>