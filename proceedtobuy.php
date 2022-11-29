<?php
ob_start();
// include header.php file
  include ('header.php');
?>


<center>
    <h2>SNF Car Company - Checkout Form</h2>
</center>

<div class="proceed-to-buy">
    <div class="row">
        <div class="col-75">
            <div class="container">
                <form action="/login.php">
                    <div class="row">
                        <div class="col-50">
                            <h3>Billing Address</h3>
                            <label for="fname">
                                <i class="fa fa-user"></i> Full Name </label>
                            <input type="text" id="fname" name="firstname" placeholder="John M. Doe" required>
                            <label for="email">
                                <i class="fa fa-envelope"></i> Email </label>
                            <input type="text" id="email" name="email" placeholder="john@example.com" required>
                            <label for="adr">
                                <i class="fa fa-address-card-o"></i> Address </label>
                            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street" required>
                            <label for="city">
                                <i class="fa fa-institution"></i> City </label>
                            <input type="text" id="city" name="city" placeholder="New York" required>
                            <div class="row">
                                <div class="col-50">
                                    <label for="state">State</label>
                                    <input type="text" id="state" name="state" placeholder="NY" required>
                                </div>
                                <div class="col-50">
                                    <label for="zip">Zip</label>
                                    <input type="text" id="zip" name="zip" placeholder="10001" required>
                                </div>
                            </div>
                        </div>
                        <div class="col-50">
                            <h3>Payment</h3>
                            <label for="fname">Accepted Cards</label>
                            <div class="icon-container">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:blue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                <i class="fa fa-cc-discover" style="color:orange;"></i>
                            </div>
                            <label for="cname">Name on Card</label>
                            <input type="text" id="cname" name="cardname" placeholder="John More Doe" required>
                            <label for="ccnum">Credit card number</label>
                            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
                            <label for="expmonth">Exp Month</label>
                            <input type="text" id="expmonth" name="expmonth" placeholder="September" required>
                            <div class="row">
                                <div class="col-50">
                                    <label for="expyear">Exp Year</label>
                                    <input type="text" id="expyear" name="expyear" placeholder="2018" required>
                                </div>
                                <div class="col-50">
                                    <label for="cvv">CVV</label>
                                    <input type="text" id="cvv" name="cvv" placeholder="352" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <label>
                        <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                    </label>
                    <input type="submit" value="Continue to checkout" class="btn">
                </form>
            </div>
        </div>
    </div>
</div>



<?php
// include footer.php file
  include ('footer.php');
?>