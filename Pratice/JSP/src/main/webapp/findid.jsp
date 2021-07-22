<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>아이디를 찾아봅시다</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/NewFile2.css">
</head>
<body>
	<div class="wrap">
 		<div class="form-wrap">
				<div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">ID찾기</button>
                    <button type="button" class="togglebtn" onclick="register()">비번 찾기</button>
                </div>
                
                
                <form id="login" action="./findidpro.jsp" class="input-group">
                    <input type="text" name="userName" class="input-field" placeholder="이름을 적으시오" required>
                    <input type="password" name="userPassword" class="input-field" placeholder="비밀번호를 적으시오" required>
                    <button class="submit">아이디 찾기</button><br>
                    
                </form>
               

 				<form action="./findPapro.jsp" id="register" class="input-group" method= "post">
					<input type="text" name="userID" class="input-field" placeholder="아이디를 입력하세요" required >
					<input type="text" name="userName"class="input-field"placeholder="이름을 입력하세요" required>
					<input type="submit" value="비밀번호 찾기" class="submit">
					
					
				</form>	 
				
				  <form action="./insertUser.jsp">
                <button class="submit">돌아가기</button>
               </form>
                
		</div>
	</div>
	<script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
       </script>

</body>
</html>