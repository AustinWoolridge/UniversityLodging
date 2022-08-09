<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration to University Accommodation</title>
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
		position: fixed;
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
			<a href="register.php">Register</a>
		</div>
	</div>
	<div class="myHeader">
			<h2>Login</h2>
	</div>
	 
	<form method="post" action="login.php">
		<?php include('errors.php'); ?>
		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" >
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="login_user">Login</button>
		</div>
		<p>
			Not yet a member of our University yet? <a href="register.php">Sign up</a>
		</p>
	
  	</form>

  	

  	<footer>
		<div class="footer">  
			@Copyright <a href=http://localhost/lojman/index.html"> University of Sciences </a> 2022-06-24 All Right Reserved.   
		</div>  
	</footer>
</body>
</html>