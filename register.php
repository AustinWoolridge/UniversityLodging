<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <style>
	
	* {box-sizing: border-box;}

	body { 
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	}

	.header {
	overflow: hidden;
	background-color: #5F9EA0;
	padding: 20px 10px;
	}

	.header a {
	float: left;
	color: black;
	text-align: center;
	padding: 12px;
	text-decoration: none;
	font-size: 18px; 
	line-height: 25px;
	border-radius: 4px;
	}

	.header a.logo {
	font-size: 25px;
	font-weight: bold;
	}

	.header a:hover {
	background-color: #ddd;
	color: black;
	}

	.header a.active {
	background-color: dodgerblue;
	color: white;
	}

	.header-right {
	float: right;
	}

	@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	
	.header-right {
		float: none;
	}
	}

	.photo-size{
		width:500px;
		height:auto;
		align-items: left;
		border: solid 5px #B0C4DE;
	}
	.footer {   
		position: relative;
		left: 10px;  
		bottom: 5px;  
		right: 10px;   
		width: 95%;  
		background-color: gray;  
		color: white;  
		text-align: center;  
	}  
</style>
</head>
<body>
	<div class="header">
		<a href="index.html" class="logo">Accommodation & Registration</a>
		<div class="header-right">
			<a href="login.php">Log in</a>
			<a href="register.php">Register</a>
		</div>
	</div>


  <div class="myHeader">
  	<h2>Register</h2>
  </div>
  <form method="post" action="register.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <label>Username</label>
  	  <input type="text" name="username" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="email" name="email" value="<?php echo $email; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1">
  	</div>
  	<div class="input-group">
  	  <label>Confirm password</label>
  	  <input type="password" name="password_2">
  	</div>
  	<div class="input-group">
  	  <label>Name</label>
  	  <input type="text" title="Only upper/lower case text" pattern="[a-zA-Z'-'\s]*" name="Name" value="<?php echo $Name; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Surname</label>
  	  <input type="text" title="Only upper/lower case text" pattern="[a-zA-Z'-'\s]*" name="Surname" value="<?php echo $Surname; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Year of Service</label>
  	  <input type="number" name="yearofService" value="<?php echo $yearofService; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Does your spouse work?</label>
  	  <input type="checkbox" name="spouseWorking" style="align: 'left';" value="<?php echo $spouseWorking; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Do you have a car?</label>
  	  <input type="checkbox" name="haveCar" value="<?php echo $haveCar; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Do you have a Home?</label>
  	  <input type="checkbox" name="haveHome" value="<?php echo $haveHome; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Profession</label>
	  		<select name="profession" value="<?php echo $profession; ?>">
				<option value="ogretimGorevlisi">Ogretim Gorevlisi</option>
				<option value="arastirmaGorevlisi">Arastirma Gorevlisi</option>
				<option value="uzman">Uzman</option>
				<option value="yardimciDocent">Yardimci Docent</option>
				<option value="docent">Docent</option>
				<option value="profesor">Profesor</option>
			</select>
  	</div>
  	
	<div class="input-group">
  	  <label>Is user admin?</label>
  	  <input type="checkbox" name="isAdmin" value="<?php echo $isAdmin; ?>">
  	</div>

  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
  	<p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>

  
  <footer>
		<div class="footer">  
			@Copyright <a href=http://localhost/lojman/index.html> University of Sciences </a> 2022-06-24 All Right Reserved.   
		</div>  
	</footer>
</body>
</html>