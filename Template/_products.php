<!-- Products -->

<?php

    // request method post
    if($_SERVER['REQUEST_METHOD'] == "POST"){
        if (isset($_POST['top_sale_submit'])){
            // call method addToCart
            $Cart->addToCart($_POST['user_id'], $_POST['item_id']);
        }
    }
    
    $item_id = $_GET['item_id'] ?? 1;
    foreach ($product->getData() as $item) :
        if ($item['item_id'] == $item_id) :

?>
<section id="product" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
            <img src="<?php echo $item['item_image'] ?? "./assets/products/M2Sport.PNG" ?>" alt="product" class="img-fluid">
            <div class="form-row pt-4 font-size-16 font-baloo">
                    <div class="col">
                        <button type="submit" class="btn btn-danger form-control">Proceed to Buy</button>
                    </div>
                    <div class="col">
                        <!-- Form tag  + 2 hidden input added -->
                        <form id="add-to-cart-form" method="post">
                            <input type="hidden" name="item_id" value="<?php echo $item['item_id'] ?? '1'; ?>">
                            <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                            <?php
                                if (in_array($item['item_id'], $Cart->getCartId($product->getData('cart')) ?? [])){
                                    echo '<button type="submit" disabled class="btn btn-success font-size-16 form-control">In the Cart</button>';
                                }else{
                                    echo '<button type="submit" name="top_sale_submit" class="product-add-to-cart btn btn-warning font-size-16 form-control">Add to Cart</button>';
                                }
                            ?>
                        </form>
                    </div>
                </div>
        </div>

            <div class="col-sm-6 py-5">
            <h5 class="font-baloo font-size-20"><?php echo $item['item_name'] ?? "Unknown"; ?></h5>
            <small>by <?php echo $item['item_brand'] ?? "Brand"; ?></small>
                <div class="d-flex">
                    <div class="rating text-warning font-size-12">
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="far fa-star"></i></span>
                    </div>
                    <a href="#" class="px-2 font-rale font-size-14">20,534 ratings | 1000+ answered questions</a>
                </div>
                <hr class="m-0">

                <!-- product price -->
                <table class="my-3">
                    <tr class="font-rale font-size-14">
                        <td>Price:</td> 
                        <td class="font-size-20 text-danger">$<span><?php echo $item['item_price'] ?? 0; ?></span><small class="text-dark font-size-12">&nbsp;&nbsp;Inclusive of all taxes</small></td>
                     </tr>

                </table>

                <!-- !product price -->
                
                <!-- policy -->
                <div id="policy">
                    <div class="d-flex">
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-retweet border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">2 Days <br> Replacement</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-truck  border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">SNF Company<br>Delivered</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                <span class="fas fa-check-double border p-3 rounded-pill"></span>
                            </div>
                            <a href="#" class="font-rale font-size-12">3 Year <br>Warranty</a>
                        </div>
                    </div>
                </div>

                <!-- !policy -->
                    <hr>    

                    <!-- order details -->
                    <div id="order-details" class="font-rale d-flex flex-column text-dark">
                        <small>Delivery by : Jun 1  - Jun 3</small>
                        <small>Sold by <a href="#">Shaad Mahamod </a>(4.5 out of 5 | 18,198 ratings)</small>
                        <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Deliver to Customer - 424201</small>
                    </div>

                    <!-- !order details -->


                    <!-- product qty section -->  

                    <div class="qty d-flex">
                        <h6 class="font-baloo">Quantity</h6>
                        <div class="px-4 d-flex font-rale">
                            <button class="qty-up border bg-light" data-id="<?php echo $item['item_id'] ?? '0'; ?>"><i class="fas fa-angle-up"></i></button>
                            <input type="text" data-id="<?php echo $item['item_id'] ?? '0'; ?>" class="qty_input border px-2 w-50 bg-light" disabled value="1" placeholder="1">
                            <button class="qty-down border bg-light" data-id="<?php echo $item['item_id'] ?? '0'; ?>"><i class="fas fa-angle-down"></i></button>

                        </div>
                    </div>

                   <!-- !product qty section -->  
                </div>

                <div class="col-12">
                    <h6 class="font-rubik">Product Description</h6>
                    <hr>
                    <p class="font-rale font-size-14">The first-ever BMW 2 Series Gran Coupé introduces a new form of authority with a bold character to the compact class. It is above all the uncompromising, performance-oriented aesthetic that unmistakeably reveals its ambitions. In keeping with high-end technologies and perfectly tuned driving dynamics features, the BMW 2 Series Gran Coupé stands out from the crowd with ease and pursues its very own path.</p>
                    <p class="font-rale font-size-14">The first-ever BMW 2 Series Gran Coupé lends an extremely light appearance to authority on wheels of up to 19″ in size. The distinctive BMW kidney grille, LED headlights and rear lights, frameless doors, powerful shoulders and the sporty rear – sheer authority that is also reflected in the interior. With illuminated interior trim finishers and optional sport seats, the driver-oriented cockpit creates an ambience that is exclusive and dynamic in equal measures. At the same time, the two 10.25″ displays with Live Cockpit Professional and the BMW Head-Up Display keep you fully informed.</p>
            </div>
        </div>
    </div>

</section>

    <!-- !Products -->
    <?php
        endif;
        endforeach;
?>