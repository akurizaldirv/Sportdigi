<?php 
session_start();
include('cekpenulis.php');
require '../functions.php';
$username = $_SESSION["username"];
$datauser = query("SELECT*FROM user WHERE username = '$username'")[0];
if ( isset($_POST["submit"]) ){
    echo "<script>
    document.location.href ='edit-profile.php';
    </script>";
    // if (ubahuser($_POST)>0){
    //     echo "
    //     <script>
    //     alert ('data berhasil di ubah');
    //     document.location.href ='kategori.php';
    //     </script>
    //     ";
    // }else{
    //     echo"
    //     <script>
    //     alert ('data gagal di ubah');
    //     </script>
    //     ";
    // }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Edit Profile</title>
</head>

<body>
    <div class="bootstrap snippets bootdey">
        <h1 class="text-primary" style="margin-left: 40px;">Info Profile</h1>
        <hr>
        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center">
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">
                <!-- <h3>Info Profile</h3> -->

                <form class="form-horizontal" role="form" method="post" action="">
                    <input type="hidden" name="username" value="<?= $username; ?>">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Nama :</label>
                        <div class="col-lg-8">
                            <input class="form-control" readonly="True" type="text" name="nama" value="<?= $datauser["nama"]; ?>" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tanggal Lahir :</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="tgl" value="<?=$datauser['tanggal']?>" type="date" readonly="True">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">No. HP :</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="nohp" type="text" readonly="True" value="<?=$datauser['nohp']?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" >Email :</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="email" type="email" value="<?= $datauser["email"]; ?>" readonly="True">
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Edit Profile</button>
                </form>
            </div>
        </div>
    </div>
    <hr>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>