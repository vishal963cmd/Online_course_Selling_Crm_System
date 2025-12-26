<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRM Application</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  
    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
    <!--  add Header  -->
     <jsp:include page="header_crm.jsp" />
  <%--   </jsp:include> --%> 
    
    <%
    String login_error = (String) request.getAttribute("model_error");
    %>

    <!-- Login Section -->
    <div class="container">
        <div class="login-container">
        <%
          if(login_error !=null){
        	%>
        	<h5 style="color :red;"> <%= login_error %> </h5>
        	<%
        }
        
         %>
        <br/>
          <form action="LoginForm" method="post">
              <h2>Login</h2>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control"  name="email1" />
                </div>
                <div class="mb-3">
                    <label  class="form-label">Password</label>
                    <input type="password" class="form-control"  name="pass1" />
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <div class="text-center mt-3">
                    <a href="#">Forgot Password?</a>
                </div>
            </form>
        </div>
    </div>
    
     <!-- Bootstrap 5 JavaScript Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
