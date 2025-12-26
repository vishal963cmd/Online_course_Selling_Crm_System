<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Link to the custom CSS file -->
    <link rel="stylesheet" type="text/css" href="css/style.css"/>


    <!-- Include Font Awesome for the Admin icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body style="display: table; width: 100%">
    
 <!-- 1. TOP HEADER SECTION (Dark Blue/Black) -->
  <div class="container-fluid header_design"> 
        <div class="container">
            <div class="row align-items-center py-2">
                
                <!-- LEFT SIDE: CRM Application Link (col-6) -->
                <div class="col-6">
                    <a href="home" class="navbar-brand text-light fs-4 fw-bold">CRM Application</a>
                </div>
                
                <!-- RIGHT SIDE: Admin Profile and Logout (col-6, right-aligned) -->
                <div class="col-6 d-flex justify-content-end align-items-center">
                    
                    <!-- Admin Profile Link -->
                    <a class="nav-link text-light d-flex align-items-center me-3" href="profile_admin">
                        <i class="fas fa-user-circle fs-4 me-2"></i>
                        Admin
                    </a>
                    
                    <!-- Logout Link -->
                    <a href="login" class="nav-link text-light">Logout</a>
                </div>
            </div>
        </div>
    </div>

   <%--  2. MAIN NAVIGATION BAR (White/Light Background) -->
    
      
    <jsp:include page="header_crm.jsp" />  --%>
    
    
    
  
 
    <!-- 3. MAIN CONTENT: REGISTRATION FORM -->
    <div class="container my-5">
        <div class="row justify-content-center">
         <!--  for success or not success then print start -->
        <c:if test ="${not empty model_success}">
       
        <div class ="row">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                 ${model_success}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
           </button>
                  </div>
           </div>
        
        </c:if>
        <c:if test ="${not empty model_error}">
        <!--  for success or not success then pring -->
        <div class ="row">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                 ${model_error}
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
           </button>
                  </div>
           </div>
        
        </c:if>
        
         <!--  for success or not success then print end -->
          <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card shadow-lg" style="border-radius: 1rem; background-color: #ffffff; padding: 2rem;">
                <div class="card-body p-4 text-center">
                    
                    <h3 class="mb-5 fw-bold text-dark">
                        <span style="color: #007bff;">Employee Registration</span>
                    </h3>
                    
                    <form:form action="updateEmpForm" method="POST" modelAttribute="modelEmpattr">
                        
                        <div class="form-group text-start mb-4">
                            <label for="name" class="form-label text-dark fw-bold mb-2">Enter Name</label>
                            <form:input path="name" id="name" cssclass="form-control form-control-lg" value="${model_emp.getName()}" />
                        </div>
                        
                        <div class="form-group text-start mb-4">
                            <label for="email" class="form-label text-dark fw-bold mb-2">Enter Email</label>
                            <form:input path="email" id="email" cssclass="form-control form-control-lg" value="${model_emp.getEmail()}" />
                        </div>
                        
                        <div class="form-group text-start mb-4">
                            <label for="password" class="form-label text-dark fw-bold mb-2">Enter Password</label>
                            <form:password path="password" id="password" cssclass="form-control form-control-lg" value="${model_emp.getPassword()}" />
                        </div>
                        
                        <div class="form-group text-start mb-5">
                            <label for="phone" class="form-label text-dark fw-bold mb-2">Enter Phone No.</label>
                            <form:input path="phoneno" id="phone" cssclass="form-control form-control-lg" value="${model_emp.getPhoneno()}"/>
                        </div>
                        
                        <div class="d-grid gap-2">
                            <input type="submit" class="btn btn-primary btn-lg fw-bold custom-register-btn" value="Update" />
                        </div>
                        
                    </form:form>
                    
                </div>
            </div>
        </div>
    </div>
</div>  

        
    </div>

   
    
   <!-- Bootstrap 5 JavaScript Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
    
</body>
</html>
