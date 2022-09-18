<?php 
try{
    $db_host = "localhost";
    $db_user = "root";
    $db_pass = "";
    $db_name = "db_pegawai_api";

    $konek = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
    if(!$konek){
        throw new Exception("Tidak dapat konek");
    }
} catch(Exception $s){
    echo $s;
}