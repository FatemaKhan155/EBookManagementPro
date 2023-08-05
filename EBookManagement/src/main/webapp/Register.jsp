
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook Register</title>
<%@include file="allComponents/allCss.jsp" %>
</head>

<body style="background-color:#f0f1f2">

<%@include file="allComponents/Navbar.jsp" %>

<!--Register Form  -->

<div class="container">
  <div class="row mt-5">
    <div class="col-md-4 offset-md-4">
      <div class="card">
         <div class="card-body">
             
             <h3 class="text-center">Register</h3>
             
              <c:if test="${not empty userSuccess}">
                 <p class="text-center text-success">${userSuccess}</p> 
                 <c:remove var="userSuccess"/>   
              </c:if>
              
              <c:if test="${not empty userFail}">
                 <p class="text-center text-danger">${userFail}</p>  
                 <c:remove var="userFail"/>  
              </c:if>
              
              <c:if test="${not empty termsCondi}">
                 <p class="text-center text-danger">${termsCondi}</p>   
                 <c:remove var="termsCondi"/> 
              </c:if>
             
              <form  action="RegisterServlet" method="post">
                  
                  
                  <div class="form-group">
                     <label for="exampleInputName">Enter Full Name</label>
                     <input type="text" name="name" class="form-control" id="exampleInputName1" aria-describedby="nameHelp"  required="required">
                     
                   </div>
                  
                  <div class="form-group">
                     <label for="exampleInputEmail1">Enter Email Id</label>
                     <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required="required">
                     <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                   </div>
                   
                  <div class="form-group">
                     <label for="exampleInputPassword1">Enter Password</label>
                     <input type="password" name="pass" class="form-control" id="exampleInputPassword1" required="required">
                 </div>
 
                 
                  <div class="form-group">
                     <label for="exampleInputMobile1">Enter Mobile No</label>
                     <input type="tel" name="mobile" class="form-control" id="exampleInputMobile1" aria-describedby="mobileHelp">
                     
                   </div>
 
                 <div class="form-check">
                    <input type="checkbox" name="checkCondi" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                 </div>
         
                 <div class="text-center">
                 
                     <button type="submit" class="btn btn-primary">Register</button>
      
                 </div>
                 
             </form>
         
         </div>
      
      
      </div>
      
    
    
    </div>
  
  
  </div>


</div>


      <!-- Footer  -->
          
          <div style="margin-top:40px;">
             <%@include file="Footer.jsp" %>
          </div>


</body>
</html>