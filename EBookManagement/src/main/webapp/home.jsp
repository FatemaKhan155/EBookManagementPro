<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>   
<%@ page isELIgnored="false" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

                <h1>User:Home</h1>

                  <c:if test="${not empty userObj}">
                      <h5 >Full Name:${userObj.name}</h5>
                      <h5 >Email Id:${userObj.email}</h5>
                      <h5 >Password:${userObj.pass}</h5>
                      <h5 >Contact No:${userObj.mobile}</h5>
                       
                   </c:if>
</body>
</html>