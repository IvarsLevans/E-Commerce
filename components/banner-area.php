<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
</head>

<!-- Owl-carousel -->
<section id="banner-area">
    <div class="owl-carousel owl-theme">
        <div class="item">
            <img src="./assets/Banner1.jpg" alt="Banner1">
        </div>
        <div class="item">
            <img src="./assets/Banner2.jpg" alt="Banner2">
        </div>
        <div class="item">
            <img src="./assets/Banner3.jpg" alt="Banner3">
        </div>
    </div>
</section>
<!-- !Owl-carousel -->

<body>
<script>
$(document).ready(function(){
    // banner owl carousel
    $("#banner-area .owl-carousel").owlCarousel({
        dots: true,
        items: 1,
        autoplay: true,
        autoplayTimeout: 4000, // 2 seconds transition + 2 seconds pause
        autoplayHoverPause: true,
        smartSpeed: 1000, // Duration of the slide transition in milliseconds (2 seconds)
        autoplaySpeed: 2000, // Duration of the autoplay transition in milliseconds (2 seconds)
        loop: true // Enable looping
    });
});
</script>

</body>
