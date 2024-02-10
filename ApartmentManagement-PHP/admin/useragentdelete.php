<?php
include("config.php");
$uid = $_GET['id'];


$sql = "SELECT * FROM user where uid='$uid'";
$result = mysqli_query($con, $sql);
while($row = mysqli_fetch_array($result))
	{
	  $img=$row["uimage"];
	}
@unlink('user/'.$img);


$msg="";
$sql = "DELETE FROM user WHERE uid = {$uid}";
$result = mysqli_query($con, $sql);
if($result == true)
{
	$msg="<p class='alert alert-success'>Agent Deleted</p>";
	header("Location:useragent.php?msg=$msg");
}
else
{
	$msg="<p class='alert alert-warning'>Agent not Deleted</p>";
		header("Location:useragent.php?msg=$msg");
}

mysqli_close($con);
?>
