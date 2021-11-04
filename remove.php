<?php
include('./Database/config.php');
 session_start();

$i = $_GET['deleted'];
echo "$i is".$i;
unset($_SESSION['cart'][$i]);
print_r($_SESSION['cart']);


?>