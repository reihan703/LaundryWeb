<%-- 
    Document   : AboutUsPage
    Created on : Jul 14, 2021, 12:47:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <title>About Us</title>
</head>
<body>
    <div class="containerAbout">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a class="active" href="#"> About Us</a></li>
            </ul>
        </nav>
        <div class="contentAbout">
            <div class="slide">
                <img src="img/woman1.jpg" alt="woman1" class="imagesSlide" style="width: 400px;">
                <img src="img/woman2.jpg" alt="woman2 "class="imagesSlide" style="width: 400px;">
                <img src="img/man1.jpg" alt="man1" class="imagesSlide" style="width: 400px;">
            </div>
            <div class="aboutus">
                <div><h2>Who are we?</h2></div>
                <div><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</p></div>
            </div>
        </div>
        <div class="footer"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et molestie ac. Velit laoreet id donec ultrices tincidunt arcu. Eu tincidunt tortor aliquam nulla facilisi. Consectetur lorem donec massa sapien faucibus et molestie. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. </p></div>
    </div>

    <script>
        var myIndex = 0;
        carousel();
        
        function carousel() {
          var i;
          var x = document.getElementsByClassName("imagesSlide");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";  
          }
          myIndex++;
          if (myIndex > x.length) {myIndex = 1}    
          x[myIndex-1].style.display = "block";  
          setTimeout(carousel, 3000);
        }
    </script>

</body>
</html>
