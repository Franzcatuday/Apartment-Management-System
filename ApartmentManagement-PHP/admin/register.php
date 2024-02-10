<?php 
include("config.php");
$error="";
$msg="";
if(isset($_REQUEST['insert']))
{
	$name=$_REQUEST['name'];
	$email=$_REQUEST['email'];
	$pass=$_REQUEST['pass'];
	$dob=$_REQUEST['dob'];
	$phone=$_REQUEST['phone'];
	
	if(!empty($name) && !empty($email) && !empty($pass)  && !empty($dob) && !empty($phone))
	{
		$sql="insert into admin (auser,aemail,apass,adob,aphone) values('$name','$email','$pass','$dob','$phone')";
		$result=mysqli_query($con,$sql);
		if($result)
			{
				$msg='Admin Register Successfully';
				
						
			}
			else
			{
				$error='* Not Register Admin Try Again';
			}
	}
	else{
		$error="* Please Fill all the Fields!";
	}
	
	
}
?>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Register</title>
		
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

	
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
	
        <link rel="stylesheet" href="assets/css/style.css">
		
		
    </head>
    <body>
	
		
        <div class="page-wrappers login-body">
            <div class="login-wrapper">
            	<div class="container">
                	<div class="loginbox">
                    	
                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>Register</h1>
								<p class="account-subtitle">Access to our dashboard</p>
								<p style="color:red;"><?php echo $error; ?></p>
								<p style="color:green;"><?php echo $msg; ?></p>
								<!-- Form -->
								<form method="post">
									<div class="form-group">
										<input class="form-control" type="text" placeholder="Name" name="name">
									</div>
									<div class="form-group">
										<input class="form-control" type="email" placeholder="Email" name="email">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" placeholder="Password" name="pass">
									</div>
									<div class="form-group">
										<input class="form-control" type="date" placeholder="Date of Birth" name="dob">
									</div>
									<div class="form-group">
										<input class="form-control" type="text" placeholder="Phone" name="phone" maxlength="10">
									</div>
									<div class="form-group mb-0">
										<input class="btn btn-primary btn-block" type="submit" name="insert" Value="Register">
									</div>
								</form>
								
								
								<div class="login-or">
									<span class="or-line"></span>
									<span class="span-or">or</span>
								</div>
								
								
								
								
								<div class="text-center dont-have">Already have an account? <a href="index.php">Login</a></div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
	
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		
		<script src="assets/js/script.js"></script>
		
    </body>

</html>