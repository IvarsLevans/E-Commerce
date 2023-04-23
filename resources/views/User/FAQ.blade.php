<!DOCTYPE html>
<html lang="en">

<head>
    <base href="/public">

    @include('User.layout.header')
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
    <style>
        div {
            text-align: justify;
        }

        section {
            padding: 60px;
        }

        a,
        a:hover,
        a:focus,
        a:active {
            text-decoration: none;
            outline: none;
        }

        ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .faq {
            padding: 30px 0 50px;
            background: #f7fbff;
            min-height: 100vh;
        }

        .faq .section-title {
            margin-bottom: 54px;
        }

        .faq .section-title h2 {
            margin-bottom: 22px;
        }

        .faq .accordion .card {
            border: none;
            margin-bottom: 30px;
        }

        .faq .accordion .card:not(:first-of-type) .card-header:first-child {
            border-radius: 10px;
        }

        .faq .accordion .card .card-header {
            border: none;
            border-radius: 10px;
            padding: 0;
        }

        .faq .accordion .card .card-header h5 {
            padding: 0;
        }

        .faq .accordion .card .card-header h5 button {
            color: #1e3056;
            font-size: 18px;
            font-weight: 500;
            text-decoration: none;
            padding: 0 30px 0 70px;
            height: 80px;
            display: block;
            width: 100%;
            color: rgba(30, 48, 86, 0.8);
            text-align: left;
            background: #fff;
            border-radius: 10px 10px 0 0;
            position: relative;
        }

        .faq .accordion .card .card-header h5 button:after {
            position: absolute;
            left: 30px;
            top: 50%;
            margin-top: -10px;
            width: 20px;
            height: 20px;
            background-color: transparent;
            color: #ff5f74;
            text-align: center;
            border: 1px solid #ff5f74;
            border-radius: 50%;
            line-height: 100%;
            content: '\f067';
            font-size: 10px;
            line-height: 18px;
            font-family: "Font Awesome 5 Free";
            font-weight: 900;
        }

        .faq .accordion .card .card-header h5 button.collapsed {
            background: #fff;
            border-radius: 10px;
            box-shadow: none;
            border: 1px solid rgba(97, 125, 255, 0.2);
        }

        .faq .accordion .card .card-header h5 button[aria-expanded="true"]:after {
            content: '\f068';
            color: #fff;
            background-image: #ff5f74;
        }

        .faq .accordion .card .card-body {
            -webkit-box-shadow: 0px 15px 140px 0px rgba(69, 81, 100, 0.1);
            box-shadow: 0px 15px 140px 0px rgba(69, 81, 100, 0.1);
            border-radius: 0 0 10px 10px;
            padding-top: 0;
            margin-top: -6px;
            padding-left: 72px;
            padding-right: 70px;
            padding-bottom: 23px;
            color: rgba(30, 48, 86, 0.8);
            line-height: 30px;
        }
    </style>
</head>

<body>
    @include('User.layout.navbar_shop')
    <section class="faq">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-8 text-center">
                    <div class="section-title txt-center ">
                        <p style="font-size: 35px;"><b>Help & FAQ</b></p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="accordion" id="accordionExample">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                What is TechBay?
                                            </button>
                                        </h5>
                                    </div>

                                    <div id="collapseOne" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            Discover TechBay, your one-stop-shop for all your electronic needs! We offer a wide range of high-quality electronics, including smartphones, laptops, headphones, and more, all at affordable prices. Our user-friendly website makes shopping with us easy, and we're committed to providing you with exceptional customer service. Join our community of tech enthusiasts today and experience the latest in electronic innovation with TechBay.
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                Delivery Information
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            At TechBay, we offer free shipping for all orders over $2000. For orders below $2000, we charge a $7.95 shipping fee for Standard Post. Please note that delivery delays may occur in some areas and your parcel may take up to an extra 7 business days from the estimated delivery date to arrive. If you have received your tracking number, rest assured that your order has been shipped by us and is currently on its way to you with the courier.
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapseThree">
                                                About Wish List
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapse4" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            You can store your favourite products in [Wish List] to purchase later in our online store.
                                            It is very easy and all you need to do is click the [HEART Shape] icon on the product picture to be included in your wish list.
                                            You can remove the product from your wish list whenever you want by clicking the same icon again.<br>
                                            To complete your purchase in the wish list, simply click the product and put inside your cart to checkout as usual.
                                            Please be informed that the product inside the wish list does not guarantee the reservation.
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-6 col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse5" aria-expanded="false" aria-controls="collapseOne">
                                                Refund the product?
                                            </button>
                                        </h5>
                                    </div>

                                    <div id="collapse5" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            We want our customers to be completely satisfied with their purchases from TechBay. If you receive a faulty or damaged product, you can return it within 30 days for a full refund or exchange. Simply contact our customer support team for assistance with your return. Our team is committed to providing you with the best possible shopping experience, and we're always available to help you with any questions or concerns.
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse7" aria-expanded="false" aria-controls="collapseThree">
                                                Coupon & Promotions
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapse7" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                        To apply the coupon, click on your cart and select [Coupon] in the Order Summary. Select your coupon and enter the discount code in the blank box. Click [APPLY] once confirmed.
                                        After successful application, you can continue [CHECKOUT] or continue shopping.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="mb-0">
                                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapse8" aria-expanded="false" aria-controls="collapseThree">
                                                Subscribe to the TechBay newsletter?
                                            </button>
                                        </h5>
                                    </div>
                                    <div id="collapse8" class="collapse" data-parent="#accordionExample">
                                        <div class="card-body">
                                            You can subscribe to our newsletter by clicking here, or on “SUBCRIBE” under E-Newsletter at the bottom of the TechBay website. 
                                            Our newsletter will keep you up-to-date with the latest launches, arrivals, exclusive promotions, and limited offers.
                                        </div>
                                    </div>
                                </div>

                            </div>

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