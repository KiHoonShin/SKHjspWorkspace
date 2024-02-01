<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file='./common.jsp' %>    
<%
	if(request.getParameter("index") == null){
		response.sendRedirect("_00_main.jsp");
	}
	int idx = Integer.parseInt(request.getParameter("index"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 수정하기</h1>
	<form action="_05_updateBoardPro.jsp">
		<table border ='1'>
			<tr>
			 <th/> 번호 
			 <td colspan ="3" > <%= daoB.getOneMember(idx).getNo() %> </td>
			</tr>
			<tr>
			 <th/> 작성자
			 <td/> <%= daoB.getOneMember(idx).getWriter() %>
			 <th/> 작성일
			 <td/> <%= daoB.getOneMember(idx).getRegDate() %>
			</tr>
			<tr>
			 <th/> 제목
			 <td colspan ="3" ><input type ="text" name = "subject" value="<%= daoB.getOneMember(idx).getSubject() %>" required/> </td>
			</tr>
			<tr>
			<th/> 내용
			<td colspan ="3"><textarea cols="20" rows="10" name="textarea" value="textarea" required><%=daoB.getOneMember(idx).getContents() %></textarea></td>
			</tr>
			<tr>
			 <td colspan ="4"><input type = "submit" value="수정하기"/></td>
			</tr>
		</table>
	</form>
</body>
</html>