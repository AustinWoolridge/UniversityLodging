<?php
if(!isset($_SESSION)){
  session_start(); 
}

// initializing variables
$username = "";
$email    = "";
$Name    = "";
$Surname    = "";
$yearofService    = "";
$spouseWorking    = true;
$haveCar    = true;
$haveHome    = true;
$profession    = "";
$isAdmin    = true;
$secimLojman1    = "";
$secimLojman2    = "";
$secimLojman3    = "";
$secimLojman4    = "";
$errors = array(); 

error_reporting(0);

// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'lojman_mysql');

// REGISTER USER
if (isset($_POST['reg_user'])) {
  // receive all input values from the form
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $email = mysqli_real_escape_string($db, $_POST['email']);
  $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
  $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);
  $Name = mysqli_real_escape_string($db, $_POST['Name']);
  $Surname = mysqli_real_escape_string($db, $_POST['Surname']);
  $yearofService = mysqli_real_escape_string($db, $_POST['yearofService']);
  $spouseWorking = mysqli_real_escape_string($db, $_POST['spouseWorking']);
  $haveCar = mysqli_real_escape_string($db, $_POST['haveCar']);
  $haveHome = mysqli_real_escape_string($db, $_POST['haveHome']);
  $profession = mysqli_real_escape_string($db, $_POST['profession']);
  $isAdmin = mysqli_real_escape_string($db, $_POST['isAdmin']);
  
  // form validation: ensure that the form is correctly filled ...
  // by adding (array_push()) corresponding error unto $errors array
  if (empty($username)) { array_push($errors, "Username is required"); }
  if (empty($email)) { array_push($errors, "Email is required"); }
  if (empty($password_1)) { array_push($errors, "Password is required"); }
  if ($password_1 != $password_2) {
	array_push($errors, "The two passwords do not match");
  }
  if (empty($Name)) { array_push($errors, "Name is required"); }
  if (empty($Surname)) { array_push($errors, "Surname is required"); }
  if (empty($yearofService)) { array_push($errors, "Year of service is required"); }
  if (empty($profession)) { array_push($errors, "Profession is required"); }

  // first check the database to make sure 
  // a user does not already exist with the same username and/or email
  $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email' LIMIT 1";
  $result = mysqli_query($db, $user_check_query);
  $user = mysqli_fetch_assoc($result);
  
  if ($user) { // if user exists
    if ($user['username'] === $username) {
      array_push($errors, "Username already exists");
    }

    if ($user['email'] === $email) {
      array_push($errors, "email already exists");
    }
  }

  // Finally, register user if there are no errors in the form
  if (count($errors) == 0) {
  	$password = md5($password_1);//encrypt the password before saving in the database

  	$query = "INSERT INTO users (username, email, password, Name, Surname, yearofService, spouseWorking, haveCar, haveHome, profession, isAdmin) 
  			  VALUES('$username', '$email', '$password', '$Name', '$Surname', '$yearofService', '$spouseWorking', '$haveCar', '$haveHome', '$profession', '$isAdmin')";
  	mysqli_query($db, $query);
  	$_SESSION['username'] = $username;
    $_SESSION['Surname'] = $Surname;
    $_SESSION['isAdmin'] = $isAdmin;
  	$_SESSION['success'] = "You are now logged in";
  	header('location: index.php');
  }
}


// REGISTER 4 WANTED HOMES
if (isset($_POST['reg_lojman'])){
  
  $secimLojman1 = mysqli_real_escape_string($db, $_POST['secimLojman1']);
  $secimLojman2 = mysqli_real_escape_string($db, $_POST['secimLojman2']);
  $secimLojman3 = mysqli_real_escape_string($db, $_POST['secimLojman3']);
  $secimLojman4 = mysqli_real_escape_string($db, $_POST['secimLojman4']);
  $user_name = $_SESSION['username'];
  $myDate = date('y-m-d H:i:s');

  $querySecim = "INSERT INTO secimlojman (secimLojman1, user_name, currentTime) 
  VALUES ('$secimLojman1', '$user_name', '$myDate' )";
  mysqli_query($db, $querySecim);
  $querySecim2 = "INSERT INTO secimlojman (secimLojman1, user_name, currentTime) 
  VALUES ('$secimLojman2', '$user_name', '$myDate' )";
  mysqli_query($db, $querySecim2);
  $querySecim3 = "INSERT INTO secimlojman (secimLojman1, user_name, currentTime) 
  VALUES ('$secimLojman3', '$user_name', '$myDate' )";
  mysqli_query($db, $querySecim3);
  $querySecim4 = "INSERT INTO secimlojman (secimLojman1, user_name, currentTime) 
  VALUES ('$secimLojman4', '$user_name', '$myDate' )";
  mysqli_query($db, $querySecim4);

}


// LOGIN USER
if (isset($_POST['login_user'])) {
  $username = mysqli_real_escape_string($db, $_POST['username']);
  $password = mysqli_real_escape_string($db, $_POST['password']);

  if (empty($username)) {
  	array_push($errors, "Username is required");
  }
  if (empty($password)) {
  	array_push($errors, "Password is required");
  }

  if (count($errors) == 0) {
  	$password = md5($password);
  	$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  	$results = mysqli_query($db, $query);
  	if (mysqli_num_rows($results) == 1) {
  	  $_SESSION['username'] = $username;
  	  $_SESSION['success'] = "You are now logged in";
  	  header('location: index.php');
  	}else {
  		array_push($errors, "Wrong username/password combination");
  	}
  }
}

/*
    $sql = "SELECT * FROM `users`";
    $result = $db->query($sql);

    if ($result->num_rows > 0){
      // output data of each row
    while($row = $result->fetch_assoc()) {
      echo $row["email"];;
    }
    } else {
    echo "0 results";
    }
*/       

?>