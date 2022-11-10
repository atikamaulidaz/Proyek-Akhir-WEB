<?php
session_start();
if (!isset($_SESSION['login'])) {
    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FORM PESANAN</title>
    <link rel="stylesheet" href="css/styleData.css">
    <link rel="stylesheet" href="css/stylesheet.css">
</head>

<body>
    <div class="header">
        <div class="nama-header">Order Pesanan</div>
        <div class="list-header">
            <ul>
                <li><button id="switch"><img src="images/night-mode.png" width="50px" height="50px"></button></li>
            </ul> 
        </div>
    </div>
    <div class="pesananBox">
        <div class="pesanan">
            <center>
                <div class="coba-pesan"><center><img src="images/order-now.png" width="200px" height="150px"></center></div>
                <form action="tambah.php" method="post" enctype="multipart/form-data">
                <label for="">Nama Lengkap</label><br>
                <input type="text" name="nama" class="pesan-item"><br>
                <label for="">Alamat Lengkap</label><br>
                <input type="text" name="alamat" class="pesan-item"><br>
                <label for="">No. HP</label><br>
                <input type="text" name="telpon" class="pesan-item"><br>
                <label for="">Email</label><br>
                <input type="email" name="email" class="pesan-item"><br>
                <label for="jenis">Jenis Laundry</label><br>
                <!-- <p>(Regular Ekonomis, Laundry Exclusive, Laundry Sepatu, Laundry Bed Cover)</p>
                <input type="text" name="jenis" class="pesan-item"><br> -->
                <input type="radio" name="jenis" class="pesan-item" value="">
                <label for="jenis">Regular Ekonomis</label>
                <input type="radio" name="jenis" class="pesan-item" value="">
                <label for="jenis">Laundry Exclusive</label>
                <input type="radio" name="jenis" class="pesan-item" value="">
                <label for="jenis">Laundry Sepatu</label><br>
                <input type="radio" name="jenis" class="pesan-item" value="">
                <label for="jenis">Laundry Bed Cover</label><br><br>
                <label for="nama_gambar">Nama File</label>
                <input type="text" name="nama_gambar" class="pesan-item">
                <label for="gambar">Gambar</label>
                <input type="file" name="gambar" class="pesan-item">
                <a href="beranda.php" class="button-order">Batal</a>
                <input type="submit" name="submit" value="Order" class="button-order">
                </form>
            </center>
        </div>
    </div>
    <script src="javascript/jquery.js"></script>
</body>
</html>