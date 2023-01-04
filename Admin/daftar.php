<?php 
session_start();
include('cekadmin.php');
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
                        <p>Administrator</p>
                    </center>
                    <li class="item">
                        <a href="dashboard.php" target="isi" class="menu-btn">
                            <i class="fas fa-desktop"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <li class="item" id="kategori">
                        <a href="#kategori"class="menu-btn">
                            <i class="fa fa-list-alt"></i><span>Category<i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="kategori.php" target="isi"><i class="fas fa-plus-square"></i><span>Add Category</span></a>
                        </div>
                        <div class="sub-menu">
                            <a href="edkategori.php" target="isi"><i class="fas fa-edit"></i><span>Category List</span></a>
                        </div>
                    </li>
                    <li class="item" id="post">
                        <a href="#post"class="menu-btn">
                            <i class="fa fa-newspaper-o"></i><span>Post<i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="post.php" target="isi"><i class="fas fa-book"></i><span>Daftar Berita</span></a>
                        </div>
                    </li>
                    <li class="item" id="komentar">
                        <a href="#komentar"class="menu-btn">
                            <i class="fa fa-comment"></i><span>Comment<i class="fas fa-chevron-down drop-down"></i></span>
                        </a>
                        <div class="sub-menu">
                            <a href="managecomment.php" target="isi"><i class="fa fa-comments"></i><span>Daftar Komentar</span></a>
                        </div>
                    </li>
                </div>
            </div>
            <!--sidebar end-->
        </div>
</body>
</html>