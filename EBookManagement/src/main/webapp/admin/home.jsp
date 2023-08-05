<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<%@ include file="allCss.jsp"%> 

<style type="text/css">
a{
    text-decoration:none;
    color:black;
}

a:hover{
    text-decoration:none;
    color:black;
}
</style>
</head>
<body>
<%@ include file="Navbar.jsp"%>

 
          <div class="container">
                 
             <div class="row">
                <div class="col-md-3">
                    <a href="AddBooks.jsp">
                    <div class="card mt-5">
                       <div class="card-body text-center">
                        <i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
                         <h4>Add Books</h4>             
                       </div>               
                    
                    </div>       
                   </a>
                </div>
                
                
                <div class="col-md-3">
                  <a href="AllBooks.jsp">
                    <div class="card mt-5">
                       <div class="card-body text-center">
                        <i class="fas fa-book-open fa-3x text-danger"></i><br>
                         <h4>All Books</h4>             
                       </div>               
                    
                    </div>       
                 </a>
                </div>
                
                
                <div class="col-md-3">
                  <a href="OrderBooks.jsp">
                    <div class="card mt-5">
                       <div class="card-body text-center">
                        <i class="fa-solid fa-gift fa-3x text-warning"></i></i><br>
                         <h4>Orders</h4>             
                       </div>               
                    
                    </div>       
                 </a>
                </div>
                
                
                <div class="col-md-3">
                  <a href="Logout.jsp">
                    <div class="card mt-5">
                       <div class="card-body text-center">
                        <i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
                         <h4>Logout</h4>             
                       </div>               
                    
                    </div>       
                  </a>
                </div>
             
             </div>
          
          
          </div>
          
          <!-- Footer  -->
          
          <div style="margin-top:350px;">
             <%@include file="Footer.jsp" %>
          </div>
          
          

</body>
</html>