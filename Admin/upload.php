<?php 
session_start();
include('cekadmin.php');
require '../functions.php';
$id = $_GET["id"];

$kategori = query("SELECT * FROM beritaadmin WHERE id = $id")[0]['info_kategori'];
// var_dump($kategori);

if ($kategori != "") {
	if (uploadBerita($id)>0){
		echo "
			<script>
			alert ('data berhasil di upload');
			document.location.href ='post.php';
			</script>
			";
	} else{
		echo "
			<script>
			alert ('data gagal di upload');
			document.location.href ='post.php';
			</script>
			";
	}
} else {
	echo "
			<script>
			alert ('Masukkan kategori');
			document.location.href ='post.php';
			</script>
			";
}


 ?>
