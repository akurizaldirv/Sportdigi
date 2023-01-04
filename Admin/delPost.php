<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

if (delPost($id)>0){
	echo "
		<script>
		alert ('data berhasil di hapus');
		document.location.href ='post.php';
		</script>
		";
} else{
	echo "
		<script>
		alert ('data gagal di hapus');
		document.location.href ='post.php';
		</script>
		";
}
 ?>
