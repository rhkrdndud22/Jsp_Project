<DOCTYPE HTML5>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/a.css">
  </head>

  <body width="100%" height="100%">
    <form action="index.html" method="post" class="loginForm">
    </form>
    <form action="./LogDB.jsp" method= "post" class="loginForm">
  	<h2>Login</h2>
	<div class="idForm">
	<input type="text" name="userID" class="id" placeholder="ID">
	</div>
	<div class="passForm">
	<input type="text" name="userPassword" class="pw" placeholder="PW">
	</div>
	<input type="submit" value="LOG IN" class="btn">
	      <div class="bottomText">
        Don't you have ID? <a href="./insertUser.jsp">sign up</a>
        
      </div>
	</form>

      <script>
     
		function button() {      
			 window.location.href = './home.jsp'
		}
		
	
     
      </script>
     
      
    
  </body>
</html>