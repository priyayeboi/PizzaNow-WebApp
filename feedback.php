
<?php
include('./Database/config.php');

//Initialise shopping cart class
session_start();
$usernameFeed = $_SESSION['loggedin'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback</title>
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
    </div>
    </section>
	<!-- Navbar Section Ends Here -->
	<div id="content">

	<section class="food-menu" style="background-color:#de7f44;">
			<div class="container2">
				<h2 class="text-center">Feedback</h2>
				
			</div>

			<div class="text-center">
				<form name="feedback" onsubmit="return checkForm(this)" class="feedForm" action="submitted.php" method="POST">
					<input type="hidden" value="<?php echo $usernameFeed ?>">
					<div>
					<h4>What would you like to feedback about?</h4><br>
				</div>
				<div>
					<div style="margin-bottom: 6%;" class="radio-but">
						<div class="radio-but">
										<label for="food"> Food
											<input type = "radio" name="typeFeed" value="food" required>
										</label>

										<label for="service"> Service
											<input type = "radio" name="typeFeed"  value="service">
										</label>
										<label for="others"> Others
											<input type = "radio" name="typeFeed"  value="others">
										</label>
							</div>
						</div>
				<div style="margin-bottom: 3%;">
					<h4>
						Ratings:
					</h4>
				</div>
				<div class="radio-but">
					<label for="star1"> 1
						<input type = "radio" name="star" value="star1" required>
					</label>

					<label for="star2"> 2
						<input type = "radio" name="star"  value="star2">
					</label>

					<label for="star3"> 3
						<input type = "radio" name="star"  value="star3">
					</label>

					<label for="star1"> 4
						<input type = "radio" name="star" value="star4">
					</label>

					<label for="star1"> 5
						<input type = "radio" name="star" value="star5">
					</label>
		</div>
				</div>
					<br>
					<div>
						<h4>Comments:</h4><br>
					<textarea required placeholder="" class="feedbacktext"name="comments" id="comments" rows="4" style="width:90%;"></textarea>
			
					<br>
					<div style="margin-top:3%">
					<input style=""class="btn btn-feedback btn-primary"type="submit" value="Submit!" id="feedBtn" onclick="thankYoufeed()">
				</div>
				</div>
			</form>

	</section>
	<div class="clearfix"></div>	

	<?php 
include('./Common/footernew.php');?>


