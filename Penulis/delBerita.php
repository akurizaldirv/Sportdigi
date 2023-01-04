<?php 
session_start();
include('cekpenulis.php');
require '../functions.php';
$id = $_GET["id"];

$berita = query("SELECT * FROM beritapenulis WHERE  id = $id")[0];
$status = $berita["status"];
var_dump($status);

if ($status == "draft" or $status == "Draft" or $status == "revisi" or $status == "Revisi") {
	if (delBerita($id)>0){
		echo "
			<script>
			alert ('Berhasil Menghapus Berita');
			document.location.href ='daftarberita.php';
			</script>
			";
	} else{
		echo "
			<script>
			alert ('Gagal Menghapus Berita');
			document.location.href ='daftarberita.php';
			</script>
			";
	}
} else {
	echo "<script>
			alert ('Tidak dapat menghapus berita, karena data telah diajukan atau telah diterbitkan');
			document.location.href ='daftarberita.php';
			</script>
			";
}

 ?>
