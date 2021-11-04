
<?php
include('./Database/config.php');

//Initialise shopping cart class
session_start();
$username = $_SESSION['loggedin'];
$query = "SELECT * FROM users WHERE username='".$username."'";
$result = $link->query($query); //submitting query
$records = $result->fetch_assoc(); //getting query


$email = $records['email'];
$number = $records['contact'];
$address = $records['address'];
$name = $records['name'];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="newsheet.css">
    <meta charset="UTF-8">
    <title>Account</title>
    <link rel="stylesheet" href="1style.css">
</head>

<body class="accountbody">
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
        <div>
        <h2 class="usernamehead"><?php echo $username ?></h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <form action="edit.php">
                	<table class="accounttable">
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>: </td>
                            <td><?php echo $name?></td>
                        </tr>
                        <tr>
                            <td>Number</td>
                            <td>: </td>
                            <td><?php echo $number ?></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>: </td>
                            <td><?php echo $email ?></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>: </td>
                            <td><?php echo $address ?></td>
                        </tr>
                    </tbody>
                </table>
                <div class="accountbutton">
                <input class="btn btn-primary"type="submit" value="I want to update profile">
            </div>
            </form>
            </div>
        </div>
    </div>
    <!-- End -->
    <?php 
include('./Common/footernew.php');?>


                