<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="./common.jsp" %>
<script type="text/javascript" src="commom.js"></script>
<%

String pw = request.getParameter("pw");
String name = request.getParameter("name");
String gender = request.getParameter("gender");



if(pw.equals(dao.getLogMember().getPw())){
	
	dao.updateMember(name, gender);
%>
<script>

msgGoMain("회원 정보 수정완료");

</script>

<%

}else{
	
	%>
	<script>
	msgUrl("비밀번호를 다시입력해주세요" ,"updateForm.jsp" );

	</script>

	<%
}


%>