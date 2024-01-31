<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 colspan="2" align="center"> 회원가입 페이지 </h1>
<form action ="joinPro.jsp">
 <table  colspan="2" align="center" border ="1">
	<tr>
	 <td>회원가입 ID</td>
	 <td><input type ="text" name ="id" required/></td>
	</tr>
	<tr>
	 <td>회원가입 PW </td>
	 <td> <input type ="password" name = "pw" required/></td>
	</tr>
	<tr>
	 <td>회원가입 name </td>
	 <td> <input type ="text" name = "name" required/></td>
	</tr>
	<tr>
	 <td>회원가입 성별 </td>
	 <td> <input type ="radio" name = "gender" value="남성"/ required>남성
	 	 <input type ="radio" name = "gender" value="여성"/ required>여성</td>
	</tr>
	<tr>
	  <td colspan="2" align="center"><input type="submit" name = "log-in" value="회원가입"></td>
	</tr>

	
 </table>
</form>
</body>
</html>