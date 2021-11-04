<?php
 include('./Database/config.php');
 session_start();

$username = $_SESSION['loggedin'];
$email=$_POST['email'];
$number= $_POST['number'];
$address = $_POST['address'];

if($email==true){
    $query = "UPDATE users SET email ='$email' WHERE username='$username'";
    $result = $link->query($query); //submit query
} 

if($number==true){
    $query = "UPDATE users SET contact ='$number' WHERE username='$username'";
    $result = $link->query($query); //submit query
} 

if($address==true){
    $query = "UPDATE users SET address ='$address' WHERE username='$username'";
    $result = $link->query($query); //submit query
} 

header('Refresh:0; url=account.php');
header("Location: http://192.168.56.2/f32ee/PizzaNow/account.php");

?>