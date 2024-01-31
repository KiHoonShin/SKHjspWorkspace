<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="./common.jsp" %>    

<% 
if(request.getParameter("idx") == null){
	%>
	<script type="text/javascript">
    msgError();
</script>
	<%
}

int idx = Integer.parseInt(request.getParameter("idx"));

boolean isAdmin = false;

if(session.getAttribute("admin") != null){
	isAdmin = true;
}
%> 
<% if(isAdmin){ %>
	<script>
	msgUrl( "<%= dao.getOneMember(idx).getName() %> 회원 삭제 완료" ,"userList.jsp" );
	</script>
	<% dao.deleteMember(idx); %>
<% } else {%>
	<script type="text/javascript">
   	 msgError();
	</script>
<% } %>
