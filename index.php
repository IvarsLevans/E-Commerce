<?php
    ob_start();
    // include header.php file
    include ('header.php');
?>

<?php

    /*  include banner area  */
        include ('./components/banner-area.php');
    /*  include banner area  */
    
    /*  include new phones section  */
    include ('./components/new-arrivals.php');
    /*  include new phones section  */

    /*  include top sale section */
        include ('./components/popular.php');
    /*  include top sale section */

?>


<?php
// include footer.php file
include ('footer.php');
?>