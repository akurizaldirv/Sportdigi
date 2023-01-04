<?php

//require '../functions.php';//parameter koneksi, 

$error=''; 
if(isset($_POST['submit']))
{               
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    $result = query("SELECT * FROM user WHERE username = '$username'");
    // var_dump($result);
    // var_dump(count($result));
    // $result = $result[0];
    // var_dump($result);
    if (count($result)==1){
        $row = $result[0];
        if (password_verify($password, $row["password"])){
            $_SESSION['username']=$row['username'];
            $_SESSION['level'] = $row['level'];
            
            if($row['level'] == "Administrator"){
                
                header("Location: ../Admin/index.php");
            }else if($row['level'] =="Editor")
            {
                header("Location: ../Editor/index.php");
            }else if($row['level'] == "Penulis"){
                header("Location: ../Penulis/index.php");
            }
        }else{
            echo"<script>
    alert('Username / Password Salah');
    window.location.href = 'index.php';
    </script>
    ";
        }
    } 
}           
?>