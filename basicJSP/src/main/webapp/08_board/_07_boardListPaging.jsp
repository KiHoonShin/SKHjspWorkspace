<%@page import="board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file='./common.jsp' %>    
<%
if(session.getAttribute("daoB") == null){
	response.sendRedirect("index.jsp");
	return;
}

int 전체게시글수 = daoB.getLength();
int 한페이지에보여줄게시글수 = 5;
int 현재페이지번호 = 1;
if(request.getParameter("start")!=null){
	현재페이지번호 = Integer.parseInt(request.getParameter("start"));
}

int 한페이지게시글시작번호 = (현재페이지번호-1) * 한페이지에보여줄게시글수;
int 한페이지게시글마지막번호 = 한페이지게시글시작번호 +한페이지에보여줄게시글수;
if(한페이지게시글마지막번호 > 전체게시글수){
	한페이지게시글마지막번호 = 전체게시글수;
}
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 전체 게시글 수 <%=전체게시글수 %></p>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>제목</th>
			<th>내용</th>
			<th>삭제</th>
		</tr>
		<% for(int i =한페이지게시글시작번호; i < 한페이지게시글마지막번호; i+=1){ 
			BoardVO b = daoB.getOneMember(i);
			%>
			<tr>
			  <td> <%=b.getNo() %></td>
			  <td> <%=b.getWriter() %></td>
			  <td> <%=b.getRegDate() %></td>
			  <td> <a href="_05_updateBoard.jsp?idx=<%= i %>" > <%=b.getSubject() %> </a> </td>
			  <td> <%=b.getContents() %></td>
			  <td> <button onclick="location.href='_06_deleteBoardPro.jsp?idx=<%= i %>'"> 삭제 </button></td>
			</tr>
		
		<%} %>
	</table>
	
	<% 
	
	// 23 / 5 = > 4 + 1 => 5
	
	int 전체페이지수 = 전체게시글수 / 한페이지에보여줄게시글수;  // 4 
	int 한페이지에보여줄페이지시작번호 = 1;
	int 한페이지에보여줄페이지번호갯수 = 3;
	if(전체게시글수 % 한페이지에보여줄게시글수 > 0 ){   // 3
		전체페이지수+=1; // 5 
	}
	
	if(request.getParameter("curNum")!= null){
		한페이지에보여줄페이지시작번호 = Integer.parseInt(request.getParameter("curNum"));
	}
	
	int 한페이지에보여줄페이지마침번호 = 한페이지에보여줄페이지시작번호 +  한페이지에보여줄페이지번호갯수 -1;
	if(한페이지에보여줄페이지마침번호 > 전체페이지수){
		한페이지에보여줄페이지마침번호 = 전체페이지수;
	}
	
	%>
	
	<% 
	// [이전]
	if(한페이지에보여줄페이지시작번호 > 한페이지에보여줄페이지번호갯수 ){
	%>
		  [<a href="_07_boardListPaging.jsp?start=<%= 한페이지에보여줄페이지시작번호 - 1 %>&curNum=<%=  한페이지에보여줄페이지시작번호 - 한페이지에보여줄페이지번호갯수  %>"> 이전 </a>]
	<% } %>
	

	<%	
		for(int i = 한페이지에보여줄페이지시작번호; i <= 한페이지에보여줄페이지마침번호 ;i+=1 ){
	 %>
	  
	  [<a href="_07_boardListPaging.jsp?start=<%= i%>&curNum=<%=한페이지에보여줄페이지시작번호 %>"> <%=i %> </a>]
	  
	 <% } %>
	 
	 	<% 
	// [이후]
	if(한페이지에보여줄페이지마침번호 < 전체페이지수 ){
	%>
		  [<a href="_07_boardListPaging.jsp?start=<%= 한페이지에보여줄페이지시작번호 +  한페이지에보여줄페이지번호갯수 %>&curNum=<%=  한페이지에보여줄페이지시작번호 +  한페이지에보여줄페이지번호갯수  %>"> 이후 </a>]
	<% } %>
	 
	 
	
	
	<br><br>
	<button onclick="location.href='_00_main.jsp'"> 메인으로 </button>
</body>
</html>