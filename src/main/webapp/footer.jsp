<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Poppins:wght@300;400;500&display=swap');
footer{
    background-color: #eaefd7;
    border-radius: 10px 10px;
    box-shadow: 0 .1rem .9rem rgba(0,0,0.1);;
}
.box-container{
    display: flex;
    justify-content: space-between;
    padding: 15px 20px 0 20px;

}

.box{
    padding: 10px;
}

.box h3{
    font-size: 2.0rem;
    color: black;
    padding: 1rem 0;
}

.box p{
    line-height: 1.8;
    font-size: 1.5rem;
    padding: 1rem 0;
}

.box i{
    color: var(--green);
}

.box .links{
    display: block;
    font-size: 1.5rem;
    padding: 1rem 0;
    color: black;
}

.box a i{
    padding-right: 0.5rem;
}

.box a:hover i{
    padding-left: 1rem;
}

.box .share a {
    border: 0px solid;
    height: 2.5rem;
    width: 2.5rem;
    line-height: 2.5rem;
    border-radius: .5rem;
    font-size: 1.5rem;
    margin-left: .5rem;
    color: black;
    background-color: #c6c1c1;
    text-align: center;
}

.box .share a:hover {
    color: white;
    background-color: green;
}

.box .email{
    width: 250px;
    height: 45px;
    margin: .7rem 0;
    padding: 1rem;
    border-radius: 0.5rem;
    background: #c6c1c1;
    font-size: 1.6rem;
    color: black;
    text-transform: none;
}

.box .paymentimg{
    margin-top: .2rem;
    width: 300px;
    height: 40px;
}

.box .social{
    margin-top: 25px;
}

.box .logofooter{
    color: green;
    font-size: 2.5rem;
}

.box .btn{
    display: block;
    margin: 1rem 0;
    width: 100px;
    border: 1px solid;
    height: 4rem;
    width: 15rem;
    line-height: 4rem;
    border-radius: .5rem;
    background: #666;
    color: #fff;
    font-size: 1.5rem;
    text-align: center;
}

.box .btn:hover{
    background-color: green;
    color: #fff;
}



hr{
    background-color: rgb(171, 162, 162);
    height: 2px;
}

.pp{
    padding: 10px 0 0 0;
    text-align: center;
    font-size: 15px;
}


</style>

</head>


    <footer>
    <div class="box-container">
        
<div class="box">
    <h3 class="logofooter">Click Cart</h3>
    <img src="images/Cart.png"  class = "logo" style="width: 230px; height: 80px;" id="logo" alt="Logo">
    <p>Sri Lanka's Number One Online Grocery Website.</p>

    <h3 class="social">Social Links</h3>
    <div class="share">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin"></a>
    </div>
</div>

 <div class="box">
    <h3>Quick Links</h3>
    <a href="index.php" class="links"><i class="fas fa-arrow-right"></i> Home</a><br>
    <a href="packges.php" class="links"><i class="fas fa-arrow-right"></i> Cart</a><br>
    <a href="about.php" class="links"><i class="fas fa-arrow-right"></i> Item Store</a><br>
    <a href="contact.php" class="links"><i class="fas fa-arrow-right"></i> FAQ</a><br>
    <a href="contact_us.jsp" class="links"><i class="fas fa-arrow-right"></i> Contact Us</a><br>
</div>

<div class="box">
    <h3>Contact Info</h3>
    <a href="#" class="links"><i class="fas fa-phone"></i> +94 382 223 436</a><br>
    <a href="#" class="links"><i class="fas fa-phone"></i> +94 777 409 099</a><br>
    <a href="#" class="links"><i class="far fa-envelope"></i> clickcart@gmail.com</a><br>
    <a href="#" class="links"><i class="fas fa-map-marker-alt"></i> K 11, Kahanthota Road, Malabe</a><br>
</div>

            <div class="box" id="box4">
                <h3>Newsletter</h3>
                <p>Subscribe For Latest Updates</p>
                <input type="email" class="email" placeholder="Enter Your Email"><br>
                <input type="submit" value="Subscribe" class="btn"><br>
                <img src="images/payment.png"  class="paymentimg">
            </div>
        </div>
        <hr>
        <p class="pp">
                &copy;Copyright 2023. All rights reserved.<br />Developed by SE_OOP_2023_S_2MLB_WD_G215 Group memebers
        </p>
  
    </footer>

</html>