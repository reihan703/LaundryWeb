<%-- 
    Document   : ContactUsPage
    Created on : Jul 14, 2021, 12:28:39 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"></script>
    <script src="script/main.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
    <link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="contactContainer">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a class="active" href="#"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>
        <div class="clean"><h1>Clean Laundry</h1></div>
        <div class="contactUs"><h2>Contact Us</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et molestie ac. Velit laoreet id donec ultrices tincidunt arcu. Eu tincidunt tortor aliquam nulla facilisi. Consectetur lorem donec massa sapien faucibus et molestie. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. </p></div>
        <div class="iconContact">
            <div class="address">
                <div class="contactIcon"><i class="fas fa-map-marker"></i></div>
                <div class="contactText"><p>Taman Hutan Raya (Alun-Alun Kota Depok)</p></div>
            </div>
            <div class="mail">
                <div class="contactIcon"><i class="fas fa-envelope"></i></div>
                <div class="contactText"><p>asd@asd.com</p></div>
            </div>
            <div class="phone">
                <div class="contactIcon"><i class="fas fa-phone"></i></div>
                <div class="contactText"><p>081111111111</p></div>
            </div>
        </div>
        <div class="contactForm">
            <form action="ContactUsPageServlet" method="POST">
                <div class="inputBox">
                    <label for="name">Full name</label> <br>
                    <input id="fullName" type="text" name="name" required="required">
                </div>
                <div class="inputBox">
                    <label for="email">Email</label> <br>
                    <input id="email" type="text" name="email" required="required">
                </div>
                <div class="inputBox">
                    <label for="message">Type Your Message...</label> <br>
                    <textarea name="message" id="message" cols="30" rows="10" required="required"></textarea>
                </div>
                <div class="status">

                </div>
                <div class="inputBox">
                     <button type="submit" class="submit">
                         Send
                </button>
                </div>
            </form>
        </div>
        <div class="footer"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et molestie ac. Velit laoreet id donec ultrices tincidunt arcu. Eu tincidunt tortor aliquam nulla facilisi. Consectetur lorem donec massa sapien faucibus et molestie. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. </p></div>
    </div>


</body>

</html>
