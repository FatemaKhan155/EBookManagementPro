<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="allCss.jsp"%> 
</head>
<body style="background-color:#f0f2f2;">
<%@ include file="Navbar.jsp"%>

           <h1 class="text-center mt-1">All Orders</h1>
              <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>the Bird</td>
      <td>the Bird</td>
      <td>the Bird</td>
      
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>the Bird</td>
      
      
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>Larry</td>
      <td>the Bird</td>
      <td>the Bird</td>
      
    </tr>
  </tbody>
</table>
         
         <!-- Footer  -->
          
          <div style="margin-top:350px;">
             <%@include file="Footer.jsp" %>
          </div>
</body>
</html>