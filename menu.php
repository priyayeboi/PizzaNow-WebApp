
<?php 
include('./Database/config.php');
session_start();

//Initialise cart session
if (!isset($_SESSION['cart'])){
	$_SESSION['cart'] = array();
}
if (isset($_GET['food_id'])) {
	$_SESSION['cart'][] = $_GET['food_id'];
	header('location: ' . $_SERVER['PHP_SELF']. '?' . SID);
	exit();
} 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu</title>
    <link rel="stylesheet" href="1style.css">
    <script src="thankyou.js"></script>
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container2">
        	<?php include('./Common/header.php'); ?>

            <div class="clearfix"></div>
        </div>
    </section>
	<!-- Navbar Section Ends Here -->

	
	<section class="food-menu">
			<div class="container2">
				<h2 class="text-center">Food Menu</h2>
				
				<?php
					
					$sql = "SELECT * FROM food WHERE active='Yes'";
					$res = mysqli_query($link,$sql);
					$count = mysqli_num_rows($res);

					
					if($count>0)
					{
						while($row = mysqli_fetch_assoc($res))
								{
									$id = $row['id'];
									$title = $row['title'];
									$price = $row['price'];
									$description = $row['description'];
									$image_name = $row['image_name'];
									?>
									
									<div class="food-menu-box">
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
											<h4><?php echo $title; ?></h4>
											<p class="food-price">$<?php echo $price; ?></p>
											<p class="food-detail">
												<?php echo $description; ?>
											</p>
											<br>
										
										
											<a href="<?php echo SITEURL; ?>/menu.php?food_id=<?php echo $id; ?>" class="btn btn-primary" onclick="buyItem()">Buy Item</a>
											
											
										</div>
									</div>
									
									<?php
								}
					}
					else
					{
						echo "<div class='error'>Food not available.</div>";
					}
				?>
				
				<div class="clearfix"></div>
			</div>
	</section>			

<?php 
include('./Database/mainfooter.php');?>