<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

if (restoreTempKategori($id)>0){
    echo "
        <script>
        alert ('data berhasil dipulihkan');
        document.location.href ='kategori.php';
        </script>
        ";
} else{
    echo "
        <script>
        alert ('data gagal dipulihkan');
        document.location.href ='kategori.php';
        </script>
        ";
}
 ?>
