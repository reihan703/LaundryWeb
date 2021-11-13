<%-- 
    Document   : LoginPage
    Created on : Jul 18, 2021, 9:37:31 AM
    Author     : USER
--%>

<%@page import="java.sql.*"%>
<%@page import="Config.Connectionn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <link rel="stylesheet" href="css/account.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
    <script src="script/main.js"></script>
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css"
        integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
</head>

<body>
    <div class="contactContainer">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a class="active" href="#"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>


        <div class="login-box">
            <h1>Login</h1>
            <form action="LoginPageServlet" method="post">
                <label>Email</label>
                <input type="email" placeholder="" name="Email"/>
                <label>Password</label>
                <input type="password" placeholder="" name="Password"/>
                <span style="color: red">${error}</span>
                <input type="submit" value="Submit" class="submit1"/>
            </form>
            <p class="para-2">
                Not have an account? <a href="AccountPageServlet">Sign Up Here</a>
            </p>
        </div>


</body>

</html>