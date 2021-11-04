<?php
include('./Database/config.php');

session_start();
$usernameFeed = $_SESSION['loggedin'];

$comment = $_POST['comments'];
$selected = $_POST['selected'];
$typeFeed = $_POST['typeFeed'];
$star = $_POST['star'];

$queryEmail = "SELECT * FROM users WHERE username='".$usernameFeed."' " ;
$result = $link -> query($queryEmail);
$record = $result->fetch_assoc();
$email = $record['email'];

print_r($star);

if($typeFeed == true){
	$query = "INSERT INTO feedback VALUES('".$usernameFeed."' , '".$comment."' , '".$typeFeed."' , '".$star."' , '".$email."'  )";
	$result = $link->query($query);
	$link->close();
}

$to = 'f32ee@localhost';
$subject = 'Ratings by '.$usernameFeed;
$message = 'Type of feed:'.$typeFeed."\n"."Ratings:".$star."\n".'Comments:'.$comment;
$headers ='From: '.$email."\r\n".'Reply-To: f32ee@localhost'. "\r\n".'X-Mailer:PHP/'.phpversion();

mail($to,$subject,$message,$headers,'-ff32ee@localhost');
echo("mail sent to:" .$to);

header('Refresh:0; url=feedback.php');
header("Location: " . $_SERVER["HTTP_REFERER"]);
?>