 <?php 

require 'functions.php';//parameter koneksi, 

$keyword = $_GET['keyword'];
// konfigurasi pagination
$jumlahBeritaPerhalaman = 3;
$jumlahBerita = count(query("SELECT * FROM postingan WHERE isi LIKE '%$keyword%'"));
$jumlahHalaman = ceil($jumlahBerita / $jumlahBeritaPerhalaman);
$halamanAktif = ( isset($_GET["halaman"]) ) ? $_GET["halaman"] : 1;
$halamanAktif = intval($halamanAktif);
$awalBerita = ( $jumlahBeritaPerhalaman * $halamanAktif ) - $jumlahBeritaPerhalaman;
// var_dump($halamanAktif);
// var_dump($awalBerita);
// var_dump($jumlahBeritaPerhalaman);
// var_dump($jumlahBerita);
$kategori = query("SELECT * FROM kategori");
$postingan = query("SELECT * FROM postingan WHERE isi LIKE '%$keyword%' ORDER BY id DESC LIMIT $awalBerita, $jumlahBeritaPerhalaman");
$popular = query("SELECT * FROM postingan ORDER BY views DESC");

// var_dump($postingan);
if (isset($_POST["cari"])) {
    // // $postingan = cari($_POST["keyword"]);
    $keyword = $_POST['keyword'];
    // $postingan = query("SELECT * FROM postingan WHERE isi LIKE $keyword");
    // var_dump($keyword);
    header("Location: TampilSearch.php?keyword=$keyword");
}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    <title>Sportdigi</title>
    <link rel="stylesheet" href="css/style.css">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: gainsboro;">
     
    <div class="badan-utama">  
        <header>
            <img class="navbar-brand" src="img/logo.png" class="logo" width="300px" style="padding: 0;display: block;margin-left: auto;margin-right: auto;">
        </header>
        <form action="" method="post">
            <ul class="khususul">
                <li><a href="index.php">Home</a></li>
                <li class="dropdownn"><a href="#1" class="dropbtn">Kategori</a>
                    <div class="dropdown-content">
                        <?php foreach ($kategori as $row) :?>
                        <a href="tampilkategori.php?id=<?=$row['id']?>"><?=$row["namakategori"]  ?></a>
                        <?php endforeach; ?>
                    </div>
                </li>
                <li class="admin"><a class="khususa" href="Login/index.php"><img src="img/user.png" width="25px"></a></li>
                <li class="admin" style="margin-top: 5px;">
                    <button type="submit" name="cari" class="btn btn-secondary" >Search</button>
                </li>
                <li class="admin" style="margin-top: 5px;">
                        <input type="text" name="keyword" class="form-control" placeholder="Search here ..." autofocus placeholder="masukan keyword pencarian" autocomplete="off">        
                </li>  
            </ul>
        </form>
 
        <div class="container">
     
<div class="content">
      <div class="left" id="left">
        <h3 style="text-align: center;">Artikel Popular</h3>
        <ul>
        <?php
        // var_dump($popular);
        $showpop = [];
        // print(count($popular));
        if (count($popular) > 3) {
            for ($i=0; $i < 3 ; $i++) { 
                $showpop[$i] = $popular[$i];
                            }
            
        } else {
            $showpop = $popular;
        }
        // var_dump($showpop);
        // print(count($showpop));
        foreach ($showpop as $row) :
        ?>
            <li><a href="tampilpost.php?id=<?= $row['id'] ?>" class="active"><?= $row['judul'] ?></li>
        <?php endforeach; ?>
        </ul>
      </div>
      <div class="row">
        <!-- Blog Entries Column -->
            <?php foreach ($postingan as $row) : ?>
            <div class="card my-4">
                <img class="card-img-top" style="display: block;margin-left: auto;margin-right: auto;width: 70%;" src="penulis/img_post/<?= $row['gambar'] ?>" alt="<?= $row['judul']; ?>">
                <div class="card-body">
                    <h2 class="card-title"><?= $row['judul']; ?></h2>
                    <?php 
                        $idKategori = $row['info_kategori'];
                        $namakategori = query("SELECT * FROM kategori WHERE id = '$idKategori'")[0]['namakategori'];
                     ?>
                    <p><b>Category : </b> <a href="tampilkategori.php?id=<?=$idKategori?>"><?= $namakategori  ?></a> </p></a> </p>
                    <p>
                         <?php 
                            $a = $row['isi'];
                            // echo $a;
                            if (strlen($a) > 250) {
                                echo substr($a, 0, 250), " (...)";
                            } else {
                                echo $a;
                            }
                        ?>
                    </p>
                    <a href="tampilpost.php?id=<?=$row['id']?>" class="btn btn-primary">Read More &rarr;</a>
                </div>
                <div class="card-footer text-muted">Posted on <?php echo $row['waktu'];?></div>
            </div>
          <?php endforeach; ?>
      </div>
  </div>
      <!-- bagian pagination -->
    <div class="pagination">
        <?php if($halamanAktif != 1){ 
            $a = $halamanAktif -1;
            echo "<a class='page-link' href='?halaman=$a&keyword=$keyword'>Previous</a>";
        } ?>
        <?php for( $i = 1; $i <= $jumlahHalaman; $i++ ) : ?>
            <?php if($halamanAktif != $i) : ?>
                <a class="page-link" href="TampilSearch.php?halaman=<?= $i;?>&keyword=<?=$keyword; ?>"><?= $i; ?></a>
            <?php else : ?>
                <a class="page-link" href="TampilSearch.php?halaman=<?= $i;?>&keyword=<?=$keyword; ?>"><?= $i; ?></a>
            <?php endif; ?>
        <?php endfor; ?>
        <?php if($halamanAktif < $jumlahHalaman){ 
            $a = $halamanAktif +1;
            echo "<a class='page-link' href='?halaman=$a&keyword=$keyword'>Next</a>";
        } ?>
    </div>
        <footer>
            @copyright 2021
        </footer>
 
    </div>
 
 <script>
window.onscroll = function() {myFunction()};

var left = document.getElementById("left");
var sticky = left.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    left.classList.add("sticky")
  } else {
    left.classList.remove("sticky");
  }
}
</script>
</body>
</html>