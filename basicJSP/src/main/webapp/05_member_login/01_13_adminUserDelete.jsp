<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
int idx = Integer.parseInt(request.getParameter("index"));
ArrayList<String> idList = (ArrayList<String>) session.getAttribute("idList");
ArrayList<String> pwList = (ArrayList<String>) session.getAttribute("pwList");
ArrayList<String> nameList = (ArrayList<String>) session.getAttribute("namelist");
ArrayList<String> genderList = (ArrayList<String>) session.getAttribute("genderList");
String delName = nameList.get(idx);

for(int i = 0; i < idList.size(); i+=1){
	if(idx == i){
		idList.remove(idx);
		pwList.remove(idx);
		nameList.remove(idx);
		genderList.remove(idx);
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
<script>
	alert('<%=delName %> 회원 삭제 완료');
	location.href = "01_12_adminUserList.jsp";
</script>
</body>
</html>