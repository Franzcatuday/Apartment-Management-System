<?php
session_start();
require("config.php");
////code
 
if(!isset($_SESSION['auser']))
{
	header("location:index.php");
}
?>  
  <div class="header">
			
				
                <div class="header-left">
                    <a href="dashboard.php" class="logo">
						<img src="assets/img/logooo.jpg" alt="Logo">
					</a>
					<a href="dashboard.php" class="logo logo-small">
					</a>
                </div>
			
				
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="fe fe-text-align-left"></i>
				</a>
				

			
				<a class="mobile_btn" id="mobile_btn">
					<i class="fa fa-bars"></i>
				</a>
				
				<ul class="nav user-menu">

					<?php echo $_SESSION['auser'];?></h4>
					<li class="nav-item dropdown app-dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar2.png" width="31" alt="Ryan Taylor"></span>
						</a>
						
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="assets/img/profiles/avatar2.png" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									<h6><?php echo $_SESSION['auser'];?></h6>
									<p class="text-muted mb-0">Administrator</p>
								</div>
							</div>
							<a class="dropdown-item" href="profile.php">Profile</a>
							<a class="dropdown-item" href="logout.php">Logout</a>
						</div>
					</li>

				
					
				</ul>
				
				
            </div>
			
		
			
			
			
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Main</span>
							</li>
							<li> 
								<a href="dashboard.php"><i class="fe fe-home"></i> <span>Dashboard</span></a>
							</li>
							
						
						
							
							<li class="menu-title"> 
								<span>All Users</span>
							</li>
						
							<li class="submenu">
								<a href="#"><i class="fe fe-user"></i> <span> All Users </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="adminlist.php"> Admin </a></li>
									<li><a href="useragent.php"> Agent </a></li>
									
								</ul>
					</li>

							
						
							<li class="menu-title"> 
								<span>Apartment Management</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-map"></i> <span> Apartment</span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="apartmentadd.php"> Add Apartment</a></li>
									<li><a href="apartmentview.php"> View Apartment </a></li>
									
								</ul>
							</li>
							
							
							
							<li class="menu-title"> 
								<span>Feedback</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-comment"></i> <span> Feedback </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									
									<li><a href="feedbackview.php"> Feedback </a></li>
								</ul>
							</li>
							<li class="menu-title"> 
								<span>About us</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-browser"></i> <span> About Page </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="aboutadd.php"> Add About Content </a></li>
									<li><a href="aboutview.php"> View About </a></li>
								</ul>
							</li>

							<li class="submenu">
								<a href="#"><i class="fe fe-user"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="index.php"> Login </a></li>
									<li><a href="register.php"> Register </a></li>
									
								</ul>
							</li> 
							
						</ul>
					</div>
                </div>
            </div>
			
