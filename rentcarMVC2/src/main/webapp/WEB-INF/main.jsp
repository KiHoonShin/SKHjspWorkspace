<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%-- 	<%
		String center = request.getParameter("center");
	
		// 처음 실행시에는 center값이 넘어오지 않기에
		// null처리 해줌
		if(center == null){	
			center = "04_center.jsp";		// default center값을 부여
		}
	%> --%>

	<table>
		<%-- top 부분 --%>
		<tr height="120" align="center">
			<td align="center" width="1000">
				<%@include file = "parts/header.jsp"%>
			</td>
		</tr>
		<%-- center 부분 --%>
		<tr align="center">
			<td align="center" width="1000">
				<c:if test="${center eq null}">
				  <table>
					<tr height="500">
					 <td align="center">
						<img alt="" src="img/17.jpg" width="1000">
					 </td>
					</tr>
				  </table>
				</c:if>
				<c:if test="${center ne null}">
				  <c:redirect url="${ctx }/${center}"></c:redirect>
				</c:if>
			</td>
		</tr>
		<%-- bottom 부분 --%>
		<tr height="100" align="center">
			<td align="center" width="1000">
				<%@include file = "parts/footer.jsp" %>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>