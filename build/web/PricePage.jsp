<%-- 
    Document   : PricePage
    Created on : Jul 14, 2021, 12:22:21 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Harga Berlangganan</title>
    <link rel="stylesheet" href="css/price.css.css" />
    <link rel="stylesheet" href="css/stylesheet.css">
    <link rel="stylesheet" href="css/jquery-ui.min.css">
</head>

<body>
    <div class="containerForm">
        <nav>
            <ul>
                <li><a href="HomePageServlet"> Home</a></li>
                <li><a href="AccountPageServlet"> Account</a></li>
                <li><a href="ContactUsPageServlet"> Contact Us</a></li>
                <li><a href="AboutUsPageServlet"> About Us</a></li>
            </ul>
        </nav>
        <div class="brdr">
            <div class="tabel-harga">
                <div class="header header-gratis">
                    <span class="paket">Pilih Laundry Kiloan</span>
                </div>

                <form class="Clothes" action="PricePageServlet" method="POST">
                    <div class="deskripsi">
                        <h3>Deskirpsi Jasa</h3>
                        <ul>
                            <li> Perhitungan biaya berdasarkan timbangan di tempat laundry</li>
                            <li> Minimal order 1 Kg</li>
                            <li> Laundry selesai dalam 3 hari</li>
                        </ul>
                    </div>
                    <!-- <input type="checkbox" id="Sweater" name="Sweater" value="Cashmere"> -->
                    <!-- <label for="Sweater"> Reguler (RP. 50.000)</label> -->
                    <!-- <input type="checkbox" id="Dress" name="Dress" value="express">
                    <label for="Dress"> Express (++Rp30.000)</label>-->
                </form>
            </div>
            <form action="PricePageServlet" method="POST">
            <div class="tabel-harga">
                <div class="header header-gratis">
                    <span class="paket">Pilih Waktu Pengambilan</span>
                </div>
                <div class="tanggal">
                        <table>
                           <!-- <tr>
                                <td>Nama</td>
                                <td>:</td>
                                <td><textarea name="nama" style="width:300px;height:50px;text-align:start"></textarea></td>
                            </tr> -->
                            <tr>
                                <td>No. telp</td>
                                <td>:</td>
                                <td>
                                    <input type="number"  name="telp" style="width:300px;height:50px;text-align:start" placeholder="+62" />
                                </td>    
                            </tr>
                            <tr>
                                <tr>
                                    <td>Alamat</td>
                                    <td>:</td>
                                    <td><textarea name="alamat" style="width:300px;height:50px;text-align:start"></textarea></td>
                                </tr>
                                </td>
                            </tr>
                            <tr>
                                <td>Tanggal Pengambilan</td>
                                <td>:</td>
                                <td><input type="text" name="tanggal" style="width:300px;height:50px;text-align:start" id="datepicker"></td>
                            </tr>
                        </table>
                        <div class="ruang-tombol">
                            <input type="submit" class="selengkapnya header-gratis" value="Pesan Sekarang">
                        </div>
                    </form>
                        <div class="ruang-tombol">
                        <a href="DashboardServlet" class="selengkapnya header-gratis">Back</a>
                        </div>
                </div>
                <!-- <div class="date-picker">
                <div class="selected-date"></div>
                <div class="dates">
                    <div class="month">
                        <div class="arrows prev-mth">&lt;</div>
                        <div class="mth"></div>
                        <div class="arrows next-mth">&gt;</div>
                    </div>

                    <div class="days">

                    </div>
                </div>
            </div> -->

                <script src="script/main.js"></script>
                
                
            </div>
        </div>
    </div>
    </div>

    <script src="script/jquery-3.6.0.min.js"></script>
    <script src="script/jquery-ui.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#datepicker').datepicker({
                dateFormat: "yy-mm-dd"
            });
        })
    </script>

</body>

</html>
