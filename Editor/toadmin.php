<?php 
session_start();
include('cekeditor.php');
require '../functions.php';
$id = $_GET["id"];

$berita = query("SELECT * FROM beritaeditor WHERE  id = $id")[0];
$catatan = $berita["catatan"];

	if (toAdmin($id)>0){
		echo "
			<script>
			alert ('data berhasil di ajukan');
			document.location.href ='berita.php';
			</script>
			";
	} else{
		echo "
			<script>
			alert ('data gagal di ajukan');
			document.location.href ='berita.php';
			</script>
			";
	}

	?>
