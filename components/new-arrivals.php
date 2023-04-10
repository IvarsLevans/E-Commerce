<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website Title</title>
  </head>
  <body>
    <?php
        // initialize $product_shuffle as an empty array if it is null
        if ($product_shuffle == null) {
            $product_shuffle = array();
        }

        shuffle($product_shuffle);

        // request method post
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            if (isset($_POST['new_phones_submit'])){
                // call method addToCart
                $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
            }
        }

        $in_cart = $Cart->getCartId($product->getData('cart'));
    ?>
    <section id="new-arrivals">
        <div class="container py-5">
            <h4 class="font-rubik font-size-20">New Arrivals</h4>
            <hr>
            <!-- owl carousel -->
            <div class="owl-carousel owl-theme">
                <?php array_map(function ($item) use($in_cart){ ?>
                <div class="item py-2">
                    <div class="product font-rale">
                        <a href="<?php printf('%s?item_id=%s', 'product.php',  $item['item_id']); ?>"><img src="<?php echo $item['item_image'] ?? "assets/products/1.png"; ?>" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6><?php echo  $item['item_name'] ?? "Unknown";  ?></h6>
                            <div class="rating text-yellow-500 font-bold text-sm">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$<?php echo $item['item_price'] ?? '0' ; ?></span>
                            </div>
                            <form method="post">
                                <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?? '1'; ?>">
                                <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                                <?php
                                if (in_array($item['item_id'], $in_cart ?? [])){
                                    echo '<button type="submit" disabled class="btn btn-success font-size-12">In the Cart</button>';
                                }else{
                                    echo '<button type="submit" name="new_phones_submit" class="btn btn-warning font-size-12">Add to Cart</button>';
                                }
                                ?>

                            </form>
                        </div>
                    </div>
                </div>
                <?php }, $product_shuffle) ?>
            </div>
            <!-- !owl carousel -->
        </div>
    </section>
  </body>
</html>
