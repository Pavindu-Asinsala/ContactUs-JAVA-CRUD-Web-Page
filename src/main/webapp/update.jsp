<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Contact Us </title>

<style >

    body {
    background: url("images/5.jpg");
    background-size: cover; 
    background-repeat: no-repeat; 
    border-radius: 5px 5px;
   
}

        .seconddiv{
            display: flex;
            justify-content: space-between;
            margin-left: 500px;
        
            margin-bottom: 50px;
            margin-top: 100px;
        }

        .seconddiv .form{
            background:url("images/2.jpg");
            background-size: cover;
            padding: 25px;
            font-size: 23px;
            line-height: 50px;
            border-radius: 10px;
            width :375px;
            
        }
        
        .form {
        color: 
    }


        .form label {
        color: white; 
    }


    .seconddiv h1{
            font-size: 28px;
            text-align: center;
            margin-bottom: 15px;
        }

        .seconddiv input{
            height: 40px;
            width: 300px;
            border-radius: 10px;
            padding-left: 15px;
        }

        .seconddiv .name{
            margin-left: 103px;
        }

        .seconddiv .email{
            margin-left: 97px;
        }

        .seconddiv .address{
            margin-left: 170px;
            border-radius: 10px;
            padding: 10px;
        }

        .seconddiv .submit{
            
            margin-left: 110px;
            font-size: 20px;
            font-weight: bold;
            background-color: rgb(0, 128, 0);
            color: white;
            width: 150px;
            
        }

        .seconddiv .submit:hover{
            background-color: red;
        }
        
</style>
</head>
<body>

<%
		
		String name=request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
	%>
	
	
	    <div class="seconddiv">

        <div class="form">
            <h1> <b>Edit Your Message </b> </h1>
            
        <form action="UpdateDataServlet" method="post">
        
           <b> <label for="name">Name:</label></b>
            <input type="text" id="name" value="<%= name %>" name="name" required>
           <b> <label for="email">Email:</label></b>
            <input type="email" id="email" value="<%= email %>" name="email" required>
           <b> <label for="contactNumber">Contact Number:</label></b>
            <input type="text" id="contactNumber" value="<%= contact %>" name="contact" required>
           <b> <label for="message">Message:</label></b>
            <textarea id="message" name="message"  cols="40" rows="4" required> <%= message %> </textarea>
          <b> <input type="submit" value="Update" class="submit"> </b> 
           
           
        </form>
        </div>
        </div>
        
        
	
	
	



</body>
</html>