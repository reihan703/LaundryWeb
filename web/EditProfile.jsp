<%-- 
    Document   : EditProfile
    Created on : Jul 21, 2021, 11:14:02 AM
    Author     : Ridho
--%>

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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
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
            <h1>Profile</h1>
            <form action="EditPageServlet" method="post">
                <label>New Email</label>
                <input type="email" placeholder="" name="Email" />
                <label>New Password</label>
                <input type="password" placeholder="" name="Password" />
                <input type="submit" value="Submit" class="submit1" />
            </form>
            <div class="ruang-tombol">
                <br>
                <a href="DashboardServlet" style="text-align: center">Back</a>
        </div>
        </div>
        


</body>

</html>
