<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="commom.js"></script>
<%
MemberDAO dao = null;
int log = -1;
if(session.getAttribute("dao")== null){
	  response.sendRedirect("index.jsp");
	  System.out.println("commom.jsp");
	  return;
}else{
	dao = (MemberDAO)session.getAttribute("dao");
	log = dao.getLog();
}
%>