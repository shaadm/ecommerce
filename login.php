<?php
ob_start();
// include header.php file
  include ('header.php');
?>

<section class="login-form">
    <div class="col-md-8 jumbotron">

        <h2>Log in</h2>


        <?php
            if (isset($_GET["error"])) {
                if ($_GET["error"] == "emptyinput") {
                    echo "<div class='alert alert-primary' role='alert'>Fill in all fields!</div>";

                }
                else if ($_GET["error"] == "wronglogin") {
                    echo "<div class='alert alert-primary' role='alert'>Incorrect login information!</div>";
                } 
            }

        ?>
        <form action="includes/login.inc.php" method="post">

            <div class="form-group">
                <label for="uid">Username</label>
                <input class="form-control" type="text" name="uid" placeholder="Username...">
            </div>

            <div class="form-group">
                <label for="pwd">Password</label>
                <input class="form-control" type="password" name="pwd" placeholder="Password...">
            </div>

            <button name="submit" type="submit" class="btn btn-primary">Log In</button>

        </form>
    </div>


</section>

<br>
<center>Don't have an account? <a href="signup.php">Sign Up </a></center>
</br>



<?php
// include footer.php file
  include ('footer.php');
?>