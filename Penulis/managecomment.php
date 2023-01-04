<?php 
session_start();
include('cekpenulis.php');
require '../functions.php';//parameter koneksi, 

$username = $_SESSION['username'];

$komentar = query("SELECT * FROM komentar WHERE penulis = '$username'");


?>

<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Manage Comment</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
       form{
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
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
    </style>
    <body>
    	<h1 class="text-primary">Komentar Dari Pengguna</h1>
        <hr>
        <form method="POST" action="">
        	<div>
        		<table class="tablesetting">
	               <tr>
	                   <th>No.</th>
	                   <th>Nama</th>
	                   <th>Email</th>
	                   <th>Comment</th>
	                   <th>Post</th>
                       <th>Date Post</th>
	               </tr> 
                   <?php $i = 1; ?>
                        <?php foreach ($komentar as $row) :?>
                        <tr>
                            <td><?= $i; ?></td>
                            <td><?=$row["Nama"]  ?></td>
                            <td><?=$row["Email"]  ?></td>
                            <td><?=$row["Comment"]  ?></td>
                            <td>

                                <?php 
                                    $id = $row['Post'];
                                    $judul = query("SELECT * FROM beritapenulis WHERE id = '$id'")[0]['judul'];
                                    // var_dump($judul);
                                    echo "$judul";
                                 ?>

                            </td>
                            <td><?=$row["DatePost"]?></td>

                        </tr>
                        <?php $i++; ?>
                        <?php endforeach; ?>
                </table>



        	</div>

        </form>




    </body>
</head>
</html>