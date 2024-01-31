<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>
<%

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 게시글 추가하기 </h1>
	<form action = "_04_addBoardPro.jsp">
		<table border ='1'>
			<tr>
			 <th/> 번호
			 <td/><%=daoB.getCount() %>
			</tr>
			<tr>
			 <th/> 작성자
			 <td/><input name = "writer"/>
			</tr>
			<tr>
			 <th/> 제목
			 <td/> <input type = "text" name ="subject"/>
			</tr>
			<tr>
			 <th/> 내용
			 <td><textarea cols="20" rows="10" name = "textarea"></textarea></td>
			</tr>
			<tr>
			 <td><input type = "submit" value="작성완료"/></td>
			</tr>
		</table>
	</form>
</body>
</html>