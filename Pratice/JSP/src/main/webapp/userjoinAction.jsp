<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	UserDTO NewUser = new UserDTO();
	if(request.getParameter("userID")!=null){
		NewUser.setUserID(request.getParameter("userID"));
	}
	if(request.getParameter("userPassword")!=null){
		NewUser.setUserPassword(request.getParameter("userPassword"));
	}
	
	if(request.getParameter("userName")!=null){
		NewUser.setUserName(request.getParameter("userName"));
	}
	
	if(NewUser.getUserID().equals("") || NewUser.getUserPassword().equals(""))
	{
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('�Է��� �� �� �� �ִ�.')");
		script.println("</script>");
		script.close();
		return;
	}
	
	UserDAO userDAO = new UserDAO();
	String result = userDAO.join(NewUser.getUserID(), NewUser.getUserPassword(),NewUser.getUserName());
	PrintWriter script = response.getWriter();
	if(result.equals("1"))//������ ����
	{
		script.println("<script>");
		script.println("alert('�� �ƽ��ϴ�!!!.')");
		script.println("location.href='insertUser.jsp'");
		script.println("</script>");
		script.close();
	}
	else if(result.contains("Duplicate"))
	{

		script.println("<script>");
		script.println("alert('���̵� ��Ĩ�ϴ�.')");
		script.println("location.href='insertUser.jsp'");
		script.println("</script>");
		script.close();
	}
	else
	{
		script.println("<script>");
		script.println("alert('���� ������ ������.')");
		script.println("location.href='insertUser.jsp'");
		script.println("</script>");
		script.close();
	}
	
	%>
</body>
</html>