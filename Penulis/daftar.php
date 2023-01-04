<?php 
session_start();
include('cekpenulis.php');
require '../functions.php';
// $id = $_GET["id"];
$username = $_SESSION["username"];
$datauser = query("SELECT*FROM user WHERE username = '$username'")[0];
// var_dump($datauser);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Daftar</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script> -->
    <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>
<body>
      <!--wrapper start-->
        <div class="wrapper">
            <!--sidebar start-->
            <div class="sidebar">
                <div class="sidebar-menu">
                    <center class="profile">
                        <img src="user.png" alt="">
                        <p><?= $datauser["nama"]; ?></p>
                    </center>
                    <li class="item">
                        <a href="dashboard.php" target="isi" class="menu-btn">
                            <i class="fas fa-desktop"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li class="item" id="profile">
                        <a href="#profile"class="menu-btn">
                            <i class="fas fa-user-circle"></i><span>Profile <i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="show-profile.php" target="isi" ><i class="fas fa-address-card"></i><span>Info</span></a>
                            <a href="edit-profile.php" target="isi" ><i class="fas fa-address-card"></i><span>Edit</span></a>
                            <!-- <a href="secure-profile.php" target="isi" ><i class="fas fa-address-card"></i><span>Security</span></a> -->
                        </div>
                    </li>
                    <li class="item" id="berita">
                        <a href="#berita"class="menu-btn">
                            <i class="fa fa-newspaper-o"></i><span>Berita<i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="berita.php" target="isi"><i class="fas fa-book"></i><span>Tulis Berita</span></a>
                            <a href="daftarberita.php" target="isi"><i class="far fa-list-alt"></i><span>Daftar Berita</span></a>
                        </div>
                    </li>
                    <li class="item" id="komentar">
                        <a href="#komentar" class="menu-btn">
                            <i class="fa fa-comment"></i><span>Komentar<i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="managecomment.php" target="isi"><i class="fa fa-comments"></i><span>Komentar Pembaca</span></a>
                        </div>
                    </li>
                    <li class="item" id="settings">
                        <a href="#settings" class="menu-btn">
                            <i class="fas fa-cog"></i><span>Settings <i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="changepas.php" target="isi"><i class="fas fa-lock"></i><span>Password</span></a>
                        </div>
                    </li>
                </div>
            </div>
            <!--sidebar end-->
        </div>
</body>
</html>