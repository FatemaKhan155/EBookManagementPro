<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook Login</title>
<%@include file="allComponents/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2">
 
 <%@include file="allComponents/Navbar.jsp" %>

 <div class="container">
   <div class="row mt-5">
       <div class="col-md-4 offset-md-4">
         <div class="card">
            <div  class="card-body">
            
                  <h3 class="text-center">Login</h3>
                   
                   <c:if test="${not empty userFail}">
                      <h5 class="text-center text-danger">${userFail}</h5>
                      <c:remove var="userFail" scope="session"/> 
                   </c:if>
              
                <form action="LoginServlet" method="post">
  
                      <div class="form-group">
                         <label for="exampleInputEmail1">Enter Email Id</label>
                         <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
                         <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                      </div>
 
                      <div class="form-group">
                          <label for="exampleInputPassword1">Enter Password</label>
                          <input type="password" name="pass" class="form-control" id="exampleInputPassword1" required="required">
                      </div>
  
  
                     
                     <div class="text-center">
                          <button type="submit" class="btn btn-primary">Login</button><br>
                          <a href="Register.jsp">Create New Account</a>
                     </div>
                     
               </form>
            
            
            </div>
         
         
         
         </div>
       
       
       
       </div>
   
   
   </div>
 
 
 
 </div>

       <!-- Footer  -->
          
          <div style="margin-top:140px;">
             <%@include file="Footer.jsp" %>
          </div>

</body>
</html>