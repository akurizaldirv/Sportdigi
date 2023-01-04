<?php 
session_start();
require '../functions.php';
if($_SESSION){
    if($_SESSION['level']=="Administrator")
    {
        header("Location: ../Admin/index.php");
    }
    if($_SESSION['level']=="Editor")
    {
        header("Location: ../Editor/index.php");
    }
    if($_SESSION['level']=="Penulis")
    {
        header("Location: ../Penulis/index.php");
    }
}
if(isset($_POST["register"])){
  if (regristrasi($_POST)>0){
    echo"<script>
    alert('user baru berhasil di tambahkan');
    </script>
    ";
  }else{
    echo mysqli_error($conn);;
  }
}

include ('login.php');

 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="styles.css" />
    <title>Login - Sign Up</title>
  </head>
  <body>
    <!-- Container -->
    <div class="container" id="container">
      <!-- Row -->
      <div class="row">
        <!-- Sign Up -->
        <div class="col align-center flex-col sign-up">
          <div class="form-wrapper align-center">
            <form class="form sign-up" method="post" action="">
              <div class="input-group">
                <i class="bx bx-user"></i>
                <input type="text" name="nama" placeholder="Full Name" />
              </div>
              <div class="input-group">
                <i class="bx bxs-user"></i>
                <input type="text" name="username" placeholder="Username" />
              </div>
              <div class="input-group">
                <i class="bx bx-mail-send"></i>
                <input type="email" name="email" placeholder="Email" />
              </div>
              <div class="input-group">
                <i class="bx bxs-lock-alt"></i>
                <input type="password" name="password" placeholder="Password" />
              </div>
              <div class="input-group">
                <i class="bx bxs-lock-alt"></i>
                <input type="password" name="password2" placeholder="Confirm password" />
              </div>
              <button type="submit" name="register">Sign up</button>
              <p>
                <span>Already have an account?</span>
                <b id="sign-in">Sign in here</b>
              </p>
            </form>
          </div>
        </div>
        <!-- End Sign Up -->
        <!-- Sign In -->
        
        <div class="col align-center flex-col sign-in">
          <div class="form-wrapper align-center">
            <div class="form sign-in">
            <form method="post" action="">
              <div class="input-group">
                <i class="bx bxs-user"></i>
                <input type="text" name="username" placeholder="Username" />
              </div>
              <div class="input-group">
                <i class="bx bxs-lock-alt"></i>
                <input type="password" name="password"placeholder="Password" />
              </div>
              <button type="submit" name="submit">Sign in</button>
              <?php echo $error; ?>
              <p>
                <b>Forgot password?</b>
              </p>
              <p>
                <span> Don't have an account? </span>
                <b id="sign-up">Sign up here</b>
              </p>
            </div>
          </div>
        </div>

        <!-- End Sign In -->
      </div>
      </form>
      <!-- End Row -->
      <!-- Content Section -->
      <div class="row content-row">
        <!-- Sign In Content -->
        <div class="col align-items flex-col">
          <div class="text sign-in">
            <h2>Welcome To  </h2>
            <p>
              Sportdigi Company
            </p>
          </div>
          <div class="img sign-in">
            <img src="images/bg1.svg" alt="" />
          </div>
        </div>

        <!-- Sign Up Content -->
        <div class="col align-items flex-col">
          <div class="img sign-up">
            <img src="images/bg2.svg" alt="" />
          </div>
          <div class="text sign-up">
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- End Container -->

    <!-- Script -->
    <script src="index.js"></script>
  </body>
</html>
