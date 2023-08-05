<%@page import="admin.dao.AddBooksDao" import="java.util.*" import="admin.beans.BookDetailsBean"%>
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

           <h1 class="text-center mt-1">Hello,Admin</h1>
              <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      
      <th scope="col">Book Name</th>
      <th scope="col">Author Name</th>
      <th scope="col">Price</th>
      <th scope="col">Image</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
   <%        
      
      BookDetailsBean bean=new BookDetailsBean();
      AddBooksDao dao=new AddBooksDao(bean);
      List<BookDetailsBean> al= dao.getBookDetails();
      for(BookDetailsBean a:al){
      %>
    	 <tr>
    	    
    	    <td><%=a.getBookName() %></td>
    	    <td><%=a.getAutherName() %></td>
    	    <td><%=a.getBookPrice() %></td>
    	    <td><img src="..//book//<%=a.getBookImg()%>" style="heigth:50px;width:50px;"></td>
    	    <td><%=a.getBookType() %></td>
    	    <td><%=a.getBookStatus() %></td>
    	     <td>
               <a href="Edit.jsp?autherName=<%=a.getAutherName()%>" class="btn btn-sm btn-primary">Edit</a>
               <a href="Delete.jsp" class="btn btn-sm btn-danger">Delete</a>
             </td>
    	 </tr>
    
     <%  
      }
     %>
  
  
</table>

       <!-- Footer  -->
          
          <div style="margin-top:300px;">
             <%@include file="Footer.jsp" %>
          </div>
</body>
</html>