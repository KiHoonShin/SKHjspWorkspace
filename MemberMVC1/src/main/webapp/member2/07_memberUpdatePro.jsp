<%@page import="kr.basic.member.MemberDAO2"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	int num = Integer.parseInt(request.getParameter("num"));
 	int age = Integer.parseInt(request.getParameter("age"));
 	String email = request.getParameter("email");
 	String phone = request.getParameter("phone");
 	int cnt = MemberDAO2.getInstance().updateMember(num, age, email, phone);
 %>
 
 <% if(cnt > 0) {%>
 	<script>
 	alert('수정 완료');
 	location.href = "01_memberlist.jsp";
 	</script>
 <% } else { %>
  	<script>
 	alert('수정 실패');
 	location.href = "01_memberlist.jsp";
 	</script>
 <% } %>
