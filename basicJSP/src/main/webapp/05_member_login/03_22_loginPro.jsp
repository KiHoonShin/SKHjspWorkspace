<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	String id = request.getParameter("id");
  	String pw = request.getParameter("pw");
  	
  	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
  	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
  	
  	String adminId = idList.get(3);
  	String adminPw = pwList.get(3);
  	
  	boolean pass = false;
  	
  	for(int i = 0; i < idList.size(); i+=1){
  		if(id.equals(idList.get(i)) && pw.equals(pwList.get(i))){
  			pass = true;
  		}
  	}
  	
  	boolean adminLog = false;
  	if(pass){
  		if(id.equals(adminId)){
  			adminLog = true;
  		}
  	}

  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(adminLog){ %>
	<script>
		location.href = "01_12_adminUserList.jsp";
	</script>
	<%} else { %>
	
	<% } %>
</body>
</html>