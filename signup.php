<?php
ob_start();
// include header.php file
  include ('header.php');
?>

<section class="signup-form">
    <div class="col-md-8 jumbotron">
        <h2>Sign Up</h2>

        <?php
            require 'dbconnect.php';

            if(isset($_POST['submit']))
            {							

                $fullName = $_POST['name'];
                $email = $_POST['email'];
                $userName = $_POST['uid'];
                $password = $_POST['pwd'];
                $repeatPassword = $_POST['pwdrepeat'];
                $dob = $_POST['dob'];
                $address = $_POST['address'];
                $postcode = $_POST['postcode'];

                if ($password != $repeatPassword) {
                    echo "<div class='alert alert-danger' role='alert'>Password Does not Match!</div>";
                    mysqli_close($conn);
                    echo "<script>setTimeout(function(){ window.location.href = location;}, 3000);</script>";
                }
                else {                    
                    $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

                    $sqlCheckUsername = "
                        SELECT * FROM users
                        WHERE usersUid ='$userName'
                    ";

                    $CheckUsernameResult = mysqli_query($conn, $sqlCheckUsername);
                    if (mysqli_num_rows($CheckUsernameResult) > 0) {
                        echo "<div class='alert alert-Danger' role='alert'>Username has already been taken!</div>";
                        mysqli_close($conn);
                        echo "<script>setTimeout(function(){ window.location.href = location;}, 4000);</script>";
                    }
                    else {
                        $sql = "
                            INSERT INTO users (usersName, usersEmail, usersUid, usersPwd, usersDob, usersAddress, usersPostcode)
                            VALUES ('$fullName', '$email', '$userName', '$hashedPwd', '$dob', '$address', '$postcode');
                        ";

                    
                        $result = mysqli_query($conn, $sql);

                        if (!$result)
                        {
                            die('Could not update data: ' . mysqli_error($conn));
                            mysqli_close($conn);
                        }
                        echo "<div class='alert alert-success' role='alert'>Updated data successfully! You will be redirected to the login page shortly.</div>";
                        mysqli_close($conn);
                        echo "<script>setTimeout(function(){ window.location.href = 'login.php';}, 4000);</script>";
                    }                   

                    
                }
            }
            else
            {                            
               								
                echo '<form action="" method="post">

                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input class="form-control" type="text" name="name" placeholder="Full name..." required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input class="form-control" type="email" name="email" placeholder="Email..." required>
                    </div>

                    <div class="form-group">
                        <label for="uid">Username</label>
                        <input class="form-control" type="text" name="uid" placeholder="Username..." required>
                    </div>

                    <div class="form-group">
                        <label for="pwd">Password</label>
                        <input class="form-control" type="password" name="pwd" placeholder="Password..." required>
                    </div>

                    <div class="form-group">
                        <label for="pwdrepeat">Repeat Password</label>
                        <input class="form-control" type="password" name="pwdrepeat" placeholder="Repeat Password..." required>
                    </div>

                    <div class="form-group">
                        <label for="dob">Date of Birth</label>
                        <input class="form-control" type="date" name="dob" placeholder="Date of Birth..." required>
                    </div>

                    <div class="form-group">
                        <label for="address">Postal Address</label>
                        <input class="form-control" type="textarea" name="address" placeholder="Postal Address..." required>
                    </div>

                    <div class="form-group">
                        <label for="postcode">Post Code</label>
                        <input class="form-control" type="text" name="postcode" placeholder="Post Code..." required>
                    </div>
                    <input class="btn btn-primary" id="submit" name="submit" type="submit" value="Submit">

                </form>';
                
            }
        ?>
    </div>
</section>

<?php
// include footer.php file
  include ('footer.php');
?>