<?php
include('./Database/config.php');
echo $_SESSION['loggedin'];
$usernameCart = $_SESSION['username']; 
?>

<?ph
$qtyPepp = $_POST['1'];
$qtyCheese = $_POST['2'];
$qtyHawaiian = $_POST['3'];
$qtyDrumlets = $_POST['26'];
$qtyPopcorn = $_POST['27'];
$qtyGarlic = $_POST['28'];
$qtySprite = $_POST['29'];
$qtyCoke = $_POST['30'];
$qtyGreen = $_POST['31'];

$usernameCart = $_SESSION['username'];
echo $usernameCart;

/*
if($qtyPepp == true){
	if (!(SELECT EXISTS(SELECT * FROM cart WHERE (username=$usernameCart AND ))){
	$queryNew = "INSERT INTO cart()";
	} else {
		$sqlPepp = "UPDATE cart SET quantity=$qtyPepp WHERE username=$usernameCart";
	}
}

*/
header('Refresh:0; url=menu.php');
header("Location: " . $_SERVER["HTTP_REFERER"]);
?>