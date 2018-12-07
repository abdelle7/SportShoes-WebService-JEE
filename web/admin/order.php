<?php
	include("../function/session.php");
	include("../db/dbconn.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel = "stylesheet" type = "text/css" href="../css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<script src="../js/bootstrap.js"></script>
	<script src="../js/jquery-1.7.2.min.js"></script>
	<script src="../js/carousel.js"></script>
	<script src="../js/button.js"></script>
	<script src="../js/dropdown.js"></script>
	<script src="../js/tab.js"></script>
	<script src="../js/tooltip.js"></script>
	<script src="../js/popover.js"></script>
	<script src="../js/collapse.js"></script>
	<script src="../js/modal.js"></script>
	<script src="../js/scrollspy.js"></script>
	<script src="../js/alert.js"></script>
	<script src="../js/transition.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../javascripts/filter.js" type="text/javascript" charset="utf-8"></script>
	
		
		
</head>
<body>
	<div id="header" style="position:fixed;">
		<img src="../img/logo.jpg">
		<label>SportShoes</label>
		
			<?php
				$id = (int) $_SESSION['id'];
			
					$query = $conn->query ("SELECT * FROM admin WHERE adminid = '$id' ") or die (mysqli_error());
					$fetch = $query->fetch_array ();
			?>
				
			<ul>
				<li><a href="../function/admin_logout.php"><i class="icon-off icon-white"></i>logout</a></li>
				<li>Welcome:&nbsp;&nbsp;&nbsp;<i class="icon-user icon-white"></i><?php echo $fetch['username']; ?></a></li>
			</ul>
	</div>
			
	<div id="leftnav">
		<ul>
			<li><a href="admin_home.php" style="color:#333;">Dashboard</a></li>
			<li><a href="admin_feature.php">Products</a>
				<ul>
					<li><a href="admin_feature.php "style="font-size:15px; margin-left:15px;">Features</a></li>
					<li><a href="admin_product.php "style="font-size:15px; margin-left:15px;">Basketball</a></li>
					<li><a href="admin_football.php" style="font-size:15px; margin-left:15px;">Football</a></li>
					<li><a href="admin_running.php"style="font-size:15px; margin-left:15px;">Running</a></li>
				</ul>
			</li>
			<li><a href="transaction.php">Transactions</a></li>
			<li><a href="customer.php">Customers</a></li>
			<li><a href="message.php">Messages</a></li>
			<li><a href="order.php">Orders</a></li>
		</ul>
	</div>
	
	<div id="rightcontent" style="position:absolute; top:10%;">
			<div class="alert alert-info"><center><h2>Orders</h2></center></div>
			<br />
				<div style='width:975px;' class="alert alert-info">
					  <table class="table table-hover">	
						<thead>	
							<th>SHOE</th>
							<th>Transaction No.</th>
							<th>AMOUNT</th>
						</thead>
						  <tbody>
							<?php 
							$Q1 = $conn->query("SELECT * FROM transaction WHERE order_stat = 'Confirmed'");
							while($r1 = $Q1->fetch_array()){
							
							$tid = $r1['transaction_id'];
							
							$Q2 = $conn->query("SELECT * FROM transaction_detail LEFT JOIN product ON product.product_id = transaction_detail.product_id WHERE transaction_detail.transaction_id = '$tid' ");
							$r2 = $Q2->fetch_array();
							
							$pid = $r2['product_id'];
							$o_qty = $r2['order_qty'];
							
							$p_price = $r1['amount'];
							$brand = $r2['product_name'];
							
							echo "<tr>";
							echo "<td>".$brand."</td>";
							echo "<td>".$tid."</td>";
							echo "<td>".formatMoney($p_price)."</td>";
							echo "</tr>";
							}
							
							$Q3 = $conn->query("SELECT sum(amount) FROM transaction WHERE order_stat = 'Confirmed'");
							while($r3 = $Q3->fetch_array()){
							
							$amnt = $r3['sum(amount)'];
							echo "<tr><td></td><td>TOTAL : </td> <td><b> ".formatMoney($amnt)." MAD</b></td></tr>";
							}
							?>
						  </tbody>
					    </table>
				</div>
				
				<?php
function formatMoney($number, $fractional=false) {
    if ($fractional) {
        $number = sprintf('%.2f', $number);
    }
    while (true) {
        $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
        if ($replaced != $number) {
            $number = $replaced;
        } else {
            break;
        }
    }
    return $number;
}
?>



	
	
	</div>
	</form>
			</div>
			</div>
			
				
			
</body>
</html>