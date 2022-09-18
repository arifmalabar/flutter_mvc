<?php
include 'koneksi.php';
$id = $_GET['id'];
$query = mysqli_query($konek, "SELECT id_pegawai, gambar, nm_gambar FROM tb_pegawai WHERE id_pegawai='".$id."'");
while($a = mysqli_fetch_assoc($query))
{
    $gambar = $a['gambar'];
    $name_file = $a['nm_gambar'];
    echo "<img src='data:image/png;base64, $gambar' alt='$name_file' />";
}