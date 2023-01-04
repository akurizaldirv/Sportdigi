<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
		<title>Sidebar Dashboard Template With Sub Menu</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
	</head>
	<body>

		<!--wrapper start-->
		<div class="wrapper">
			<!--header menu start-->
			<div class="header">
				<div class="header-menu">
					<div class="title">Halaman <span>Penulis</span></div>
					<div class="sidebar-btn">
						<i class="fas fa-bars"></i>
					</div>
					<ul>
						<li><a href="#"><i class="fa fa-sign-out"></i></a></li>
					</ul>
				</div>
			</div>
			<!--header menu end-->
			<!--sidebar start-->
			<div class="sidebar">
				<div class="sidebar-menu">
					<center class="profile">
						<img src="user.png" alt="">
						<p>Penulis</p>
					</center>
					<li class="item">
						<a href="dashboard.php" class="menu-btn">
							<i class="fas fa-desktop"></i><span>Dashboard</span>
						</a>
					</li>
					<li class="item" id="profile">
						<a href="#profile" class="menu-btn">
							<i class="fas fa-user-circle"></i><span>Profile <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="#"><i class="fas fa-address-card"></i><span>Info</span></a>
						</div>
					</li>
					<li class="item" id="berita">
						<a href="#berita" class="menu-btn">
							<i class="fa fa-newspaper-o"></i><span>Berita<i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="#"><i class="fas fa-book"></i><span>Management Berita</span></a>
							<a href="#"><i class="far fa-list-alt"></i><span>Daftar Berita</span></a>
						</div>
					</li>
					<li class="item" id="komentar">
						<a href="#komentar" class="menu-btn">
							<i class="fa fa-comment"></i><span>Komentar<i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="managecomment.php"><i class="fa fa-comments"></i><span>Koemntar Pengguna</span></a>
						</div>
					</li>
					<li class="item" id="settings">
						<a href="#settings" class="menu-btn">
							<i class="fas fa-cog"></i><span>Settings <i class="fas fa-chevron-down drop-down"></i></span>
						</a>
						<div class="sub-menu">
							<a href="#"><i class="fas fa-lock"></i><span>Password</span></a>
						</div>
					</li>
					<li class="item">
						<a href="#" class="menu-btn">
							<i class="fas fa-info-circle"></i><span>About</span>
						</a>
					</li>
				</div>
			</div>
			<!--sidebar end-->
			<!--main container start-->
			<div class="main-container">
				<div class="card">
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
				<div class="card">
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
				<div class="card">
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
				</div>
			</div>
			<!--main container end-->
		</div>
		<!--wrapper end-->

		<script type="text/javascript">
		$(document).ready(function(){
			$(".sidebar-btn").click(function(){
				$(".wrapper").toggleClass("collapse");
			});
		});
		</script>

	</body>
</html>

<?php 
session_start();
// if (!isset($_SESSION["login"])){
//     header("Location: ../login.php");
//     exit;
// }  
?>

<ul>
        <li class="has_sub"><a href="dashboard.php" target="isi" class="waves-effect"><i class="mdi mdi-view-dashboard"></i><span> Dashboard </span></a></li>
        <li><a href="kategori.php" target="isi" class="waves-effect"><i class="mdi mdi-view-list"></i><span> Category</span></a></li>
        <li><a href="post.php" target="isi" class="waves-effect"><i class="mdi mdi-file"></i>Post</a></li>
        <li><a href="managecomment.php" target="isi" class="waves-effect"><i class="mdi mdi-comment"></i><span> Comment</span></a></li>
        <li><a href="changepas.php" target="isi" class="waves-effect"><i class="mdi mdi-key-change"></i><span>Change Password</span></a></li>
        <li><a href="logout.php" target=_top class="waves-effect"><i class="mdi mdi-logout"></i><span>Logout</span></a></li>
    </ul>