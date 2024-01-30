<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 회원가입 </h1>
<form method="post" action="03_12_joinPro.jsp">

 Name : <input type="text" name="name" /> <br><br>
 I  D : <input type="text" name="id" /> <br><br>
 P  W : <input type="text" name="pw" /> <br><br>
 성 별 : <input type="text" name="gender" /> <br><br>
<input type="submit" value="회원가입" />
</form>
<br>

<button onclick="location.href='02_main.jsp'"> 홈으로 </button>
</body>
</html>