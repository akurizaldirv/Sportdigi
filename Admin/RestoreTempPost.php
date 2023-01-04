<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

if (restoreTempPost($id)>0){
    echo "
        <script>
        alert ('data berhasil dipulihkan');
        document.location.href ='post.php';
        </script>
        ";
} else{
    echo "
        <script>
        alert ('data gagal dipulihkan');
        document.location.href ='post.php';
        </script>
        ";
}
 ?>
