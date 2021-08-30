<?php include 'core/init.php'; ?>
<?php 
	if (isset($_POST['call']) && !empty($_POST['call'])) {
		$callerno = $_POST['callerno'];
		$calledno = $_POST['calledno'];
		if (!empty($callerno) or !empty($calledno)) {
			$callerno = $getFromU->cleanInput($callerno);
			$calledno = $getFromU->cleanInput($calledno);
			$_SESSION['callerno'] = $callerno;
			$_SESSION['calledno'] = $calledno;
			$stm = $pdo->prepare("SELECT base_id FROM base_station");
			$stm->execute();
			$count = $stm->rowCount();
			if ($count > 0) {
				$_SESSION['random'] = rand(1, $count);
			}else{
				$_SESSION['random'] = 0;
			}
			header("Location:begincall.php");
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
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.runner.js"></script>
	</head>
<body>
	<nav class="navbar navbar-inverse">
  		<div class="container">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">GSM Management</a>
		    </div>
		    <ul class="nav navbar-nav navbar-right">
		      <li class="active"><a href="#">Home</a></li>
		       <li><a href="view_all_calls.php">View Call Log</a></li>
		    </ul>
	  </div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-md-6 col-md-offset-3" style="padding-top:50px;">
					<form action="subscriber.php" method="POST" style="border:1px solid #337ab7; padding:30px 30px;">
						<div class="form-group" style="padding: 0px 10px;margin-bottom: 30px;margin-top:20px;">
							<h3 class="text-primary" style="font-weight: bold">Make Call</h3>
						</div>

						<div class="form-group" style="padding: 0px 10px;">

							<select name="callerno" id="phone" class="form-control">
								<option value="num1">Choose the sim to use</option>
								<?php 
								$sub_email = $_SESSION['sub_email'];
								$stm = $pdo->prepare("SELECT phone_no FROM network_line WHERE sub_email = :sub_email");
								$stm->bindParam(":sub_email", $sub_email ,PDO::PARAM_STR);
								$stm->execute();
								if ($stm->rowCount() > 0) {
									while($rows = $stm->fetchObject()):?>
										<option value = "<?php echo $rows->phone_no ?>"><?php echo $rows->phone_no ?></option>";
									<?php endwhile; ?>

								<?php
								}
							 ?>
								
							</select>
						</div>

						<div class="form-group" style="padding: 0px 10px;">
							<input type="text" class="form-control" name="calledno" placeholder="Enter The Number">
						</div>


						<div class="form-group" style="padding: 0px 10px;" >
							<button type="submit" name="call" class="btn btn-primary" value = "mycall"><i class="fa fa-phone" style="font-size: 50px;">&nbsp;&nbsp;Start Call</i></button>
						</div>

				</form>
				</div>
			</div>
		</div>
	</div>
</body>
	
	

</body>
</html>