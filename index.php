<?php
  include 'connection.php';

  $getDataHero = "SELECT * FROM hero where id = 1";
  $queryHero = mysqli_query($connect, $getDataHero);
  $hero = mysqli_fetch_array($queryHero);

  $getDataAbout = "SELECT * FROM about where id = 2";
  $queryAbout = mysqli_query($connect, $getDataAbout);
  $about = mysqli_fetch_array($queryAbout);

  $getDataHistory = "SELECT * FROM history where id = 1";
  $queryHistory = mysqli_query($connect, $getDataHistory);
  $history = mysqli_fetch_array($queryHistory);

  $latestQuote = "SELECT * FROM `daily` ORDER BY id DESC LIMIT 0,1";
  $queryQuote = mysqli_query($connect, $latestQuote);
  $quote = mysqli_fetch_array($queryQuote);

  $latestMateri = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 0,1";
  $queryMateri0 = mysqli_query($connect, $latestMateri);
  $materi0 = mysqli_fetch_array($queryMateri0);

  $latestMateri1 = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 1,1";
  $queryMateri1 = mysqli_query($connect, $latestMateri1);
  $materi1 = mysqli_fetch_array($queryMateri1);

  $latestMateri2 = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 2,1";
  $queryMateri2 = mysqli_query($connect, $latestMateri2);
  $materi2 = mysqli_fetch_array($queryMateri2);

  $latestMateri3 = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 3,1";
  $queryMateri3 = mysqli_query($connect, $latestMateri3);
  $materi3 = mysqli_fetch_array($queryMateri3);

  $latestMateri4 = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 4,1";
  $queryMateri4 = mysqli_query($connect, $latestMateri4);
  $materi4 = mysqli_fetch_array($queryMateri4);

  $latestMateri5 = "SELECT * FROM `materi` ORDER BY id DESC LIMIT 5,1";
  $queryMateri5 = mysqli_query($connect, $latestMateri5);
  $materi5 = mysqli_fetch_array($queryMateri5);

