<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="./userjoinAction.jsp" method= "post">
	<input type="text" name="userID"><br>
	<input type="text" name="userPassword">
	<input type="submit" value="회원가입">
</form>	



<form action="./LogDB.jsp" method= "post">
<input type="text" name="userID"><br>
	<input type="text" name="userPassword">
	<input type="submit" value="로그인">
</form>


</form>
</body>
</html>