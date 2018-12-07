<?php
include('../db/dbconn.php');

	
	$id = $_GET['id'];
	$conn->query("DELETE FROM product WHERE product_id = '$id'") or die(mysqli_error());
  	echo "<script>window.location = '../admin/admin_feature.php'</script>";

?>