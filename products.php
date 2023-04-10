<?php
    ob_start();
    // include header.php file
    include ('header.php');
?>

<?php

    /*  include special price section  */
         include ('./components/catalog.php');
    /*  include special price section  */
?>


<?php
// include footer.php file
include ('footer.php');
?>