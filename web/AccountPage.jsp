<%-- 
    Document   : AccountPage
    Created on : Jul 18, 2021, 9:12:04 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <link rel="stylesheet" href="css/account.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
    <script src="script/main.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
</head>

<body>
    <div class="contactContainer">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a class="active" href="#"> Account</a></li>
                <li><a  href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>
    
    <div class="signup-box">
        <h1>Sign Up To Order</h1>
        <h4>It's free and only takes a minute</h4>
        <form action="AccountPageServlet" method="POST">
        <label>First Name</label>
        <input type="text" placeholder="" name="Fname" required="required"/>
        <label>Last Name</label>
        <input type="text" placeholder="" name="Lname" required="required"/>
        <label>Email</label>
        <input type="email" placeholder="" name="Email" required="required"/>
        <label>Password</label>
        <input type="password" placeholder="" name="Password" required="required"/>
        <input type="submit" value="Submit" class="submit1" />
        </form>
        <p>
        By clicking the Sign Up button,you agree to our <br />
        <a href="#">Terms and Condition</a> and <a href="#">Policy Privacy</a>
        </p>
        <p class="para-2">
            Already have an account? <a href="LoginPageServlet">Login here</a>
        </p>
    </div>
    

</body>

</html>
