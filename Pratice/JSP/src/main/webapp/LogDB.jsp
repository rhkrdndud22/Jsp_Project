<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="user.UserLogin" %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="user" class="user.UserDTO" scope="page"/> <!-- �Ѹ��� ȸ�� ������ ��� UserŬ������ �ڹ� ����� ����ϸ� ���� page�ȿ����� ��� ��� -->
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Web Site</title>
</head> 
<body>
	<%  // �α��� ���������� �Ѱ��� userID�� userPassword�� �޾Ƽ� �α��� �Ǻ�
		UserLogin userDAO = new UserLogin();
		
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if (result == 1){ // �α��� ������ ������ �ڹٽ�ũ��Ʈ�� �����Ͽ� �������� �̵���Ŵ
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'home3.jsp'"); // main �������� ����ڸ� ���� 
			script.println("</script>");
		}
		else if (result == 0){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('��й�ȣ�� Ʋ���ϴ�.')");	
			script.println("history.back()"); // ���� �������� ����ڸ� ���� ����.	
			script.println("</script>");
		}
		else if (result == -2){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�������� �ʴ� ���̵��Դϴ�.')");	
			script.println("history.back()");	
			script.println("</script>");
		}
		else if (result == -1){ 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�Է��� �� �� �� �ֽ��ϴ�.')");	
			script.println("history.back()");	
			script.println("</script>");
		}
		
		
		
	%>
</body>
</html>