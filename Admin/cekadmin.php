<?php
//cek apakah user sudah login
if(!isset($_SESSION['username'])){
    echo "
        <script>
        alert ('Anda Belum Login');
        document.location.href ='../Login/index.php';
        </script>
        ";
}

//cek level user
if($_SESSION['level']!="Administrator")
{
    echo "
        <script>
        alert ('Anda Bukan Admin');
        document.location.href ='../Login/index.php';
        </script>
        ";
}
?>