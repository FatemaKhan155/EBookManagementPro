<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Navbar -->

<div class="container-fluid" style="height:10px;background-color:#01579b"></div>
<div class="container-fluid p-3 bg-ligth">
  <div class="row">
     <div class="col-md-3 text-success">
       <h3><i class="fas fa-book"></i>E-Books</h3>
     </div>
    
  <div class="col-md-6">
         <form class="form-inline my-2 my-lg-0">
           <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
     </div>
     
     <div class="col-md-3">
          
          <a href="Login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
          <a href="Register.jsp" class="btn btn-primary"><i class="fas fa-user-plus"></i>Register</a>
     </div>
  </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#" ><i class="fas fa-home"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>  
    </ul>
    
  </div>
</nav>
</body>
</html>