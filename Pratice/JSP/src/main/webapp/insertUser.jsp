<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>닭쇼핑몰에 오신 것을 환영합니다</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/NewFile.css">
</head>
<body>
 	<div class="wrap">
 		<div class="form-wrap">
				<div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>
                
                
                <form id="login" action="./LogDB.jsp" class="input-group">
                    <input type="text" name="userID" class="input-field" placeholder="User name or Email" required>
                    <input type="password" name="userPassword" class="input-field" placeholder="Enter Password" required>
                    <button class="submit">Login</button><br>
                    
                </form>
               

 				<form action="./userjoinAction.jsp" id="register" class="input-group" method= "post">
					<input type="text" name="userID" class="input-field" placeholder="아이디를 입력하세요" required >
					<input type="text" name="userPassword" class="input-field" placeholder="비밀번호를 입력하세요" required>
					<input type="text" name="userName"class="input-field"placeholder="이름을 입력하세요" required>
					<input type="submit" value="ID중복체크/회원가입" class="submit">
				</form>	 
                <form action="./findid.jsp">
                <button class="submit">아이디 찾기</button>
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