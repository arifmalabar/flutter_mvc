<?php
include 'koneksi.php';
$data = 
[
    "status" => "ok",
    "data" => [] 
];
$query = mysqli_query($konek, "SELECT id_pegawai, nama_pegawai, hoby, alamat FROM tb_pegawai");
$index = 0;
while($a = mysqli_fetch_assoc($query))
{
    $idx = $index++;
    $data['data'][] = $a;
    $data['data'][$idx]['images'] = "http://".$_SERVER['HTTP_HOST']."/server_side_api/image_detail.php?id=".$a['id_pegawai']."";
}
echo json_encode($data);