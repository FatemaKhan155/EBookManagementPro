<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook Management</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%@ include file="allComponents/allCss.jsp" %>
 <style type="text/css" >
   .back-img{
           background:url(images/book.jpg);
           height:50vh;
           width:100%;
           background-repeat:no-repeat;
           background-size:cover;
   }
   
   .crd-ho:hover{
        background-color:#faf4f4;
   }
   
 
 </style>
</head>
<body>

 <%@include file="allComponents/Navbar.jsp" %>
 
 <div class="container-fluid back-img">
    <div>
          <h1 class="text-center text-danger">EBook Management System</h1>
    </div>
 </div> 
  
  <!-- Start Recent Book -->
 <div class="container">
    <h3 class="text-center">Recent Book</h3>
      <div class="row">
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2"><i class="fas fa-cart-shopping"></i>Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
      
      </div>
      
      <div class="text-center">
          <a href="" class="btn btn-danger btn-sm text-white mt-3">View All</a>
      </div>
       
 </div> 
<!-- End Recent Book -->

<hr>

<!-- Start New Book -->
 <div class="container">
    <h3 class="text-center">New Book</h3>
      <div class="row">
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  <a href="" class="btn btn-danger btn-sm ml-2">Add Cart</a>  
                  <a href="" class="btn btn-success btn-sm ml-1">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
      
      </div>
      
      <div class="text-center">
          <a href="" class="btn btn-danger btn-sm text-white mt-3">View All</a>
      </div>
       
 </div> 
<!-- End New Book -->

<hr>
<!-- Start Old Book -->
 <div class="container">
    <h3 class="text-center">Old Book</h3>
      <div class="row">
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                 
                  <a href="" class="btn btn-success btn-sm ml-5">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                  
                  <a href="" class="btn btn-success btn-sm ml-5">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                    
                  <a href="" class="btn btn-success btn-sm ml-5">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
        
        
        <div class="col-md-3"> 
          <div class="card crd-ho">
             <div class="card-body text-center">
              <img alt="" src="book/book1.jpg" style=" height:200px; width:200px" class="img-thumblin">
              <p>Java Programming</p>
              <p>James Patternson</p>
              <p>Categories:New</p>
              <div class="row">
                    
                  <a href="" class="btn btn-success btn-sm ml-5">View Details</a>  
                  <a href="" class="btn btn-danger btn-sm ml-1">299</a>  
                  
              </div>
              
          
          </div>
          </div>
          
        
        </div>
      
      </div>
      
      <div class="text-center">
          <a href="" class="btn btn-danger btn-sm text-white mt-3">View All</a>
      </div>
       
 </div> 
<!-- End Old Book -->

<%@include file="Footer.jsp" %>
</body>
</html>