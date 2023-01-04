<?php 
session_start();
include('cekeditor.php');
require '../functions.php';//parameter koneksi, 

$id = $_GET["id"];

$edit = query("SELECT * FROM beritaeditor WHERE id = $id")[0];

//var_dump($edit);

// $d = [
//     "judul" => "asd",
//     "ckeditor" => "asdasdasd",
//     "gambar" => "bukanGm"
// ];

// if (tulisBerita($d)>0) {
//     var_dump($d);
// } else {
//     var_dump("Data Salah");
// }


if (isset($_POST["submit"]) ){
    if (tinjauBerita($_POST)>0){
        echo"
        <script>
        alert ('Berita Berhasil Di Reject');
        document.location.href ='berita.php';
        </script>
        ";
    }else{
        echo"
        <script>
        alert ('Berita Gagal Di Reject');
        document.location.href ='berita.php';
        </script>
        ";
    }
}

if (isset($_POST["simpan"]) ){
    if (simpanBerita($_POST)>0){
        echo"
        <script>
        alert ('Data Berhasil Di Simpan');
        document.location.href ='berita.php';
        </script>
        ";
    }else{
        echo"
        <script>
        alert ('Data Gagal Di Simpan');
        document.location.href ='berita.php';
        </script>
        ";
    }
}

if (isset($_POST["acc"]) ){
    if (accBerita($_POST)>0){
        echo"
        <script>
        alert ('Berita Berhasil Di Ajukan');
        document.location.href ='berita.php';
        </script>
        ";
    }else{
        echo"
        <script>
        alert ('Berita Gagal Berhasil Di Ajukan');
        document.location.href ='berita.php';
        </script>
        ";
    }
}

if (isset($_POST['back'])) {
    echo "<script>document.location.href = 'berita.php'</script>";
}

 ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Daftar</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>


     <!-- include jquery -->
      <!-- <script src="//code.jquery.com/jquery-1.9.1.min.js"></script>  -->

      <!-- include libraries BS3 -->
      <!-- <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" /> -->
      <!-- <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script> -->
      <!-- <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" /> -->

      <!-- include summernote -->
      <!-- <link rel="stylesheet" href="../css/summernote/summernote.css"> -->
      <!-- <script type="text/javascript" src="../css/summernote/summernote.js"></script> -->

      <!-- <script type="text/javascript"> -->
        <!-- $(function() { -->
          <!-- $('.summernote').summernote({ -->
            <!-- height: 200 -->
          <!-- }); -->

          <!-- $('form').on('submit', function (e) { -->
            <!-- e.preventDefault(); -->
            <!-- alert($('.summernote').code()); -->
          <!-- }); -->
        <!-- }); -->
      <!-- </script> -->

    <style>
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
        .garistepi{
            border: solid 1px grey;
            margin: 20px 20px 10px 40px;
            padding: 20px;
            border-radius: 20px;
        }
        .garis {
            border: solid 1px grey;
            padding-top: 7px;
            padding-bottom: 7px;
            padding-left: 5px;
            border-radius: 10px;
            font-family: Quicksand, sans-serif;
        }
        input, table, select {
            width: 100%;
        }
        input[type=text]{
            font-size: 16px;
            font-family: Quicksand, sans-serif;
            border-radius: 5px;
        }
        select, input[type=text]{
            padding: 5px;
            font-size: 16px;
            font-family: Quicksand, sans-serif;
            border-radius: 5px;
        }
        input[type=submit],input[type=reset], button {
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
        input[type=submit],input[type=reset] {
            font-family: sans-serif;
            font-size: 15px;
            background: #22a4cf;
            color: white;
            border: white 3px solid;
            border-radius: 5px;
            padding: 12px 20px;
            margin-top: 10px;
            width: 250px;
        }
        input[type=submit]:hover, input[type=reset]:hover{
            opacity:0.9;
        }
        .tampilan{
        border: solid 1px grey;
        margin-left: -3px;
        padding-bottom: -15px;
    }
    </style>

</head>
<body>
    <h1 class="text-primary">Pratinjau Berita</h1>
    <hr>
    <form method="POST" action="" enctype="multipart/form-data">
        <div class="garistepi">

            <input type="hidden" name="penulis" value="<?= $edit["penulis"]; ?>">
            <input type="hidden" name="id" value="<?= $edit["id"]; ?>"> <!-- Untuk post ID -->

            <label for="judul">Title:</label>
            <input type="text" required="" name="judul" id="judul" value="<?=$edit['judul']?>"><br><br>

            <label for="gambar">Gambar:</label>
            <div class="tampilan">
            <img class="tampilan" src="../penulis/img_post/<?= $edit["gambar"]  ?>" width="40%" id="gambarlama"><br><br>
            <input type="hidden" name="gambar" value="<?= $edit["gambar"]; ?>">
            </div>

            <!-- <label for="info_kategori">Kategori:</label><br>
            <select name="info_kategori" id="info_kategori">
                <?php foreach ($kategori as $row) : ?>
                <option><?= $row['namakategori'] ?></option>
                <?php endforeach ?>
            </select><br><br> -->

            <label for="isi">Content :</label>
            <textarea required="" id="ckeditor" class="ckeditor" name="ckeditor"><?=$edit['isi']?></textarea><br><br>
            <label for="catatan">Catatan :</label><br><br>
            <textarea id="catatan" class="catatan" name="catatan"><?= $edit['catatan'] ?></textarea><br><br>
            <button name="back">Batal</button>
            <button name="simpan">Simpan</button>
            <input type="submit" name="submit" value="Reject">
            <button name="acc">Accept</button>
        </div>
    </form>
</body>
</html>