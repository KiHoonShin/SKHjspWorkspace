<%@page import="gugudan.GugudanDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

if(session.getAttribute("Gdao")== null){
	response.sendRedirect("index.jsp");
	return;
}
GugudanDAO Gdao = (GugudanDAO)session.getAttribute("dao");
  
 String answer = request.getParameter("answer");
 boolean check = Gdao.checkAnswer(answer);
 

 
 if(check){
	
	 
	 %>
	 <script>
	   alert("정답입니다");
	   location.href="gugudan.jsp";
	   //history.go(-1);
	   //history.back();
	 </script>
	 <%
	 
 }else{
	 %>
	 <script>
	   alert("오답입니다");
	   location.href="gugudan.jsp";
	  // history.back();
	 </script>
	 <%	 
	 
 }

%>