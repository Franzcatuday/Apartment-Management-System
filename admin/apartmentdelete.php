<?php
include("config.php");
$pid = $_GET['id'];
$sql = "DELETE FROM property WHERE pid = {$pid}";
$result = mysqli_query($con, $sql);
if($result == true)
{
	$msg="<p class='alert alert-success'>Apartment Deleted</p>";
	header("Location:apartmentview.php?msg=$msg");
}
else{
	$msg="<p class='alert alert-warning'>Apartment Not Deleted</p>";
	header("Location:apartmentview.php?msg=$msg");
}
mysqli_close($con);
?>