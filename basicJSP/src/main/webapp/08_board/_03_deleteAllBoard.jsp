<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>
<%
	daoB.deleteAll();
%>
<script>
	alert("전체 삭제 완료");
	location.href="_00_main.jsp";
</script>