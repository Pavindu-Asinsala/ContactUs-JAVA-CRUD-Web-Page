<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

header {
    background-color: #eaefd7;
    color: rgb(0, 0, 0);
    display: flex;
    font-family: "Times new roman";
    justify-content: space-between;
    align-items: center;
    padding: 10px;
}

button {
  background-color: white;
  color: black;
  border: none;
  padding: 10px 15px;
  margin: 5px;
  cursor: pointer;
  font-size: 17px;
}
#signbutton{
            background-color: rgb(50, 225, 50);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 0px;
            cursor: pointer;
}
button span {
    display: inline-block;
    vertical-align: middle;
    line-height: normal;
}

.logo{
	width: 100px;
	height: 40px;
	margin-left: 100px;
}


.banner-image {
    max-width: 100vh;
    max-height: 100vh; /* Adjust the height as needed */
    width: auto;
    height: auto;
    display: inline-block;
}
 
/* Add some basic styles for the icons and links */
.icon {
  margin-right: 5px;
}

.icon::before {
  font-family: Arial, sans-serif;
}

.home::before {
  content: "\1F3E0"; /* Unicode for a home icon */
}

.store::before{
	content: "&#x1F3EA;";
	
}
.shop-icon {
  font-size: 15px; /* Adjust the size as needed */
  color: #007bff; /* Change the color to your preference */
}
.cart::before {
  content: "\1F6D2"; /* Unicode for a shopping cart icon */
}

.faq::before {
  content: "\2753"; /* Unicode for a question mark icon */
}

.contact::before {
  content: "\260E"; /* Unicode for a telephone icon */
}


</style>
</head>
<body>

    <header>
        <div class="button-bar left">
            <a href="index.jsp"><button><span class="icon home"></span>Home</button></a>
            <a href = "#"><button><span class=" shop-icon">&#x1F3EA;</span>Shop</button></a>
            <a href="faq.jsp"><button><span class="icon faq"></span>FAQ</button></a>
            <a href="contact_us.jsp"><button><span class="icon contact"></span>Contact Us</button></a>
            <a href="#"><button><span class="icon cart"></span>Cart</button></a>
        </div>



        <img src="images/Cart.png"  class = "logo" style="width: 250px; height: 100px;" id="logo" alt="Logo">
        <div class="button-bar right">
            <button id = "signbutton"><span>Sign in</span></button>
            <button id = "signbutton"><span>Sign Up</span></button>
        </div>    </header>
</body>
</html>