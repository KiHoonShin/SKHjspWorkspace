<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "./header.jsp" %>
<%
MemberDAO dao = null;

if(session.getAttribute("dao") == null){
	session.setAttribute("dao", new MemberDAO());
} else {
	dao = (MemberDAO)session.getAttribute("dao");
}


%>
<h1> 메인이야 </h1>

<%@ include file = "./footer.jsp" %>