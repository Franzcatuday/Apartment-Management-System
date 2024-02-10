<?php
session_start();
require("config.php");
////code
 
if(!isset($_SESSION['auser']))
{
	header("location:index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Admin Dashboard</title>
		
	
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
	
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		
        <link rel="stylesheet" href="assets/css/feathericon.min.css">
		
		<link rel="stylesheet" href="assets/plugins/morris/morris.css">
	
        <link rel="stylesheet" href="assets/css/style.css">
		
		
    </head>
    <body>
	


		
				<?php include("header.php"); ?>
			
			
            <div class="page-wrapper">
			
                <div class="content container-fluid">
					
					
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">Welcome Admin!</h3>
								<p></p>
								<ul class="breadcrumb">
									<li class="breadcrumb-item active">Dashboard</li>
								</ul>
							</div>
						</div>
					</div>
					

					<div class="row">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon bg-primary">
											<i class="fe fe-users"></i>
										</span>
										
									</div>
									<div class="dash-widget-info">
										
										<h3><?php $sql = "SELECT * FROM user WHERE utype = 'user'";
										$query = $con->query($sql);
                						echo "$query->num_rows";?></h3>
										
										<h6 class="text-muted">Registered Users</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-primary w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon bg-success">
											<i class="fe fe-users"></i>
										</span>
										
									</div>
									<div class="dash-widget-info">
										
									<h3><?php $sql = "SELECT * FROM user WHERE utype = 'agent'";
										$query = $con->query($sql);
                						echo "$query->num_rows";?></h3>
										
										<h6 class="text-muted">Agents</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-success w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon bg-warning">
											<i class="fe fe-table"></i>
										</span>
										
									</div>
									<div class="dash-widget-info">
										
									<h3><?php $sql = "SELECT * FROM property where type = 'apartment'";
										$query = $con->query($sql);
                						echo "$query->num_rows";?></h3>
										
										<h6 class="text-muted">No. of Apartments</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-info w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
					</div>


					

						
					</div>

					
							
						</div>	
					</div> 
				</div>			
			</div>
		
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<script src="assets/plugins/raphael/raphael.min.js"></script>    
		<script src="assets/plugins/morris/morris.min.js"></script>  
		<script src="assets/js/chart.morris.js"></script>
		
	
		<script  src="assets/js/script.js"></script>
		
    </body>

</html>
