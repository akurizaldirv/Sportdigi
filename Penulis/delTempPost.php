<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

if (delTempPost($id)>0){
	echo "
		<script>
		alert ('data berhasil di hapus');
		document.location.href ='daftarberita.php';
		</script>
		";
} else{
	echo "
		<script>
		alert ('data gagal di hapus');
		document.location.href ='daftarberita.php';
		</script>
		";
}
 ?>
