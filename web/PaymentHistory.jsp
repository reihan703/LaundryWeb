<%-- 
    Document   : PaymentHistory
    Created on : Jul 21, 2021, 1:36:59 PM
    Author     : USER
--%>

<%@page import="java.sql.*"%>
<%@page import="Config.Connectionn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Harga Berlangganan</title>
    <link rel="stylesheet" href="css/price.css.css" type="text/css"/>
    <link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
    <link rel="stylesheet" href="css/paymentHistory.css" type="text/css"/>
    <link rel="stylesheet" href="css/jquery-ui.min.css">
</head>

<body>
    <div class="containerHistory">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet "> About Us</a></li>
            </ul>
        </nav>
        <div class="history-body">
            <h1 style="color: white; text-align: center;">User Payment History</h1>
            <table class="content-table">
                <tr>
                    <th>Order ID</th>
                    <th>Users ID</th>
                    <th>Alamat</th>
                    <th>No.Telp</th>
                    <th>Tanggal Pengambilan</th>
                    <th>Tanggal Selesai</th>
                </tr>
                    <% 
                Connection con = Connectionn.dbConnect();
                session =  request.getSession();
                String ID1 = (String)session.getAttribute("ID");
                String sql ="Select * from order_table1 where userID = '"+ID1+"' order by orderID desc ";
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                while(rs.next()){
                    %>
                    <tr class="table-data">
                    <td><%=rs.getInt("orderID")%> </td>
                    <td><%=rs.getInt("userID")%></td>
                    <td><%=rs.getString("alamat")%></td>
                    <td><%=rs.getString("hp")%></td>
                    <td><%=rs.getString("tanggal_ambil")%></td>
                    <td><%=rs.getString("tanggal_selesai")%></td>
                    </tr>
                    <%
                }
            %>
            </table>
            <div class="ruang-tombol">
            <a href="DashboardServlet" class="selengkapnya header-gratis">Back</a>
            </div>
        </div>

    </div>

</body>

</html>