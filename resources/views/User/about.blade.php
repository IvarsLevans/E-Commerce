<!DOCTYPE html>
<html lang="en">

<head>
    @include('User.layout.header')
    <style>
        p {
            text-align: justify;
        }
    </style>
</head>

<body class="animsition">

    @include('User.layout.navbar_shop')

    <!-- Title page -->
    <section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('images/bg-01.jpg');">
        <h2 class="ltext-105 cl0 txt-center">
            About Us
        </h2>
    </section>

    <!-- breadcrumb -->
    <div class="container">
        <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
            <a href="{{url('/')}}" class="stext-109 cl8 hov-cl1 trans-04">
                Home
                <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
            </a>

            <span class="stext-109 cl4">
                About
            </span>
        </div>
    </div>

    <!-- Content page -->
    <section class="bg0 p-t-45 p-b-45">
        <div class="container">
            <div class="row p-b-45">
                <div class="col-md-7 col-lg-8">
                    <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Who we are?
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            Welcome to TechBay, your premier ecommerce store for electronics. We offer a wide selection of high-quality phones, computers, laptops, headphones, and more from top brands at competitive prices. 
                        </p>

                        <p class="stext-113 cl6 p-b-26">
                            Our team of tech enthusiasts is dedicated to providing a seamless shopping experience and standing behind every product we sell. Shop with confidence at TechBay!
                        </p>

                        <p class="stext-113 cl6 p-b-26">
                        Any questions? Reach out to +371 25454545. We are located at Brivibas iela 27, Riga, Latvia.
                        </p>
                    </div>
                </div>

                <div class="col-10 col-md-4 col-lg-3 m-lr-auto">
                    <div class="how-bor1">
                        <div class="hov-img0">
                            <img src="images/about-01.jpg" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="order-md-2 col-md-7 col-lg-8 p-b-30">
                    <div class="p-l-85 p-l-15-lg p-l-0-md">
                        <h3 class="mtext-111 cl2 p-b-16">
                            Our Mission
                        </h3>

                        <p class="stext-113 cl6 p-b-26">
                            Our mission at TechBay is to offer the latest electronics at competitive prices while providing a seamless shopping experience and outstanding customer service.
                        </p>

                        <div class="bor16 p-l-29 p-b-9 m-t-22">
                            <p class="stext-114 cl6 p-r-40 p-b-11">
                                "Design is not just what it looks like and feels like. Design is how it works."
                            </p>

                            <span class="stext-111 cl8">
                                - <b>Steve Jobs</b> -
                            </span>
                        </div>
                    </div>
                </div>

                <div class="order-md-1 col-10 col-md-4 col-lg-3 m-lr-auto p-b-50">
                    <div class="how-bor2">
                        <div class="hov-img0">
                            <img src="images/about-02.jpg" alt="IMG">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('User.layout.footer')

    @include('User.layout.script')

</body>

</html>