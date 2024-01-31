<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO daoB = null;
	
	if(session.getAttribute("daoB") == null){
		response.sendRedirect("index.jsp");
		return;
	} else {
		daoB = (BoardDAO)session.getAttribute("daoB");
	}
%>