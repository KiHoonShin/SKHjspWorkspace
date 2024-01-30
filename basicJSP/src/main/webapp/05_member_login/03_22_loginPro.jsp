<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	String id = request.getParameter("id");
  	String pw = request.getParameter("pw");
  	
  	ArrayList<String> idList = (ArrayList<String>)session.getAttribute("idList");
  	ArrayList<String> pwList = (ArrayList<String>)session.getAttribute("pwList");
  	ArrayList<String> nameList = (ArrayList<String>)session.getAttribute("namelist");
  	/* int log = (int)session.getAttribute("log"); */
  	
  	String adminId = "";
  	String adminPw = "";
  	String name = "";
	String admin = "admin";
  	boolean pass = false;
  	
  	for(int i = 0; i < idList.size(); i+=1){
  		if(id.equals(idList.get(i)) && pw.equals(pwList.get(i))){
  			pass = true;
  			adminId = idList.get(i);
  			session.setAttribute("log", i);
  		}
  	}
  	
  	boolean isAdmin = false;
  	
  	if(pass){
  		if(adminId.equals(admin)){
  			isAdmin = true;
  		}
  		
  	}
  	
  	
/*   	boolean adminLog = false;
  	if(pass){
  		if(id.equals(adminId)){
  			adminLog = true;
  		}
  	} */

  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(!pass){ %>
		<script>
		alert('로그인 실패');
		location.href = "03_21_loginForm.jsp";
		</script>
	<% } else { %>
		<script>alert('로그인 성공'); </script>
	<% if(pass && isAdmin){ %>
	<script>
		location.href = "01_12_adminUserList.jsp";
	</script>
	<%} else if(pass && !isAdmin){ %>
		<script>
		location.href = "02_main.jsp";
		</script>
	 <% } %>
	<% } %>
	
</body>
</html>