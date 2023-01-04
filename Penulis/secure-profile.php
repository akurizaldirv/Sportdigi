<?php 
session_start();
include('cekpenulis.php');
require '../functions.php';
$username = $_SESSION["username"];
$datauser = query("SELECT*FROM user WHERE username = '$username'")[0];
if ( isset($_POST["submit"]) ){
    if (secure($_POST)>0){
        echo "
        <script>
        alert ('data berhasil di ubah. Silahkan login kembali');
        console.log('data berhasil di ubah. Silahkan login kembali');
        window.top.document.location.href ='logout.php';
        </script>
        ";

    }else{
        echo"
        <script>
        alert ('data gagal di ubah');
        document.location.href ='secure-profile.php';
        </script>
        ";
    }
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
        <h1 class="text-primary" style="margin-left: 40px;">Edit Profile</h1>
        <hr>
        <div class="row">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center">
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">
                <!-- <h3>Biodata</h3> -->

                <form class="form-horizontal" role="form" method="post" action="">
                    <input type="hidden" name="id" value="<?= $datauser['id']; ?>">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username Baru :</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" name="new-uname" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Password Baru :</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="new-pass" type="password" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Confirm Password :</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="conf-pass" type="password" required>
                        </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary btn-lg btn-block" name="submit">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <hr>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>