 <header>
 	<ul>
 		<?php
						if (isset($_SESSION['loggedin']))
						{
							echo '<li><a href="index.php">Home</a></li>';
							echo '<li><a href="account.php">Account</a></li>';
							echo '<li><a href="menu.php">Menu</a></li>';
							echo '<li><a href="cart.php">Cart</a></li>';
							echo '<li><a href="feedback.php">Feedback</a></li>';
							echo '<li><a href="Database/logout.php">Logout</a></li>';
						}
						else
						{
							echo '<li><a href="index.php">Home</a></li>';
							echo '<li><a href="menu.php">Menu</a></li>';
							echo '<li><a href="Database/login.php">Login/Register</a></li>';
						}

						?>
					</ul>
            </header>
      
      