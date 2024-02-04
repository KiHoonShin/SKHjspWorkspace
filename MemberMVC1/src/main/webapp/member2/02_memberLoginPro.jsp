<%@page import="kr.basic.member.MemberDAO2"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	int num = MemberDAO2.getInstance().checkLogin(id, pw);
	
	if(num > 0) {
		session.setAttribute("log", num);
%>
<script>
alert('로그인 성공');
location.href = "01_memberlist.jsp";
</script>
<% } else { %>
<script>
alert('로그인 실패');
location.href = "01_memberlist.jsp";
</script>
<% } %>
