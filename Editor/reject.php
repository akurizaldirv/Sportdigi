<?php 
session_start();
include('cekeditor.php');
require '../functions.php';
$id = $_GET["id"];

$berita = query("SELECT * FROM beritaeditor WHERE  id = $id")[0];
$catatan = $berita["catatan"];
if ($catatan != ""){
	if (Reject($id)){
		echo "
			<script>
			alert ('Data Berhasil Di Reject');
			document.location.href ='berita.php';
			</script>
			";
	} else{
		echo "
			<script>
			alert ('Data Gagal Di Reject');
			document.location.href ='berita.php';
			</script>
			";
	}
}else {
	echo "<script>
			alert ('Mohon Memberikan Catatan');
			document.location.href ='berita.php';
			</script>
			";
}
?>
