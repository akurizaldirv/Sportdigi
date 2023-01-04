<?php
//cek apakah user sudah login
if(!isset($_SESSION['username'])){
    echo "
        <script>
        alert ('Silahkan login terlebih dahulu');
        document.location.href ='../Login/index.php';
        </script>
        ";

}

//cek level user
if($_SESSION['level']!="Penulis")
{
    echo "
        <script>
        alert ('Silahkan login sebagai penulis!');
        document.location.href ='../Login/index.php';
        </script>
        ";
}
?>