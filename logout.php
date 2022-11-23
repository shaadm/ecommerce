<?php
ob_start();
// include header.php file
  include ('header.php');

// Initialize the session
session_start();
 
// Unset all of the session variables
$_SESSION = array();
 
// Destroy the session.
session_destroy();
 
// Redirect to login page
header("location: login.php");
exit; 

 
?>



<?php
// include footer.php file
  include ('footer.php');
?>