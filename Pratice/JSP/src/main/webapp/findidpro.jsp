<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="user.findIDcon" %>
<%@ page import="user.UserDTO" %>
<%@ page import="java.io.PrintWriter" %>



<jsp:useBean id="user" class="user.UserDTO" scope="page"/> <!-- 한명의 회원 정보를 담는 User클래스를 자바 빈즈로 사용하며 현재 page안에서만 빈즈를 사용 -->
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Web Site</title>
</head> 
<body>
<% 
	request.setCharacterEncoding("EUC-KR");
	findIDcon userIDf = new findIDcon();

	UserDTO NewUser = new UserDTO();
	if(request.getParameter("userName")!=null){
		NewUser.setUserName(request.getParameter("userName"));
	}
	if(request.getParameter("userPassword")!=null){
		NewUser.setUserPassword(request.getParameter("userPassword"));
	}
	
	
	String result = userIDf.findid(NewUser.getUserName(), NewUser.getUserPassword());
	request.setAttribute("ID", result);
	PrintWriter script = response.getWriter();
	if(result==null){
		script.println("<script>");
		script.println("alert('찾으시는 아이디가 없습니다.')");
		script.println("location.href='findid.jsp'");
		script.println("</script>");
		script.close();
		}
	else{
		script.println("<script>");
		script.println("alert('아이디는')");
		script.println("location.href='findid.jsp'");	
		script.println("</script>");
		script.close();
			
	}

		
%>
</body>
</html>