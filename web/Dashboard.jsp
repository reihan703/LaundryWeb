<%-- 
    Document   : Dashboard
    Created on : Jul 21, 2021, 1:50:12 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/stylesheet.css" type="text/css" />
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style type="text/css">
        <%@ include file="css/stylesheet.css" %>
        body{
        background: linear-gradient(rgba(0, 0, 0, 0.644), rgba(0, 0, 0, 0.644)), url(img/bg2.jpg);
        background-size: cover;
        background-repeat: no-repeat;
        height: calc(100vh - 80px);
        background-attachment: fixed;
        overflow-x: hidden;
        }
    </style>
</head>
<body>
    <div class="containerLogin">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>
        <div>
            <h1 class="loginList"><a href="PricePageServlet" >Order</a></h1>
            <h1 class="loginList"><a href="EditPageServlet" >Update Profile</a></h1>
            <h1 class="loginList"><a href="PaymentHistoryServlet" >Your Order</a></h1>
            <h1 class="loginList"><a href="LogoutServlet" >Logout</a></h1>
        </div>
        <div class="footer"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et molestie ac. Velit laoreet id donec ultrices tincidunt arcu. Eu tincidunt tortor
            aliquam nulla facilisi. Consectetur lorem donec massa sapien faucibus et molestie. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. </p>
        </div>
    </div>
    

</body>
</html>
