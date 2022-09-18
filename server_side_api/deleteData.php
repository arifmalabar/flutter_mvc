<?php
include 'koneksi.php';
$id = $_GET['id'];
$query = mysqli_query($konek, "DELETE FROM tb_pegawai WHERE id_pegawai ='".$id."'");
if($query){
    echo json_encode(["status" => "success"]);
} else {
    echo json_encode(["status" => "failed"]);
}