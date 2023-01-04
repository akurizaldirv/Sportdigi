<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

if (delComment($id)>0){
	echo "
		<script>
		alert ('Komentar berhasil di hapus');
		document.location.href ='managecomment.php';
		</script>
		";
} else{
	echo "
		<script>
		alert ('Komentar gagal di hapus');
		document.location.href ='managecomment.php';
		</script>
		";
}
 ?>
