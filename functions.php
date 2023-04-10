<?php

// require MySQL Connection
require ('./backend/DBController.php');

require ('./backend/Product.php');

// require Cart Class
require ('./backend/Cart.php');


// DBController object
$db = new DBController();

// Product object
$product = new Product($db);
$product_shuffle = $product->getData();

// Cart object
$Cart = new Cart($db );
