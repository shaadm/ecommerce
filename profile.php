<?php
ob_start();
// include header.php file
  include ('header.php');
?>

<section class="profile">
    <div class="container">
        <div class=".col-xs-4 .col-md-offset-2">
            <div class="panel panel-default panel-info Profile">
                <h2> My Profile </h2>
                <div class="panel-body">
                    <div class="form-horizontal">

                        <?php
						require 'dbconnect.php';

						if(isset($_POST['update']))
						{
							$currentUser = $_SESSION["useruid"];
							$fullName = $_POST['name'];
							$email = $_POST['email'];
							$password = $_POST['pwd'];
							$dob = $_POST['dob'];
							$address = $_POST['address'];
							$postcode = $_POST['postcode'];

							$hashedPwd = password_hash($password, PASSWORD_DEFAULT);


							if ($password == NULL) {
								$sql = "UPDATE users " . "SET usersName = '$fullName', usersEmail = '$email', usersDob = '$dob', usersAddress = '$address', usersPostcode = '$postcode' " . "WHERE usersUid ='$currentUser'";
							}
							else {
								$sql = "UPDATE users " . "SET usersName = '$fullName', usersEmail = '$email', usersPwd = '$hashedPwd', usersDob = '$dob', usersAddress = '$address', usersPostcode = '$postcode' " . "WHERE usersUid ='$currentUser'";
							}

							$result = mysqli_query($conn, $sql);

							if (!$result)
							{
								die('Could not update data: ' . mysqli_error($conn));
							}
							echo "<div class='alert alert-success' role='alert'>Updated data successfully!</div>";

							mysqli_close($conn);
							echo "<script>setTimeout(function(){ window.location.href = location;}, 3000);</script>";
						}
						else
						{                            
							$currentUser = $_SESSION["useruid"];
                            $sql = "SELECT * FROM Users WHERE usersUid = '$currentUser'";
                            $result = mysqli_query($conn, $sql);
                            
                            if (mysqli_num_rows($result) > 0) {
                                // output data of each row
                                while($row = mysqli_fetch_assoc($result)) {									
									echo"<form method='post' action = ''>";
										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Full Name</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='text' name='name' placeholder='First Name' ng-model='me.name' value='". $row["usersName"]."'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";	
											echo"<label class='col-sm-2 control-label'>Username</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='text' name='username' placeholder='Username' ng-model='me.username' value='". $row["usersUid"]."' disabled> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Email</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='email' name='email' placeholder='Email' ng-model='me.email' value='". $row["usersEmail"]."'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Password</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='password' name='pwd' placeholder='Password' ng-model='me.password'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Date of Birth</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='date' name='dob' placeholder='Date of Birth' ng-model='me.dob' value='". $row["usersDob"]."'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Address</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='textarea' name='address' placeholder='Address' ng-model='me.address' value='". $row["usersAddress"]."'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
											echo"<label class='col-sm-2 control-label'>Post Code</label>";
											echo"<div class='col-sm-4'>";
												echo"<input class='form-control' type='textarea' name='postcode' placeholder='Post Code' ng-model='me.postcode' value='". $row["usersPostcode"]."'> </div>";
										echo"</div>";

										echo"<div class='form-group'>";
										echo"<div class='col-sm-offset-2 col-sm-10'>";
											echo"<input class='btn btn-primary' id='update' name='update' type='submit' value='update'>";
										echo"</div>";

									echo "</form>";

                                }
                            } else {
                                echo "0 results";
                            }
                            
                            mysqli_close($conn);
						}
						?>


                    </div>
                    <!-- end form-horizontal -->
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end size -->
    </div>
    <!-- end container-fluid -->
</section>

<?php
// include footer.php file
  include ('footer.php');
?>