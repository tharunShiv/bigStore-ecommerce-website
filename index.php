<?php

session_start();

if (!isset($_SESSION['logged_in'])) {
  $nav ='includes/nav.php';
}
else {
  $nav ='includes/navconnected.php';
  $idsess = $_SESSION['id'];
}


require 'includes/header.php';
require $nav; ?>


<!-- <div class="container-fluid">
  <div class="carousel ">
      <a class="carousel-item" href="#one!"><img src="src/img/carousel-1.jpg"></a>
      <a class="carousel-item" href="#two!"><img src="src/img/carousel-2.jpg"></a>
      <a class="carousel-item" href="#three!"><img src="src/img/carousel-3.jpg"></a>
      <a class="carousel-item" href="#four!"><img src="src/img/carousel-4.jpg"></a>
      <a class="carousel-item" href="#five!"><img src="src/img/carousel-5.jpg"></a>
    </div>
</div> -->

<div class="container-fluid home" id="top">
  <div class="container search">
    <nav class="animated slideInUp wow">
      <div class="nav-wrapper">
        <form method="GET" action="search.php">
          <div class="input-field">
            <input id="search" class="searching" type="search" name='searched' required>
            <label for="search"><i class="material-icons">search</i></label>
            <i class="material-icons">close</i>
          </div>

          <div class="center-align">
            <button type="submit" name="search" class="blue waves-light miaw waves-effect btn hide">Search</button>
          </div>
        </form>
      </div>
    </nav>
  </div>
</div>

<div class="container most">
  <div class="row">
    <?php

     include 'db.php';

    $queryfirst = "SELECT

   product.id as 'id',
   product.name as 'name',
   product.price as 'price',
   product.thumbnail as 'thumbnail',

    SUM(command.quantity) as 'total',
    command.statut,
    command.id_produit

    FROM product, command
    WHERE product.id = command.id_produit
    GROUP BY product.id
    ORDER BY SUM(command.quantity) ASC LIMIT 8";
    $resultfirst = $connection->query($queryfirst);
    if ($resultfirst->num_rows > 0) {
      // output data of each row
      while($rowfirst = $resultfirst->fetch_assoc()) {

            $id_best = $rowfirst['id'];
            $name_best = $rowfirst['name'];
            $price_best = $rowfirst['price'];
            $thumbnail_best = $rowfirst['thumbnail'];
            $totalsold = $rowfirst['total'];

            ?>

            <div class="col s12 m4 l3">
              <div class="card hoverable animated slideInUp wow">
                <div class="card-image">
                  <a href="product.php?id=<?= $id_best;  ?>"><img class="display_tns thumbnail" src="products/<?= $thumbnail_best; ?>"></a>
                  <span class="card-title red-text"><?= $name_best; ?></span>
                  <a href="product.php?id=<?= $id_best; ?>" class="btn-floating red halfway-fab waves-effect waves-light right"><i class="material-icons">add</i></a>
                </div>
                  <div class="card-content">
                    <div class="container">
                      <div class="row">
                        <div class="col s6">
                          <p class="white-text"><i class="left fa fa-dollar"></i> <?= $price_best; ?></p>
                        </div>
                        <div class="col s6">
                          <p class="white-text"><i class="left fa fa-shopping-basket"></i> <?= $totalsold; ?></p>
                        </div>
                      </div>
                    </div>

                  </div>

                </div>
              </div>
              <?php }} ?>


            </div>
          </div>

          <div class="container banner-1">
          </div>
        
          <div class="container-fluid center-align categories">
            <a href="#category" class="button-rounded btn-large waves-effect waves-light">Categories</a>
            <div class="container" id="category">
              <div class="row">
                <?php

                //get categories
                $querycategory = "SELECT id, name, icon  FROM category";
                $total = $connection->query($querycategory);
                if ($total->num_rows > 0) {
                  // output data of each row
                  while($rowcategory = $total->fetch_assoc()) {
                    $id_category = $rowcategory['id'];
                    $name_category = $rowcategory['name'];
                    $icon_category = $rowcategory['icon'];

                    ?>

                    <div class="col s12 m4">
                      <div class="card hoverable animated slideInUp wow">
                        <div class="card-image">
                          <a href="category.php?id=<?= $id_category; ?>"><img src="src/img/<?= $icon_category; ?>.png" alt=""></a>
                          <span class="card-title black-text"><?= $name_category; ?></span>
                        </div>
                      </div>
                    </div>

                    <?php }} ?>
                  </div>
                </div>
              </div>

            <div class="container banner-2">
            </div>

              <div class="container-fluid about" id="about">
                <div class="container">
                  <div class="row">
                    <div class="col s12 m6">
                      <div class="card animated slideInUp wow">
                        <div class="card-image">
                          <img src="src/img/about.jpg" alt="">
                        </div>
                      </div>
                    </div>

                    <div class="col s12 m6">
                      <h3 class="animated slideInUp wow">About Us</h3>
                      <div class="divider animated slideInUp wow"></div>
                      <p class="animated slideInUp wow">Big store is an online platform where you can find steal away deals. The unique thing about our platform is that we don't have any special Big Billion Days once in a year, because each and everyday is a Bigger Billion Day with us. Happy Shopping.</p>
                      </div>

                    </div>
                  </div>
                </div>

                <div class="launching">
                </div>
                <div class="container contact" id="contact">
                  <h3> Contact Us </h3>
                  <div class="row">
                    <form class="col s12 animated slideInUp wow">
                      <div class="row">
                        <div class="input-field col s12 m6">
                          <i class="material-icons prefix">account_circle</i>
                          <input id="icon_prefix" type="text" class="validate">
                          <label for="icon_prefix">Full Name</label>
                        </div>
                        <div class="input-field col s12 m6">
                          <i class="material-icons prefix">email</i>
                          <input id="email" type="email" class="validate">
                          <label for="email" data-error="wrong" data-success="right">Email</label>
                        </div>



                        <div class="input-field col s12 ">
                          <i class="material-icons prefix">message</i>
                          <textarea id="icon_prefix2" class="materialize-textarea" type="text" name="message" rows="8" style="resize: vertical;min-height: 16rem;" required></textarea>
                          <label for="icon_prefix2">Your message</label>
                        </div>

                        <div class="center-align">
                          <button type="submit" name="contact" class="button-rounded btn-large waves-effect waves-light">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>

                <!-- <script type="application/javascript">
                document.addEventListener('DOMContentLoaded', function() {
                var elems = document.querySelectorAll('.carousel');
                var instances = M.Carousel.init(elems, options);
                });

                // Or with jQuery

                $(document).ready(function(){
                  $('.carousel').carousel();
                });
                </script> -->

                <?php
                require 'includes/secondfooter.php';
                require 'includes/footer.php'; ?>
