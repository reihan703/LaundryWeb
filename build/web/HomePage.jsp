

<%@page import="java.sql.*"%>
<%@page import="Config.Connectionn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">
        <nav>
            <ul>
                <li><a class="active" href="#"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>
        <div class="header">
            <h1>Laundry<br>and<br>Dry Cleaning</h1>
        </div>
        <div class="janjiContainer">
            <div class="janjiHeader">
                <h2>Apa Yang Membuat Kami Lebih Unggul?</h2>
            </div>
            <div class="waktu">
                <div class="janjiIcon"><i class="fas fa-stopwatch"></i></div>
                <div class="janjiText">Satu mesin cuci untuk setiap pelanggan, untuk pengerjaan yang cepat.</div>
            </div>
            <div class="antar">
                <div class="janjiIcon"><i class="fas fa-bolt"></i></div>
                <div class="janjiText">Semua cucian diantar dengan helikopter agar cepat sampai dan tidak terkena macet.</div>
            </div>
            <div class="harga">
                <div class="janjiIcon"><i class="fas fa-dollar-sign"></i></div>
                <div class="janjiText">Dengan semua service yang kami tawarkan, harganya pasti masih terjangkau untuk semua orang.</div>
            </div>
        </div>
        <div class="temukanContainer">
            <div class="temukanHeader">
                <h2>Temukan kami di</h2>
            </div>
            <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3964.6481960542746!2d106.82505695032187!3d-6.439206164735796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69eb9189edc36b%3A0xdf51a43d60dd20fc!2sUPTD%20Taman%20Hutan%20Raya%20(Alun-Alun%20Kota%20Depok)!5e0!3m2!1sen!2sid!4v1624610609219!5m2!1sen!2sid"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
        </div>
        <div class="feedbackContainer">
            <div class="feedbackHeader">
                <h2>Customer Feedback</h2>
            </div>
            <div class="feedbackContent1">
                <div><i class="fas fa-quote-right" id="quote"></i></div>
                <div>
                    <% 
                Connection con = Connectionn.dbConnect();
                String sql ="Select * from feedback order by id desc limit 1";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while(rs.next()){
                    %>
                    <p>"<%=rs.getString("message")%>"</p>
                </div>
                <div>-<%=rs.getString("nama")%></div>
                <%
                }
            %>
            </div>
            <div class="feedbackContent2">
                <div><i class="fas fa-quote-right" id="quote"></i></div>
                <div>
                    <% 
                String sql1 ="Select * from feedback order by id desc limit 1,1";
                Statement stmt1 = con.createStatement();
                ResultSet rs1 = stmt.executeQuery(sql1);
                while(rs1.next()){
                    %>
                    <p>"<%=rs1.getString("message")%>"</p>
                </div>
                <div>-<%=rs1.getString("nama")%></div>
                <%
                }
            %>
            </div>
        </div>
        <div class="footer">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem donec massa sapien faucibus et molestie ac. Velit laoreet id donec ultrices tincidunt arcu. Eu tincidunt tortor
                aliquam nulla facilisi. Consectetur lorem donec massa sapien faucibus et molestie. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. </p>
        </div>
    </div>
</body>

</html>
