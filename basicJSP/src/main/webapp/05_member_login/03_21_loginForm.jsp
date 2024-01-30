<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 로그인 페이지 </h1>
<form action ="03_22_loginPro.jsp">
 <table border ="1">
	<tr>
	 <td>아이디</td>
	 <td><input type ="text" name ="id"/></td>
	</tr>
	<tr>
	 <td> 비밀번호 </td>
	 <td> <input type ="text" name = "pw"/></td>
	</tr>
	<tr>
	<!--  <td><input type ="submit" name = "log-in" value="로그인"/></td> -->
	<td><input type ="submit" name = "log-in" value ="로그인"/></td>
	</tr>
	
 </table>
</form>
 <br><br>
	<button> 메인화면 </button>
</body>
</html>
