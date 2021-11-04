<?php  //cart.php
include('./Database/config.php');
session_start();
if (!isset($_SESSION['cart'])){
	$_SESSION['cart'] = array();
}
if (isset($_GET['empty'])) {
	unset($_SESSION['cart']);
	header('location: ' . $_SERVER['PHP_SELF']);
	exit();
}

$cartitem = $_SESSION['cart'];
$items = array();
$prices = array();

$sql = "SELECT * FROM food WHERE active='Yes'";
$res = mysqli_query($link,$sql);
$count = mysqli_num_rows($res);

while($row = mysqli_fetch_assoc($res)){
	$price = $row['price'];
	$foodItem = $row['title'];

	array_push($items,$foodItem);
	array_push($prices,$price);


}


$item_id = $_GET['deleted'];
unset($_SESSION['cart'][$item_id]);
$_SESSION['cart']=array_values($_SESSION['cart']);


?>

<!DOCTYPE html>
<html lang="en" style="height: 100%;">
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <link rel="stylesheet" href="newsheet.css">
    <link rel="stylesheet" href="1style.css">
    <script src="thankyou.js"></script>
</head>

<body>
	<div id="global">
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
    	<div id="header">
        <div class="container2">
        	<?php include('./Common/header.php'); ?>

            <div class="clearfix"></div>
	        </div>
	    </section>

	    <div id="content">

    <section class="food-menu" style="min-height: 100%;">
    	<div class="container2">
    		<h1 class="products">Shopping Cart</h1>

    		<?php if (count($_SESSION['cart'])!=0){ ?>

  			<div>
  				<div style="width:48%; float:left; text-align:center;">
			    <label>Product</label>
			</div>
			<div class="pricealign">
			    <label>Price</label>
			</div>
			<div class="pricealign">
			</div>
  			</div>


		<?php
			
			$total = 0;
			$counter = array();

			for ($i=0; $i < count($_SESSION['cart']); $i++){

	    		$sql = "SELECT * FROM food WHERE id=' ".$_SESSION['cart'][$i]."'";

	    		$res = mysqli_query($link,$sql);
	    		$row = mysqli_fetch_assoc($res);

	    		$image_name = $row['image_name'];
	    		$description = $row['description'];
	    		$item = $row['title'];
	    		$price = $row['price'];

	    		$total = $total + $price;


				?>

				<div class="cart-box">
					<div class="food-menu-img">
						<?php
						if($image_name=="")
						{
							echo "<div class='error'>Food not available.</div>";
						}
						else
						{
							?>
							<img src="<?php echo $image_name; ?>"class="img-responsive img-curve">
							<?php
						}
						?>
						
					</div>

					<div class="food-menu-desc">
						<h4><?php echo $item; ?></h4>
						<p class="food-detail">
							<?php echo $description; ?>
						</p>
						<br>
						
					</div>
				</div>



				<div class="innerprice">
					<p>$<?php echo $price ?></p>
				</div>
				<div class="innerremove">
					<form method='GET' action="<?php echo $_SERVER['PHP_SELF']; ?>">
						<input type="hidden" id="deleted" name="deleted" value="<?php echo $i;?>">
					<input type="submit" value="Remove" onclick="remove()"class="btn btn-primary">
				</form>
				</div>
			<?php } ?>
			<div class="clearfix"></div>
			<div>
			<div class="productalign">
				<label>Number of products: <h4><?php echo count($_SESSION['cart'])?><h4></label>
			</div>

			<div style="width:20%; float:left; text-align:center; padding-top:3%">
				Total:<h4> $<?php echo number_format($total,2); ?><h4>
			</div>
		</div>
			<div class="clearfix"></div>
				<form method="POST" action="thankyou.php" class="cartsubmit">
				<input type="hidden" id="submitted" name="submitted" value= "<?php echo $total?>"/>
				<input type="hidden" id="cartitems" name="cartitems" value="<?php $cartitem ?>">
				<input class="btn btn-primary" type="submit" onclick="thankYouOrder()" value="Check Out" />
			</form>
					<div style="padding:6%">
			<button type="button" class="btn btn-primary"><a href="menu.php">Continue Shopping</a></button> 
			<button type="button" class="btn btn-primary" ><a href="<?php echo $_SERVER['PHP_SELF']; ?>?empty=1 ">Empty Cart</a></button> 
		</div>
		<?php
	} else{
		?> 
		<div style="padding: 2%; font-size:18px;">
		<label>
			Cart is empty!
		</label>
	</div>
		<?php
	}
		?>

			</div>
			<div class="clearfix"></div>
		</div>
	</section>
</div>
</div>
</section>
</div>
</body>
</html>












