<?php
session_start();
if (!isset($_SESSION['login'])) {
    header("Location: login.php");
}

require "koneksi.php";
if(isset($_GET['id'])){
    $query = mysqli_query($db, "SELECT * FROM laundry JOIN gambar on laundry.id = gambar.id WHERE laundry.id = $_GET[id]");
    $result = mysqli_fetch_assoc($query);
    $nama = $result['nama'];
    $alamat = $result['alamat'];
    $telpon = $result['telpon'];
    $email = $result['email'];
    $jenis = $result['jenis'];
    $oldpict = $result['file'];


if(isset($_POST['submit'])){
    $id = $_GET['id'];
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $telpon = $_POST['telpon'];
    $email = $_POST['email'];
    $jenis = $_POST['jenis'];
    $gambar_lama = $oldpict;
    $query = mysqli_query($db, "UPDATE laundry SET nama='$_POST[nama]', alamat='$_POST[alamat]', telpon='$_POST[telpon]', email='$_POST[email]', jenis='$_POST[jenis]' WHERE id=$_GET[id]");
    if($query){
        date_default_timezone_set("Asia/Makassar");
        $date = strtotime("now");
        $waktu = date("Y-m-d H:i:s", $date);
        unlink('gambar/'.$gambar_lama);
        $gambar = $_FILES['gambar']['name'];
        $nama = $_POST['nama_gambar'];
        $a = explode('.', $gambar);
        $ekstensi = strtolower(end($a));
        $gambar_baru = "$nama.$ekstensi";
        $tmp = $_FILES['gambar']['tmp_name'];
        move_uploaded_file($tmp, "gambar/$gambar_baru");
        $query_gambar = mysqli_query($db, "UPDATE gambar SET nama_file = '$nama', file = '$gambar_baru', waktu = '$waktu' WHERE id = '$id'");
        if ($query_gambar) {
            echo"Update Gambar Berhasil";
            header("Location:data.php");
        } else{
            echo"Update Gambar Gagal";
        }
    }else{
        echo "Update Pesanan Gagal";
    }
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Pesanan</title>
    <link rel="stylesheet" href="css/styleData.css">
    <link rel="stylesheet" href="css/stylesheet.css">
</head>
<body>
    <div class="header">
        <div class="nama-header">Edit Pesanan</div>
        <div class="list-header">
            <ul>
                <li><button id="switch"><img src="images/night-mode.png" width="50px" height="50px"></button></li>
            </ul> 
        </div>
    </div>
    <div class="pesananBox">
        <div class="pesanan">
            <center>
                <div class="coba-pesan"><center><img src="images/edit-info.png" width="200px" height="200px"></center></div>
                <form action="" method="post" enctype="multipart/form-data">
                <label for="">Nama Lengkap</label><br>
                <input type="text" name="nama" class="pesan-item" value='<?=$nama?>'><br>
                <label for="">Alamat Lengkap</label><br>
                <input type="text" name="alamat" class="pesan-item" value='<?=$alamat?>'><br>
                <label for="">No. HP</label><br>
                <input type="text" name="telpon" class="pesan-item" value='<?=$telpon?>'><br>
                <label for="">Email</label><br>
                <input type="email" name="email" class="pesan-item" value='<?=$email?>'><br>
                <label for="">Jenis Laundry</label><br>
                <p>(Regular Ekonomis, Laundry Exclusive, Laundry Sepatu, Laundry Bed Cover)</p>
                <input type="text" name="jenis" class="pesan-item" value='<?=$jenis?>'><br>
                <label for="nama_gambar">Nama File</label>
                <input type="text" name="nama_gambar" class="pesan-item" value='<?=$oldpict?>'>
                <label for="gambar">Gambar</label>
                <input type="file" name="gambar" class="pesan-item" value='<?=$gambar?>'>
                <input type="submit" name="submit" value="Edit" class="button-edit">
                </form>
            </center>
        </div>
    </div>
    <script src="javascript/jquery.js"></script>
</body>
</html>