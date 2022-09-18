<?php
include 'koneksi.php';
$nama = $_POST['nama'];
$hoby = $_POST['hoby'];
$alamat = $_POST['alamat'];
$gambar = $_FILES['gambar'];

if(!empty($gambar['name']))
{
    $temp_file = $gambar['tmp_name'];
    $name_file = $gambar['name'];
    $size = $gambar['size'];
    $format = $gambar['type'];
    if($size > 4000000) {
        echo json_encode(["status" => "error" ,"message" => "Ukuran harus dibawah 4mb"]);
    } else if($format != "image/jpeg" && $format != "image/png"){
        echo json_encode(["status"=> "error" ,"message" => "Format file anda salah"]);
    } else {
        move_uploaded_file($temp_file, "images/$name_file");
        $location = "images/$name_file";
        $file_content = file_get_contents($location);
        $base_64 = base64_encode($file_content);
        $query = mysqli_query($konek, "INSERT INTO tb_pegawai VALUES ('', '".$nama."', '".$hoby."', '".$alamat."', '".$base_64."', '".$name_file."')");
        unlink($location);
        if($query){
            echo json_encode(["status" => "success"]);
        } else {
            echo json_encode(["status" => "failed"]);
        }
    }
} else {
    $query = mysqli_query($konek, "INSERT INTO tb_pegawai (id_pegawai, nama_pegawai, hoby, alamat) VALUES ('', '".$nama."', '".$hoby."', '".$alamat."')");
    if($query){
        echo json_encode(["status" => "success"]);
    } else {
        echo json_encode(["status" => "failed"]);
    }
}