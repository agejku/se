<?php



#header("location: ../home.html");
include_once('Users.php');
include_once('DB.php');
$users = new Users();
$_SESSION['username']=$_POST['name'];
if ($users->login($_POST['name'], $_POST['pwd']))
    header("location: ../home.html");
else
    header("location: ../../index.html");

?>
