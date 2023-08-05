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
   
         <div class="container">
             <div class="row">
                <div  class="col-md-4 offset-md-4 mt-5">
                   <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add Books</h4>
                            
                              <c:if test="${not empty bookAdd}">
                               <p class="text-center text-success">${bookAdd}</p>
                                 <c:remove var="bookAdd" scope="session"/>
                              </c:if>
                              
                              <c:if test="${not empty fail }">
                               <p class="text-center text-danger">${fail}</p>
                                 <c:remove var="bookAdd" scope="session"/>
                              </c:if>
                              
                              
                           <form  action="../BooksAddServlet" method="post" enctype="multipart/form-data">
                  
                  
                  <div class="form-group">
                     <label for="exampleInputName">Book Name</label>
                     <input type="text" name="bookName" class="form-control" id="exampleInputName" aria-describedby="nameHelp"  required="required">
                     
                   </div>
                  
                  <div class="form-group">
                     <label for="exampleInputName1">Author Name</label>
                     <input type="text" name="autherName" class="form-control" id="exampleInputName1" aria-describedby="emailHelp"  required="required">
                     
                   </div>
                   
                  <div class="form-group">
                     <label for="exampleInputNumber">Price</label>
                     <input type="number" name="bookPrice" class="form-control" id="exampleInputNumber" required="required">
                 </div>
 
                 
                  <div class="form-group">
                     <label for="inputState">Book Categories</label>
                     <select id="inputState" name="bookType" class="form-control">
                     
                        <option selected>--select--</option>
                        <option value="New">New Book</option>
                     
                     </select>
                     
                   </div>
                   
                   
                   
                   <div class="form-group">
                     <label for="inputState">Book Status</label>
                     <select id="inputState" name="bookStatus" class="form-control">
                     
                        <option selected>--select--</option>
                        <option value="Active">Active</option>
                        <option value="InActive">InActive</option>
                     
                     </select>
                     
                   </div>
                   
                   <div class="form-group">
                     <label for="exampleFormControlFile">Upload Photo</label>
                     <input type="file" name="bookImg" class="form-control-file" id="exampleFormControlFile"/>
                     
                   </div>
                 
         
                  <div class="text-center">
                 
                     <button type="submit" class="btn btn-primary">Add</button>
      
                 </div>
                 
             </form>
                        
                        </div>
                   
                   
                    </div>
                
                
                </div>
             
           
             </div>   
        
         </div>

          <!-- Footer  -->
          
          <div style="margin-top:20px;">
             <%@include file="Footer.jsp" %>
          </div>
          
</body>
</html>