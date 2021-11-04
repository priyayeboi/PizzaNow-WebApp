<?php
include('./Database/config.php');

//Initialise shopping cart class
session_start();
$username = $_SESSION['loggedin'];
$total = $_POST['submitted'];
$cartitems = $_POST['cartitems'];


$queryDet = "SELECT * FROM users WHERE username='".$username."'";
$resultDet = $link->query($queryDet); //submitting query
$records = $resultDet->fetch_assoc(); //getting query



$email = $records['email'];
$number = $records['contact'];
$address = $records['address'];
$name = $records['name'];
date_default_timezone_set("Asia/Singapore");
$time = date("Y-m-d h:i:s");

$total = 0;

for ($i=0; $i < count($_SESSION['cart']); $i++){
	$sql = "SELECT * FROM food WHERE id=' ".$_SESSION['cart'][$i]."'";

	    		$res = mysqli_query($link,$sql);
	    		$row = mysqli_fetch_assoc($res);
	    		$price = $row['price'];

	    		$total = $total + $price;
	    	}

$sql = "SELECT * FROM food WHERE id=' ".$_SESSION['cart'][0]."'";

    		$res = mysqli_query($link,$sql);
    		$row = mysqli_fetch_assoc($res);

    		$item = $row['title'];
    		$price = $row['price'];

$items = $item;
$prices = $price;

for ($i=1; $i < count($_SESSION['cart']); $i++){
				$sql = "SELECT * FROM food WHERE id=' ".$_SESSION['cart'][$i]."'";

	    		$res = mysqli_query($link,$sql);
	    		$row = mysqli_fetch_assoc($res);

	    		$id = $_SESSION['cart'[$i]];
	    		$item = $row['title'];
	    		$price = $row['price'];

	    		$items = $items.','.$item;
	    		$prices = $prices.','.$price;


	    	}


$query2 = "INSERT INTO tbl_order VALUES('$id','$items','$prices', '1' , '$total' ,'$time','Ordered','$name','$number','$email', '$address')";

if (mysqli_query($link, $query2)) {
		echo "New record created successfully !";
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($link);
	 }
	 mysqli_close($link);


$_SESSION['cart']= array();


header('Refresh:0; url=index.php');
header("Location:http://192.168.56.2/f32ee/PizzaNow/index.php ");
?>

