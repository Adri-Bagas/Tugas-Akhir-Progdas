<?php
    include 'connection.php';

    $id = $_GET['id'];

    $materi = "SELECT * FROM materi WHERE id = '$id'";
    $query = mysqli_query($connect, $materi) ;
    $mate = mysqli_fetch_array($query);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="stylesheet" href="content.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=M+PLUS+1:wght@200;300;400&family=Roboto+Serif:opsz@8..144&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
</head>

<body>
    <div class="navbar">
        <p class="p1"><i class="uil uil-user-circle"></i> DENSETSU</p>       
        <div>
            <a href="" class="item">Article</a>
            <a href="" class="item">Product</a>
            <a href="" class="item">About US</a>
        </div>
        <div class="p2"> <a href="">Login</a></div>
    </div>

    <div class="titlearc">
        <p><strong style="font-size: 25px;"><?php echo $mate['Title']?></strong> <br><br> <?php echo $mate['kategori']?></p>
        <div>
            <a href="" class="redirect"><i class="uil uil-facebook"></i></a>
            <a href="" class="redirect"><i class="uil uil-twitter"></i></a>
            <a href="" class="redirect"><i class="uil uil-instagram-alt"></i></a>
        </div>
    </div>
    <div class="conteks">
        <img src="<?php echo $mate['img_dir']?>" height="450px"
        style="border-radius: 10px;">
        <br>
        <p><?php echo $mate['Desk']; echo $mate['Isi']?></p>
    </div>

    <h2 class="judul">LATEST ARTICLE</h2>
    <div class="container">
    <?php
    $sql = "SELECT * FROM materi ORDER BY id DESC LIMIT 0,6";
    $query1 = mysqli_query($connect, $sql);
    while ($dat = mysqli_fetch_array($query1)){
        echo "
            <div class='card' style='margin: 50px 100px;'>
                <div class='card-image'><img src='$dat[img_dir]' style='width: 175%;' alt=''></div>
                <h2>$dat[Title]</h2>
                <p>$dat[Desk]</p>
                <a href='content.php?id=$dat[id]'>Read More</a>
            </div>
        ";
        
    }
    ?>
    </div>
    <footer>
        <footer class="footer-distributed">

          <div class="footer-left">
              <h3>DENSETSU. </span></h3>
  
              <p class="footer-links">
                  <a href="#">Home</a>
                  |
                  <a href="#">About</a>
                  |
                  <a href="#">Contact</a>
                  |
                  <a href="#">Blog</a>
              </p>
  
              <p class="footer-company-name">Copyright © 2021 <strong>Densetsu</strong> All rights reserved</p>
          </div>
  
          <div class="footer-center">
              <div>
                <i class="uil uil-map-marker"></i>
                  <p><span>DENSETSU.</span>
                      </p>
              </div>
  
              <div>
                <i class="uil uil-phone"></i>
                  <p>+021 223 465</p>
              </div>
              <div>
                <i class="uil uil-envelope"></i>
                  <p><a href="mailto:sagar00001.co@gmail.com">Densetsu@service.com</a></p>
              </div>
          </div>
          <div class="footer-right">
              <p class="footer-company-about">
                  <span>About the company</span>
                  <strong>DENSETSU</strong> is a Education channel where you can find more history
                  and
                  learn about
                  History that has happened in this world and know what the world has happened.
              </p>
              <div class="footer-icons">
                  <a href="#"><i class="uil uil-facebook"></i></a>
                  <a href="#"><i class="uil uil-instagram-alt"></i></a>
                  <a href="#"><i class="uil uil-twitter"></i></a>
                  <a href="#"><i class="uil uil-youtube"></i></a>
                  <a href="#"><i class="uil uil-github"></i></a>
              </div>
          </div>
</body>
</html>
