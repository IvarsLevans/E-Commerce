<?php
ob_start();
// include header.php file
include ('header.php');
?>

<?php

    /*  include cart items if it is not empty */
        count($product->getData('cart')) ? include ('./components/cart-template.php') :  include ('./components/notFound/cart_notFound.php');
    /*  include cart items if it is not empty */

    /*  include top sale section */
        include ('./components/new-arrivals.php');
    /*  include top sale section */

?>

<?php
// include footer.php file
include ('footer.php');
?>


