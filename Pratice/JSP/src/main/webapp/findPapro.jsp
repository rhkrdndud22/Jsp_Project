<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="user.findPacon" %>
<%@ page import="user.UserDTO" %>
<%@ page import="java.io.PrintWriter" %>



<jsp:useBean id="user" class="user.UserDTO" scope="page"/> <!-- �Ѹ��� ȸ�� ������ ��� UserŬ������ �ڹ� ����� ����ϸ� ���� page�ȿ����� ��� ��� -->
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
		script.println("alert('���̵� �������� �ʽ��ϴ�.')");
		script.println("location.href='findid.jsp'");
		script.println("</script>");
		script.close();
		}
	else{
		script.println("<script>");
		script.println("alert('��й�ȣ��')");
		script.println("location.href='findid.jsp'");	
		script.println("</script>");
		script.close();
			
	}

		
%>
</body>
</html>