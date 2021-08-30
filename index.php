<?php 
	include 'core/init.php';
	if (isset($_POST['login']) && !empty($_POST['login'])) {
		$email = $_POST['email'];
		$password = $_POST['password'];
		if (!empty($email) or !empty($password)) {
			$email = $getFromU->cleanInput($email);
			$password = $getFromU->cleanInput($password);
			$password = md5($password);
			if($getFromU->loginSubcriber($email, $password) == false){
					$error = "email or password does not match";
				}

			}else{
				$error = "Please Enter Your username or Password";
			}
	}

 ?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Admin</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="assets/css/font/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/css/bootstrap.css"/>
		<link rel="stylesheet" href="assets/css/style-complete.css"/>
</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">GSM Management</a>
		    </div>
		    <ul class="nav navbar-nav navbar-right">
		      <li class="active"><a href="#">Home</a></li>
		       <li><a href="a-index.php">Admin Login</a></li>
		       <li><a href="#">Contact us</a></li>
		       <li><a href="#">About us</a></li>
		    </ul>
	  </div>
	</nav>
	<div class="container" style="margin-top:-20px;" id="image">
		
	</div>

	<div class="col-md-6 col-md-offset-3" style="padding-bottom: 50px;padding-top:30px;">
		<form action="index.php" method="POST" style="border:1px solid #337ab7; padding:10px 30px;">
			<div class="form-group" style="padding: 0px 10px;margin-bottom: 30px;margin-top:20px;">
				<h3 class="text-primary" style="font-weight: bold">Subscriber Login</h3>
			</div>

			<div class="form-group" style="padding: 0px 10px;">
				<input type="text" name="email" class="form-control" id="name" placeholder="Email">
			</div>

			<div class="form-group" style="padding: 0px 10px;">
				<input type="password" name="password" class="form-control" id="password" placeholder="Password">
			</div>

			<div class="form-group" style="padding: 0px 10px;" >
				<input type="submit" name="login" value="Login" class="btn" style="background-color: #222; color:white;padding:6px 20px;" />
			</div>

			<div class="form-group" style="padding: 0px 10px;" >
				<span style="color:red;">
							<?php if (isset($error)): ?>
							  <?php echo $error ?>
							<?php endif; ?>
				</span>
			</div>
				</form>
	</div>
</body>
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>