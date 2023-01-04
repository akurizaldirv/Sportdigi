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
if($_SESSION['level']!="Editor")
{
    echo "
        <script>
        alert ('Anda Bukan Editor');
        document.location.href ='../Login/index.php';
        </script>
        ";
}
?>