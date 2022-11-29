<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce for SNF Car Company</title>

    <!-- Bootstrap CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Owl-carousel CDN-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--font awesome icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
        integrity="sha512-L7MWcK7FNPcwNqnLdZq86lTHYLdQqZaz5YcAgE+5cnGmlw8JT03QB2+oxL100UeB6RlzZLUxCGSS4/++mNZdxw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Custom CSS file-->
    <link rel="stylesheet" href="style.css">

    <?php
    // require functions.php file
    require ('functions.php');
    ?>

</head>

<body>

    <!-- start #header -->
    <header id="header">
        <div class="strip d-flex justify-content-between px-4 py-1 bg-light">
            <p class="font-rale font-size-12 text-black-50 m-0"> E-Commerce website for SNF Car Company. Moving into the
                new era of technology. </p>
            <div class="font-rale font-size-14">
                <?php
                        if (isset($_SESSION["useruid"])) {
                            echo "<a class='px-3 border-right border-left text-dark' href='profile.php'>". $_SESSION["useruid"] ."</a>";
                            echo "<a class='px-3 border-right border-left text-dark' href='includes/logout.inc.php'>Log out</a>";
                        }
                        
                        else{
                            echo "<a class='px-3 border-right border-left text-dark' href='signup.php'>Sign up</a>";
                            echo "<a class='px-3 border-right border-left text-dark' href='login.php'>Log in</a>";
                        }
                        ?>
                        <a href="#" class="px-3 border-right text-dark">Whishlist (0)</a>
            </div>
        </div>

        <!-- Primary Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark color-second-bg">

            <a class="navbar-brand" href="index.php">SNF Car Company</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav m-auto font-rubik">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">On Sale</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="mainproduct.php">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="comingsoon.php">Coming Soon</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="aboutus.php">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.php">Contact</a>
                    </li>                   

                </ul>
                <form action="#" class="font-size-14 font-rale"></form>
                <a href="cart.php" class="py-2 rounded-pill color-primary-bg">
                    <span class="font-size-16 px-2 text-white"><i class="fas fa-shopping-cart">Cart</i></span>
                    <span
                        class="px-3 py-2 rounded-pill text-dark bg-light"><?php echo count($product->getData(table:'cart'))?></span>

                </a>

            </div>
            </div>
        </nav>
        <!-- Primary Navigation -->

    </header>

    <!-- !start #header -->

    <!-- #main-site -->
    <main id="main-site">