?>




          <!DOCTYPE html>
          <html lang="en">
          <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>DENSETSU</title>

            <!-- --------- Unicons Icons --------- -->
            <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
            <link rel="shortcut icon" href="favicon.SVG" type="image/SVG+xml">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

            <!-- --------- CSS Files --------- -->
            <link rel="stylesheet" href="./css/style.css">
          </head>
          <body>
            <header>
              
              <div class="lines">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
              </div>

              <main>
                <nav>
                  <div>
                    <a href="index.html" class="brand">
                      DENSETSU.
                    </a>
                  </div>

                  <div class="container">
                    <ul>
                      <li><a href="index.html" class="link-active">Home</a></li>
                      <li><a href="index.html">About</a></li>
                      <li><a href="index.html">Productivity</a></li>
                      <li>
                        <a href="#">
                          <!-- <i class="uil uil-shopping-cart-alt"></i> -->
                        </a>
                      </li>
                    </ul>
                  </div>

                  <div class="log">
                    <a href="">Sign Up</a>
                  </div>

                  <div class="gambar-log">
                    <img src="/img_land/user (1) 1.svg" alt="">
                  </div>
                </nav>

                <div class="eclipse1">
                  <div></div>
                </div>

                <div class="left-square">
                  <div></div>
                </div>

                <div class="sq">
                  <div></div>
                </div>

                <div class="sq-tmb">
                  <div></div>
                </div>
                
                <div>
                  <h1 class="jud">
                    <?php echo $hero['Hero']?>
                  </h1>
                  <p class="par">
                    <?php echo $hero['Sub_text']?>
                  </p>
                  <a href="" class="let">
                    Let's Explore 
                  </a>
                </div>
                <div class="eclip1">
                  <div></div>
                </div>
                <div class="eclip2">
                  <div></div>
                </div>
                <div class="eclip3">
                  <div></div>
                </div>
                <div class="eclip4">
                  <img src="<?php echo $hero['img_dir']?>" alt="">
                </div>



           



                <div class="article">
                  <div class="lines">
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                  </div>
    
                  <div></div>

                  <h1 class="latest">
                    Latest Article.
                  </h1>
                  <p class="ins">
                    For Intestellar
                  </p>
                  <div class="sub">
                    <div></div>
                  </div>


              
                  <div class="container-card">
                    
                    <div class="card">
                      <div class="wrapper">
                        <div class="border"></div>
                        <div class="main-element"></div>
                      </div>
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi0['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi0['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi0['Title'])?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi0['Desk'] ?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div> <a href=<?php echo "content.php?id=$materi0[id]"?>><img src="./img_land/Vector.svg" alt=""></a> </div>
                    </div>
                  </div>


                  <div class="container-card1">
                    <div class="card">
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi1['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi1['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi1['Title'])?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi1['Desk']?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div><a href=<?php echo "content.php?id=$materi1[id]" ?>><img src="./img_land/Vector.svg" alt=""></a></div>
                    </div>
                  </div>


                  <div class="container-card2">
                    <div class="card">
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi2['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi2['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi2['Title'])?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi2['Desk']?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div><a href=<?php echo "content.php?id=$materi2[id]"?>><img src="./img_land/Vector.svg" alt=""></a></div>
                    </div>
                  </div>



                  <div class="container-card3">
                    <div class="card">
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi3['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi3['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi3['Title'])?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi3['Desk']?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div> <a href=<?php echo "content.php?id=$materi3[id]"?>><img src="./img_land/Vector.svg" alt=""></a> </div>
                    </div>
                  </div>

                  <div class="container-card4">
                    <div class="card">
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi4['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi4['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi4['Title'])?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi4['Desk']?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div> <a href=<?php echo "content.php?id=$materi4[id]"?>><img src="./img_land/Vector.svg" alt=""></a></div>
                    </div>
                  </div>

                  <div class="container-card5">
                    <div class="card">
                    </div>
  
                    <div>
                      <img class="im" src="<?php echo $materi5['img_dir']?>" alt="">
                    </div>
  
                    <div class="strip">
                      <div></div>
                    </div>
  
                      <p class="his">
                        History from <?php echo $materi5['Country']?>
                      </p>

                    
                      <h2 class="rev">
                        <?php echo strtoupper($materi5['Title']) ?>
                      </h2>

                      <p class="pr" style="overflow: hidden; height: 90px;">
                        <?php echo $materi5['Desk']?>
                      </p>
                    
                      <div class="liner">
                        <div></div>
                      </div>
  
                    <div class="btn-n">
                      <div><a href=<?php echo "content.php?id=$materi5[id]"?>><img src="./img_land/Vector.svg" alt=""></a></div>
                    </div>
                  </div>


                  <div class="src">
                    <div class="search-box">
                      <input class="input" type="text" placeholder=" "/><span></span>
                    </div>
                  </div>

                  <!-- About -->

                <div class="about">
                  <div></div>
                  
                  <div>
                    <h1 class="abouts">
                      <?php echo $about['Hero']?>
                    </h1>
                  </div>

                  <div class="sub-2">
                    <div></div>
                  </div>

                  <div class="brd">
                    <div></div>
                  </div>

                  <div class="pars">
                    <p class="par2" style="line-height: 20px;"><?php echo $about['sub_text']?></p>
                  </div>

                  <div class="pars">
                    <p class="par3" style="line-height: 20px;"><?php echo $about['li_1'] ?></p>
                  </div>

                  <div class="pars">
                    <p class="par4" style="line-height: 20px;"><?php echo $about['li_2']?></p>
                  </div>

                  <div class="el1">
                    <div></div>
                  </div>

                  <div class="el2">
                    <div></div>
                  </div>

                  <div class="conb">
                    <div> <img src="<?php echo $about['img_dir']?>" alt=""> </div>
                  </div>

                  <div class="rect">
                    <div></div>
                  </div>

                  <div class='ripple-background'>
                    <div class='circle xxlarge shade1'></div>
                    <div class='circle xlarge shade2'></div>
                    <div class='circle large shade3'></div>
                    <div class='circle mediun shade4'></div>
                    <div class='circle small shade5'></div>
                  </div>

                </div>
              
                <div class="prod">
                  

                  <div></div>

                  <div>
                    <h1 class="history">
                      <?php echo $history['hero']?>
                    </h1>
                  </div>

                  <div class="linez">
                    <div></div>
                  </div>

                  <div class="parz">
                    <p class="par7" style="line-height: 25px;">
                      <?php echo $history['paraf1']?>
                    </p>
                  </div>

                  <div class="smt">
                    <p class="somes">
                      <?php echo $history['paraf2']?>
                    </p>
                  </div>
                  
                 <div class="rect2">
                  <div> <img src="<?php echo $history['img_dir']?>" alt=""></div>
                 </div>

                 <div class="daily">
                  <div></div>
                  <div>
                    <h1 class="dail" style="width: 600px;">
                      <?php echo $quote['hero']?>
                    </h1>

                    <div class="lin">
                      <div></div>
                    </div>

                    <div>
                      <p class="partz">
                        <?php echo $quote['quotes']?>
                      </p>
                    </div>
                  </div>




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
            
                        <p class="footer-company-name">Copyright © 2021 <strong>DENSETSU</strong> All rights reserved</p>
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
                            <p><a href="mailto:sagar00001.co@gmail.com">DENSETSU@service.com</a></p>
                        </div>
                    </div>
                    <div class="footer-right">
                        <p class="footer-company-about">
                            <span>About the company</span>
                            <strong>DENSETSU</strong> is a place for once learn about history of the world while being entertained
                        </p>
                        <div class="footer-icons">
                            <a href="#"><i class="uil uil-facebook"></i></a>
                            <a href="#"><i class="uil uil-instagram-alt"></i></a>
                            <a href="#"><i class="uil uil-twitter"></i></a>
                            <a href="#"><i class="uil uil-youtube"></i></a>
                            <a href="#"><i class="uil uil-github"></i></a>
                        </div>
                    </div>
                </footer>

                 
                  
                </div>
                
                

          



      
      

      


  
            </header>

          


            
            
          </body>

          <script src='https://cdnjs.cloudflare.com/ajax/libs/p5.js/0.10.2/p5.min.js'></script>
          <script  src="./js/script.js"></script>

          </html>