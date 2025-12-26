<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee's List</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Link to the custom CSS file -->
    <link rel="stylesheet" type="text/css" href="css/style.css"/>

    <!-- Include Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- import jquery cnd start -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
     <!-- import jquery cnd end-->
    <script >
    function confirmEmpDelete(empEmail)
    {
    	// alert(empEmail);
    	$('#deleteEmpConfirmationModal').modal('show');
    	$('#deleteButton').attr('href','/deleteEmployee?empEmail='+ empEmail);
    	
    } 
    function editEmployee(empEmail)
    {
    	window.location.href="/editEmployee?empEmail="+encodeURIComponent(empEmail);
    }
    </script>
</head>
<body style="display: table; width: 100%">

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

    <!-- 2. MAIN NAVIGATION BAR (Includes Home, Employees, Products, Complaints) -->
   <%--  <jsp:include page="header_admin.jsp"></jsp:include> --%>
 
    <!-- 3. MAIN CONTENT: EMPLOYEE LIST TABLE -->
    <div class="container my-5">
        <h2 class="mb-2">Employee's List</h2>
        <p class="text-muted mb-4">Below table displays the current employee list.</p>

        <div class="card p-3 shadow-lg border-0">
            <div class="table-responsive">
                <table class="table table-hover table-striped mb-0 custom-table">
                    <thead class="table-dark">
                        <tr>
                          
                           
                            <th scope="col">Full name</th>
                         
                             <th scope="col">Email</th>
                            <th scope="col">Phone No.</th>
                            <th scope="col">Actions</th>
                            <th></th>
                           
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="employee" items="${model_list_emp}">
                        <tr>
                        <td> ${employee.getName()}</td>
                         <td> ${employee.getEmail()}</td>
                          <td> ${employee.getPhoneno()}</td>
                          <td>
                          
                            <button class="btn btn-sm btn-info me-2" onclick="editEmployee('${employee.getEmail()}')"> <i class="fas fa-edit"></i>Edit</button>
                          
                           <button class="btn btn-sm btn-danger" onclick="confirmEmpDelete('${employee.getEmail()}')"> <i class="fas fa-trash-alt"></i>Delete </button>
                               
                               
                              <!--     <button href="#" class="btn btn-sm btn-info me-2"><i class="fas fa-edit"></i> Edit</button> -->
                            <!--     <button href="#" class="btn btn-sm btn-danger" id="deleteButton"><i class="fas fa-trash-alt"></i> Delete</button> --> 
                            </td>
                          </tr>
                        </c:forEach>
                        
                    </tbody>
                </table>
            </div>
        </div>
        
    </div>
     <!-- The Modal  delete the employee pop-up start-->
 <div class="modal fade" id="deleteEmpConfirmationModal">
  <div class="modal-dialog modal-dialog-centered zoomIn">
    <div class="modal-content shadow-lg border-0 rounded-3">

      <!-- Modal Header -->
      <div class="modal-header bg-danger text-white">
        <h4 class="modal-title fw-bold">Delete Employee</h4>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal Body -->
      <div class="modal-body text-center py-4">
        <i class="bi bi-exclamation-triangle-fill text-danger" style="font-size: 45px;"></i>
        <p class="mt-3 fs-5">Are you sure you want to delete this employee?</p>
      </div>

      <!-- Modal Footer -->
      <div class="modal-footer d-flex justify-content-between">
        <button type="button" class="btn btn-default px-4" data-bs-dismiss="modal">No</button>
        <a type="button" class="btn btn-danger px-4" id="deleteButton">Yes</a>
      </div>

    </div>
  </div>
</div>
 <!-- The Modal  delete the employee end-->

    <!-- Bootstrap 5 JavaScript Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


































