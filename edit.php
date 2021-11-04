<?php
include('./Database/config.php');

//Initialise shopping cart class
session_start();
$username = $_SESSION['loggedin'];
$query = "SELECT * FROM users WHERE username='".$username."'";
$result = $link->query($query); //submitting query
$records = $result->fetch_assoc(); //getting query


$email = $records['email'];
$number = $records['number'];
$address = $records['address'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<style>
	html, body {
    max-width: 100%;
    overflow-x: hidden;
}
        * { margin: 0; padding: 0; }
        #global { height: 100vh; }
        #header { height: 60px;}
        #content { height: calc(100% - (60px + 50px)); }
        #footer { height: 50px; }
        form {
		  width: 500px;
		  height: 250px;
		  padding: 10px 0;
		  margin: 50px auto;
		  border-radius: 18px;
		} 
    </style>
    <meta charset="UTF-8">
    <title>Account</title>
    <link rel="stylesheet" href="newsheet.css">
    <link rel="stylesheet" href="1style.css">
    <script src="thankyou.js"></script>
    <script src="validatorAcc.js"></script>
</head>

<body style="background-color: #de7f44;">
	<div id="global">

    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container2" id="header">

            <?php include('./Common/header.php'); ?>

            <div class="clearfix"></div>
        </div>
    </section>
	<!-- Navbar Section Ends Here -->
	<div id="content">
		<h2 class="edithead"><?php echo $username?></h2>
		<form class="editform" name="edit" action="profileupdate.php" method="POST">
			<h4 class="editdet">Enter into the fields the details that has to be changed!</h4>
			<div>
			<label>Number: </label>
			<input type="text" name="number" onblur="chkPhone();"><br>
		</div>
		<div>
			<label>Email:   </label>
			<input type="text" name="email" onblur="chkEmail();"><br>
		</div>
		<div>
			<label> Address: </label>
			<input type="text" name="address"><br>
		</div>
		<div>
			<input type="submit" name="edit" value="Update" class="btn btn-primary editmargin" onclick="updated();">
		</div>
		</div>
		</form>
	</div>
	<div class="clearfix"></div>
    <?php 
include('./Common/footernew.php');?>



