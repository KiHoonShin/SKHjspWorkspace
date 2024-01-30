<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%

  boolean pass = false;
  String msg ="";
  
	String name = (String)session.getAttribute("name");
	ArrayList user = (ArrayList)session.getAttribute("user");
  	String id = (String)user.get(0);
  	String pw = (String)user.get(1);
  	
  	String inputId = request.getParameter("inputId");
  	String inputPw = request.getParameter("inputPw");
  	
  	if(id.equals(inputId) && pw.equals(inputPw)){
  		pass = true;
  		msg = "로그인 성공";
  		
  	} else {
  		pass = false;
  		msg = "로그인 실패";
  	}
  	
    %>
    
 <script>
function printMsg( url ,msg) {
	alert(msg);
	location.href=url;
}

</script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<h1><%=msg %></h1>
<% if(pass){ %>

<script>
	printMsg("index.jsp", "<%=msg %>");
</script>

<%}else{ %>
<script>
	printMsg("login.jsp", "<%=msg %>");
</script>
<%} %>
</body>
</html>