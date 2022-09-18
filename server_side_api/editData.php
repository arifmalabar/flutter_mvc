<?php
include 'koneksi.php';
$id = $_GET['id'];
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
        $query = mysqli_query($konek, "UPDATE tb_pegawai SET nama_pegawai='".$nama."', hoby = '".$hoby."', alamat = '".$alamat."', gambar = '".$base_64."', nm_gambar = '".$name_file."' WHERE id_pegawai = '".$id."'");
        unlink($location);
        if($query){
            echo json_encode(["status" => "success"]);
        } else {
            echo json_encode(["status" => "failed"]);
        }
    }
} else {
    $query = mysqli_query($konek, "UPDATE tb_pegawai SET nama_pegawai='".$nama."', hoby = '".$hoby."', alamat = '".$alamat."' WHERE id_pegawai = '".$id."'");
    if($query){
        echo json_encode(["status" => "success"]);
    } else {
        echo json_encode(["status" => "failed"]);
    }
}