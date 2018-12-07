<?php
	include("function/session.php");
	include("db/dbconn.php");
?>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.mad1{
			    text-shadow: 1px 1px green;
		}
	</style>
	<title>Product</title>
	<link rel = "stylesheet" type = "text/css" href="css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/carousel.js"></script>
	<script src="js/button.js"></script>
	<script src="js/dropdown.js"></script>
	<script src="js/tab.js"></script>
	<script src="js/tooltip.js"></script>
	<script src="js/popover.js"></script>
	<script src="js/collapse.js"></script>
	<script src="js/modal.js"></script>
	<script src="js/scrollspy.js"></script>
	<script src="js/alert.js"></script>
	<script src="js/transition.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div id="header">
		<img src="img/logo.jpg">
		<label>SportShoes</label>
		
			<?php
				$id = (int) $_SESSION['id'];
			
					$query = $conn->query ("SELECT * FROM customer WHERE customerid = '$id' ") or die (mysqli_error());
					$fetch = $query->fetch_array ();
			?>
	
			<ul>
				<li><a href="function/logout.php"><i class="icon-off icon-white"></i>logout</a></li>
				<li>Welcome:&nbsp;&nbsp;&nbsp;<a href="#profile" href  data-toggle="modal"><i class="icon-user icon-white"></i><?php echo $fetch['firstname']; ?>&nbsp;<?php echo $fetch['lastname'];?></a></li>
			</ul>	
	</div>
	
		<div id="profile" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
					<h3 id="myModalLabel">My Account</h3>
				</div>
					<div class="modal-body">
						<?php
							$id = (int) $_SESSION['id'];
			
								$query = $conn->query ("SELECT * FROM customer WHERE customerid = '$id' ") or die (mysqli_error());
								$fetch = $query->fetch_array ();
						?>
						<center>
					<form method="post">
						<center>
							<table>
								<tr>
									<td class="profile">Name:</td><td class="profile"><?php echo $fetch['firstname'];?>&nbsp;<?php echo $fetch['lastname'];?></td>
								</tr>
								<tr>
									<td class="profile">Address:</td><td class="profile"><?php echo $fetch['address'];?></td>
								</tr>
								<tr>
									<td class="profile">Country:</td><td class="profile"><?php echo $fetch['country'];?></td>
								</tr>
								<tr>
									<td class="profile">ZIP Code:</td><td class="profile"><?php echo $fetch['zipcode'];?></td>
								</tr>
								<tr>
									<td class="profile">Mobile Number:</td><td class="profile"><?php echo $fetch['mobile'];?></td>
								</tr>
								<tr>
									<td class="profile">Telephone Number:</td><td class="profile"><?php echo $fetch['telephone'];?></td>
								</tr>
								<tr>
									<td class="profile">Email:</td><td class="profile"><?php echo $fetch['email'];?></td>
								</tr>
							</table>
						</center>
					</div>
				<div class="modal-footer">
					<a href="account.php?id=<?php echo $fetch['customerid']; ?>"><input type="button" class="btn btn-success" name="edit" value="Edit Account"></a>
					<button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
				</div>
					</form>
			</div>
		
			
			
		
	<br>
<div id="container">
	
	<div class="nav">
	
			 <ul>
				<li><a href="home.jsp"><i class="icon-home"></i>Home</a></li>
				<li><a href="product1.jsp"><i class="icon-th-list"></i>Product</a>
				<li><a href="aboutus1.php"><i class="icon-bookmark"></i>About Us</a></li>
				<li><a href="contactus1.php"><i class="icon-inbox"></i>Contact Us</a></li>
				<li><a href="privacy1.jsp"><i class="icon-info-sign"></i>Privacy Policy</a></li>
				<li><a href="faqs1.php"><i class="icon-question-sign"></i>FAQs</a></li>
			</ul>
		</div>
		
		<div class="nav1">
			<ul>
				<li><a href="product1.jsp">Basketball</a></li>
				<li>|</li>
				<li><a href="football1.php" class="active" style="color:#111;">Football</a></li>
				<li>|</li>
				<li><a href="running1.jsp">Running</a></li>
			</ul>
				<a href="cart.php">
					<button class="btn btn-inverse" style="right:1%; position:fixed; top:10%;"><i class="icon-shopping-cart icon-white"></i> View Cart</button></a>
		</div>
	
	<div id="content">
		<br />
		<br />
		<div id="product">
			<form method="post">
			
			<?php 
				include ('function/addcart.php');
				
				$query = $conn->query("SELECT *FROM product WHERE category='football' ORDER BY product_id DESC") or die (mysqli_error());
				
					while($fetch = $query->fetch_array())
						{
						
						$pid = $fetch['product_id'];
						
						$query1 = $conn->query("SELECT * FROM stock WHERE product_id = '$pid'") or die (mysqli_error());
						$rows = $query1->fetch_array();
						
						$qty = $rows['qty'];
						if($qty <= 5){
						
						}else{
							echo "<div class='float'>";
							echo "<center>";
							echo "<a href='details.php?id=".$fetch['product_id']."'><img class='img-polaroid' src='photo/".$fetch['product_image']."' height = '300px' width = '300px'></a>";
							echo "".$fetch['product_name']."";
							echo "<br />";
							echo "<strong class='mad'>".$fetch['product_price']."</strong><em class='mad1'> MAD</em>";
							echo "<br />";
							echo "<h3 class='text-info' style='position:absolute; margin-top:-90px; text-indent:15px;'> Size: ".$fetch['product_size']."</h3>";
							echo "</center>";
							echo "</div>";
						}
						}
			?>
			
			</form>
		</div>
		
		
		

	</div>
		
	<br />
</div>
	<br />
	<div id="footer">
		<div class="foot">
			<label style="font-size:17px;"> Copyrght &copy; </label>
			<p style="font-size:25px;">SportShoes Inc. 2018</p>
		</div>
			
			<div id="foot">
				<h4>Links</h4>
					<ul>
						<a href="http://www.facebook.com/" target="_blank"><li>Facebook</li></a>
						<a href="http://www.twitter.com/" target="_blank"><li>Twitter</li></a>
						<a href="http://www.pinterest.com/" target="_blank"><li>Pinterest</li></a>
						<a href="http://www.instagram.com/" target="_blank"><li>Instagram</li></a>
					</ul>
			</div>
	</div>
</body>
</html>