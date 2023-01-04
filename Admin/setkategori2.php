<?php 
session_start();
include('cekadmin.php');
require '../functions.php';//parameter koneksi, 

$id = $_GET['id'];

$post = query("SELECT * FROM postingan WHERE id = '$id'")[0];
$info = $post["info_kategori"];
$kategori = query("SELECT * FROM kategori WHERE id = '$info'")[0];
$count = hitung_baris("kategori");
//var_dump($post);

if (isset($_POST["submit"]) ){

    //$ktgr = $_POST["ktrg"];

    if (setKategori($_POST)>0){
        echo "
        <script>
        alert ('data berhasil di ubah');
        document.location.href ='dashboard.php';
        </script>
        ";
    }else{
        echo"
        <script>
        alert ('data gagal di ubah');
        </script>
        ";
    }
}
 ?>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>kategori</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<meta name='viewport' content='width=device-width, initial-scale=1'>
</head>

<style type="text/css">
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }
        /* HTML5 display-role reset for older browsers */
    article, aside, details, figcaption, figure, 
    footer, header, hgroup, menu, nav, section {
        display: block;
    }
    body {
        line-height: 1;
    }
    ol, ul {
        list-style: none;
    }
    blockquote, q {
        quotes: none;
    }
    blockquote:before, blockquote:after,
    q:before, q:after {
        content: '';
        content: none;
    }


        /* CSS Reset End */
	body{
        font-family: Quicksand, sans-serif;
    }
    h1 {
        margin: 20px 20px 10px 20px;
        font-size: 30px;
        font-family: Arial, Helvetica, sans-serif;
    }
    h2 {
        font-size: 20px;
        margin: 20px 20px 10px 40px;
        font-family: Arial, Helvetica, sans-serif;
    }
    div {
        border: solid 1px grey;
        margin: 20px 20px 10px 40px;
        padding: 20px;
        border-radius: 20px;
    }
    .pengisi {
        border: solid 1px grey;
        padding: 20px;
        border-radius: 20px;
        margin-top: 5px;
        margin-left: 0px;
    }
    input, textarea, table {
        width: 100%;
    }
	input[type=submit],input[type=reset] {
            font-family: sans-serif;
            font-size: 15px;
            background: #22a4cf;
            color: white;
            border: white 3px solid;
            border-radius: 5px;
            padding: 12px 20px;
            /*margin-top: 10px;*/
            align-items: right;
            width: 250px;
        }
     input[type=submit]:hover, input[type=reset]:hover{
            opacity:0.9;
        }
    .col1 {
        width: 200px;
    }
    .col3 {
        width: 75px;
        text-align: center;
        text-decoration: none;
    }
    tr, td {
        padding: 5px;
    }
    table, tr, td {
        /*border: 1px solid grey;*/
        border: none;
    }
    .tablesetting{
        border-collapse: collapse;
        width: 100%;
        background-color: #fff;
        border: 2px solid #35A9DB;
    }
    .tablesetting tr th{
        background-color: #35A9DB;
        color: #fff;
        font-weight: normal;
    }
    .tablesetting, th, td{
        padding : 8px;
        text-align: left;
    }
    .tablesetting tr:hover {
        background-color: #f5f5f5;
    }
 
    .tablesetting tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    h2{
        color: #505458;
        font-size: 20px;
    }
    .tablesetting2{
        border-collapse: collapse;
        width: 100%;
        border: 1px solid#a80024;
    }
    .tablesetting2 tr th{
        background-color: #ff6961;
        color: #fff;
        font-weight: normal;
    }
    .tablesetting2 tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .fas{
        color:blue;
        
    }
    input[type=text], textarea {
        margin-top: 10px;
    }
</style>
<body>
    <h1 class="text-primary">View / Set Berita</h1>
    <hr>
    </p>
    <div>
        <label for="judul">Title:</label><br>
        <div class="pengisi"><b><?= $post["judul"] ?></b></div>
         <p><label for="Kategori">Kategori:</label><br></p>
        <div class="pengisi"><?=$kategori['namakategori']?></div>
        <p><label for="Tanggal">Tanggal Pengajuan:</label><br></p>
        <div class="pengisi"><?=$post['waktu']?></div>
        <p><label for="Gambar">Gambar:</label><br>
        <div class="pengisi"><img src="../penulis/img_post/<?=$post['gambar']?>" width=300><br></p></div>
        <p><label for="Isi">Isi Berita:</label><br></p>
        <div class="pengisi"><?php echo $post['isi'] ?></div>
    </div>
</body>
</html>

