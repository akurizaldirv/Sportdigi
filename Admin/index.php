<?php 
session_start();
include('cekadmin.php');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Admin Page</title>
        
    </head>

    <frameset rows="10%, *" border="0px">
        <frame name="header" scrolling="no" src="header.php" />
        <frameset cols="18%, *" border="0px">
            <frame name="daftar" scrolling="no" src="daftar.php" />
            <frame name="isi" src="dashboard.php" />
        </frameset>
    </frameset>

</html>