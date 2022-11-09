<?php
require "koneksi.php";
session_start();
if (!isset($_SESSION['login'])) {
    header("Location: login.php");
}
if(isset($_POST['submit'])){
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $telpon = $_POST['telpon'];
    $email = $_POST['email'];
    $jenis = $_POST['jenis'];
    date_default_timezone_set("Asia/Makassar");
    $date = strtotime("now");
    $waktu = date("Y-m-d H:i:s", $date);
    $query = mysqli_query($db, "INSERT INTO laundry (nama,alamat,telpon,email,jenis) VALUES ('$nama','$alamat','$telpon','$email','$jenis')");
    if(!empty($_FILES['gambar']['name'])){
        $query = mysqli_query($db, "SELECT * FROM laundry WHERE nama='$nama'");
        $result = mysqli_fetch_assoc($query);
        $id_gambar = $result['id'];
        $nama_gambar = $_POST['nama_gambar'];
        $gambar = $_FILES['gambar']['name'];
        $a = explode('.', $gambar);
        $ekstensi = strtolower(end($a));
        $gambar_baru = "$nama_gambar.$ekstensi";
        $tmp = $_FILES['gambar']['tmp_name'];
        if(move_uploaded_file($tmp,"gambar/$gambar_baru")){
            $query = mysqli_query($db, "INSERT INTO gambar VALUES ('', $id_gambar, '$nama_gambar', '$gambar_baru', '$waktu')");
            if($query){
                header("Location: data.php");
            }
            else{
                echo "Tambah Pesanan Gagal";
            }
        }
    }
}
?>