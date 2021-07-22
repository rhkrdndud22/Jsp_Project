<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="user.findPacon" %>
<%@ page import="user.UserDTO" %>
<%@ page import="java.io.PrintWriter" %>



<jsp:useBean id="user" class="user.UserDTO" scope="page"/> <!-- 한명의 회원 정보를 담는 User클래스를 자바 빈즈로 사용하며 현재 page안에서만 빈즈를 사용 -->
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userName" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Web Site</title>
</head> 
<body>
<% 
	request.setCharacterEncoding("EUC-KR");
	findPacon userIDf = new findPacon();

	UserDTO NewUser = new UserDTO();
	if(request.getParameter("userID")!=null){
		NewUser.setUserID(request.getParameter("userID"));
	}
	if(request.getParameter("userName")!=null){
		NewUser.setUserName(request.getParameter("userName"));
	}
	
	
	String result = userIDf.findPa(NewUser.getUserID(), NewUser.getUserName());
	request.setAttribute("Password", result);
	PrintWriter script = response.getWriter();
	if(result==null){
		script.println("<script>");
		script.println("alert('아이디가 존재하지 않습니다.')");
		script.println("location.href='findid.jsp'");
		script.println("</script>");
		script.close();
		}
	else{
		script.println("<script>");
		script.println("alert('비밀번호는')");
		script.println("location.href='findid.jsp'");	
		script.println("</script>");
		script.close();
			
	}

		
%>
</body>
</html>