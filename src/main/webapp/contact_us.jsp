<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"> 
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
    
    body {
    background: url("images/5.jpg");
    background-size: cover; 
    background-repeat: no-repeat; 
    border-radius: 5px 5px;
   
}
        .mainheding{
            margin-top: 100px;
            text-align: center;
            font-size: 35px;
            color: 	#4CBB17;
        }

        .maindiv{
            display: flex;
            justify-content: space-between;
            text-align: center;
            margin-left: 200px;
            margin-right: 200px;
            margin-top: 50px;
            margin-bottom: 50px;

        }

        .maindiv div{
            border: 2px solid gray;
            height: 220px;
            width: 300px;
            padding-top: 30px;
            font-size: 25px;
            background: url("images/2.jpg");
            
            border-radius: 20px;
            padding: 20px;
        }

        .maindiv i{
            font-size: 35px;
            padding: 10px;
            margin-top: 25px;
            margin-bottom: 25px;
        }

        .maindiv div .title{
            color: black;
            font-size: 25px;
        }

        .maindiv div p{
            margin-top: 15px;
            font-weight: bolder;
            line-height: 30px;
            color: white;
            
        }
        
        

        .seconddiv{
            display: flex;
            justify-content: space-between;
            margin-left: 250px;
            margin-right: 250px;
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
        
        .mapouter{position:relative;height:400px;width:400px;background:#fff;}







      

    
    </style>
    
    <script>
     function validatePhoneNumber() {
            var phoneNumberInput = document.getElementById("contactNumber");
            var phoneNumber = phoneNumberInput.value;
            
            phoneNumber = phoneNumber.replace(/\D/g, ''); // Remove non-digit characters

            if (phoneNumber.length !== 10) {
              alert("Phone number must be 10 digits.");
              return false;
            }
            return true;
          }
          
    
        </script>
    
</head>
<body>

<jsp:include page="header.jsp" />

    
    <h1 class="mainheding">Contact Us</h1>

    <div class="maindiv">
        <div class="div1">
        <i><a href="" class="fa-solid fa-phone"  style="color: white; border:2px solid white; padding:15px; border-radius: 90px;"></a></i><br>
       <p class="title">Call Us Directly :</p>  <p> +94 382 223 436  <br> +94 777 409 099</p>

        </div>

        <div>
        <i><a href="" class="fa-solid fa-location-dot" style="color: white; border:2px solid white; padding:15px; border-radius: 90px;"></a></i><br>
           <p class="title">Address :</p>  <p>K 11, Kahanthota Road, Malabe</p>
        </div>
           

        <div>
            <i><a href="" class="fa-solid fa-envelope" style="color: white; border:2px solid white; padding:15px; border-radius: 90px;"></a></i><br>
           <p class="title"> Email :</p>  <p>clickcart@gmail.com</p>
        </div>
            
    </div>
    

    
    <div class="seconddiv">

        <div class="form">
            <h1> <b>Send Us a Message </b> </h1>
            
        <form action="ContactUsServlet" onsubmit="return validatePhoneNumber()" method="post">
        
           <b> <label for="name">Name:</label></b>
            <input type="text" id="name" name="name" required>
            
           <b> <label for="email">Email:</label></b>
            <input type="email" id="email" name="email" required>
            
           <b> <label for="contactNumber">Contact Number:</label></b>
            <input type="text" id="contactNumber" name="contactNumber" required>
            
           <b> <label for="message">Message:</label></b>
            <textarea id="message" name="message"  cols="40" rows="4" required></textarea>
          <b> <input type="submit" value="Submit" class="submit"> </b> 
           
           
        </form>
        </div>


<iframe src="https://maps.google.com/maps?q=kahanthota%20&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"   style="width: 490px; height: 400px;"></iframe></div>
    



</body>

<jsp:include page="footer.jsp" />
</html>


