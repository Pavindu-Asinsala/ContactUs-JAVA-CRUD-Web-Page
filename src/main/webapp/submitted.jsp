<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    margin: 0;
    padding: 0;
    background:url("images/1.jpg");
    background-size: cover;
}

.container {
    background-color: #fff;
    border: 1px solid #ccc;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin: 20px auto;
    padding: 20px;
    width: 80%;
    max-width: 600px;
}

h1 {
    color: #333;
}

p {
    font-size: 16px;
    color: #666;
}

        .seconddiv .submit{
            
            margin-left: 450px;
            font-size: 20px;
            font-weight: bold;
            background-color: rgb(0, 128, 0);
            color: white;
            width: 120px;
            
        }
        
                .seconddiv .submit1{
            
            margin-left: 10px;
            font-size: 20px;
            font-weight: bold;
            background-color: rgb(0, 128, 0);
            color: white;
            width: 120px;
            
        }

        .seconddiv .submit:hover{
            background-color: red;
        }
                .seconddiv .submit1:hover{
            background-color: red;
        }
        
        

</style>
    <title>Thank You</title>
   
</head>
<body>



    <div class="container">
        <h1 style="color: #ff0000;">Thank You For Your Submission !</h1>
        
        <c:forEach var="customer" items="${customerList}">
      <p><b>   Name: ${customer.name}</b></p> 
        <p><b>Email: ${customer.email}</b></p>
        <p><b>Contact Number: ${customer.contact}</b></p>
        <p><b>Message: ${customer.message}</b></p>
  
  <c:set var="name" value="${customer.name}"/>
  <c:set var="email" value="${customer.email}"/>
  <c:set var="contact" value="${customer.contact}"/>
  <c:set var="message" value="${customer.message}"/>
    
    </c:forEach>
    <div class ="seconddiv">
    
     <form action="contact_us.jsp" method="post">
<input type="submit" value="Back" class ="submit1">
</form>

    <form action="DeleteDataServlet" method="post">
  <input type="hidden" name="name" value="${name}">
  <input type="submit" value="Delete" class ="submit">
</form>
 <br>






<c:url value="update.jsp" var="cusupdate">
        	
        	<c:param name="name" value="${name}"></c:param>
        	<c:param name="email" value="${email}"></c:param>
        	<c:param name="contact" value="${contact}"></c:param>
        	<c:param name="message" value="${message}"></c:param>
        </c:url>
        
        <a href="${cusupdate}">
		<input type="button"  name="update"  value="Update" class="submit">
		</a>
 </div>
    </div>   
</body>
</html>


