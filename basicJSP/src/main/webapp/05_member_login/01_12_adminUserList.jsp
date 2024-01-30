<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
  ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
  ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
  ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("namelist");
  ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
  
  
  
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 관리자 페이지 (회원정보 확인하기) </h1>
	
	<table border="1">
	<tr>
	 <td/> 아이디
	 <td/> 패스워드
	 <td/> 이름
	 <td/> 성별
	 <td/> 삭제
	</tr>
	
	 <% for(int i = 0; i < idList.size(); i+=1){ %>
	  		<tr>
	  		 <td/> <%= idList.get(i) %>
	  		 <td/> <%= pwList.get(i) %>
			 <td/> <%= nameList.get(i) %>
	 		 <td/> <%= genderList.get(i) %>
	 		 <td/> <button onclick = "location.href='01_13_adminUserDelete.jsp?index=<%=i%>'"> 삭제 </button> 
	  		</tr>
 	 <% } %>in

	</table>
	
</body>
</html>
<script>
</script>
