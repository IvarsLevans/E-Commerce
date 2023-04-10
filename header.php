<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Mobile Shopee</title>

    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@latest/dist/tailwind.min.css" rel="stylesheet">
    
    <!-- Owl-carousel CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

    <!-- Custom CSS file -->
    <link rel="stylesheet" href="style.css">

    <?php
    // require functions.php file
    require ('functions.php');
    ?>

</head>
<body>

<header id="header">
  <!-- Primary Navigation -->
  <nav class="navbar bg-gray-800">
    <div class="navbar-menu">
      <a class="navbar-brand text-white" href="#">Levanto.</a>
      <ul class="navbar-nav font-rubik">
        <li class="nav-item text-white">
          <a class="nav-link" href="#">On Sale</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="#">Category</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="#">Products <i class="fas fa-chevron-down"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="#">Category <i class="fas fa-chevron-down"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="#">Coming Soon</a>
        </li>
      </ul>
      <div class="cart-container">
        <a href="cart.php" class="py-2 px-3 rounded-full bg-blue-600 inline-flex items-center">
          <span class="cart-icon text-white"><i class="fas fa-shopping-cart"></i></span>
          <span class="cart-count"><?php echo count($product->getData('cart')); ?></span>
        </a>
      </div>
    </div>
  </nav>
  <!-- !Primary Navigation -->
</header>

<!-- start #main-site -->
<main id="main-site">
