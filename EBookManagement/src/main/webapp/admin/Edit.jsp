<%@page import="javax.sound.midi.SysexMessage"%>
<%@page import="admin.beans.BookDetailsBean"%>
<%@page import="admin.dao.AddBooksDao"%>
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
                            <h4 class="text-center">Edit Books</h4>
                            
                              <c:if test="${not empty bookAdd}">
                               <p class="text-center text-success">${bookAdd}</p>
                                 <c:remove var="bookAdd" scope="session"/>
                              </c:if>
                              
                              <c:if test="${not empty fail }">
                               <p class="text-center text-danger">${fail}</p>
                                 <c:remove var="bookAdd" scope="session"/>
                              </c:if>
                              
                              <%  
                                   int id=Integer.parseInt(request.getParameter("id"));
                                   AddBooksDao ad=new AddBooksDao(ConnectionProvider.getConnection());
                                   
                              %>
                              
                           <form  action="../EditServlet" method="post">
                                <input type="hidden" id="exampleInputNamm" value="<%=bean.getAutherName() %>"/>
                  
                  <div class="form-group">
                     <label for="exampleInputName">Book Name</label>
                     <input type="text" name="bookName" class="form-control" id="exampleInputName" aria-describedby="nameHelp" value="<%=bean.getBookName() %>">
                     
                   </div>
                  
                  <div class="form-group">
                     <label for="exampleInputName1">Author Name</label>
                     <input type="text" name="autherName" class="form-control" id="exampleInputName1" aria-describedby="emailHelp"  required="required"  value="<%=bean.getAutherName() %>" >
                     
                   </div>
                   
                  <div class="form-group">
                     <label for="exampleInputNumber">Price</label>
                     <input type="number" name="bookPrice" class="form-control" id="exampleInputNumber" required="required"  value="<%=bean.getBookPrice() %>">
                 </div>
 
                 
           
                   
                   
                   <div class="form-group">
                     <label for="inputState">Book Status</label>
                     <select id="inputState" name="bookStatus" class="form-control">
                     
                        <% if("Active".equals(bean.getBookStatus()))
                        {
                        		
                        }%>
                        <option value="Active">Active</option>
                        <option value="InActive">InActive</option>
                        else
                        {<%
                        	
                        		
                        %>}	
                        <option value="InActive">InActive</option>	
                        <option value="Active">InActive</option>
                     </select>
                     
                   </div>
                   
                 
         
                  <div class="text-center">
                 
                     <button type="submit" class="btn btn-primary">Update</button>
      
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