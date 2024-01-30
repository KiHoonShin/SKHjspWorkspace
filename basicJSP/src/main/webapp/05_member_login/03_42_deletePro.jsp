<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("namelist");
ArrayList<String> genderList = (ArrayList<String>)session.getAttribute("genderList");
int log = (int)session.getAttribute("log");
 String inputPw = request.getParameter("pw");
 
 boolean samePw = false;
 if(inputPw.equals(pwList.get(log))){
	 samePw = true;
 }
 
 if(samePw){
	 for(int i = 0; i < idList.size(); i+=1){
		 if(i == log){
			 idList.remove(log);
			 pwList.remove(log);
			 nameList.remove(log);
			 genderList.remove(log);
		 }
	 }
	 session.invalidate();
 }

%>

<% if(samePw) { %>
	<script>
		alert('회원탈퇴 완료');
		location.href = "02_main.jsp";
	</script>
<% } else {%>
	<script>
		alert('비밀번호 불일치');
		location.href = "03_41_deleteForm.jsp";
	</script>
<% } %>
