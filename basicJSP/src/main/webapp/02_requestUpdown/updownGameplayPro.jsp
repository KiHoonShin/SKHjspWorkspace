<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int test = Integer.parseInt(request.getParameter("com"));
int answer = Integer.parseInt(request.getParameter("num"));
String msg = "";
if(test == answer){
	msg = "정답입니다. " + test;
} else{ 
	if(answer > test) msg = "내가 크다.";
else if(answer < test) msg = "내가 작다.";

}
%>
<%-- <h1> <%= request.getParameter("com") %> </h1> --%>

<h1> <%= msg %> </h1>
<% if(test != answer){ %>

 <p><a href="updownGameplay.jsp?com=<%=test%>">뒤로가기</a></p>
 <button onclick = "goUrl(<%=test%>)"> 뒤로가기 </button>
 
 <% } else { %>
 <p><a href="index.jsp">처음으로</a></p> 
 <% } %>
 
</body>
</html>
<script type = "text/javascript">
	function goUrl(com){
		location.href = "updownGameplay.jsp?com="+ com;
	}
</script>