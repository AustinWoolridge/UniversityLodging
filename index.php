<?php 
  session_start(); 

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
  	include('server.php')

  
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

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.css" />
	<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid-theme.min.css" />
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jsgrid/1.5.3/jsgrid.min.js"></script>
	
</head>
<body>

	<div class="header">
		<a href="index.html" class="logo">Accommodation & Registration</a>
		<div class="header-right">
		</div>
	</div>

	<div class="myHeader">
		<h2>Home Pagee</h2>
	</div>



	<div class="content">
		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
		<div class="error success" >
			<h3>
			<?php 
				echo $_SESSION['success']; 
				unset($_SESSION['success']);
			?>
			</h3>
		</div>
		<?php endif ?>

		<!-- logged in user information -->
		<?php  if (isset($_SESSION['username'])) : ?>
			<p style="text-align:center;">Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
			<div style="text-align:center;">
				<button > <a href="index.php?logout='1'" style="color: red; text-decoration: none;">Log Out</a> </button>
			</div>
		<?php endif ?>
	</div>

<script>
 
    $('#grid_table').jsGrid({

     width: "100%",
     height: "600px",

     filtering: true,
     inserting:true,
     editing: true,
     sorting: true,
     paging: true,
     autoload: true,
     pageSize: 10,
     pageButtonCount: 5,
     deleteConfirm: "Do you really want to delete data?",

     controller: {
      loadData: function(filter){
       return $.ajax({
        type: "GET",
        url: "fetch_data.php",
        data: filter
       });
      },
      insertItem: function(item){
       return $.ajax({
        type: "POST",
        url: "fetch_data.php",
        data:item
       });
      },
      updateItem: function(item){
       return $.ajax({
        type: "PUT",
        url: "fetch_data.php",
        data: item
       });
      },
      deleteItem: function(item){
       return $.ajax({
        type: "DELETE",
        url: "fetch_data.php",
        data: item
       });
      },
     },

     fields: [
      {
       name: "id",
    type: "hidden",
    css: 'hide'
      },
      {
       name: "first_name", 
    type: "text", 
    width: 150, 
    validate: "required"
      },
      {
       name: "last_name", 
    type: "text", 
    width: 150, 
    validate: "required"
      },
      {
       name: "age", 
    type: "text", 
    width: 50, 
    validate: function(value)
    {
     if(value > 0)
     {
      return true;
     }
    }
      },
      {
       name: "gender", 
    type: "select", 
    items: [
     { Name: "", Id: '' },
     { Name: "Male", Id: 'male' },
     { Name: "Female", Id: 'female' }
    ], 
    valueField: "Id", 
    textField: "Name", 
    validate: "required"
      },
      {
       type: "control"
      }
     ]

    });

</script>
	
	<?php 
		include 'server.php';
		$help1 = $_SESSION['username'];
		$myAdmin = $db->query("SELECT isAdmin FROM users WHERE username = '$help1'");
		$myAdmin1 = $myAdmin->fetch_array();
		
		if ($myAdmin1[0] === '1'): ?>
		<div class="input-group"> 
			<form method="post">
				<input type="submit" name="button1"
						class="button" value="Atama işlemi" />
			</form>
		</div>
		<div class="input-group"> 
			<form method="post">
				<input type="submit" name="button2"
						class="button" value="Atama işlemi iptali" />
			</form>
		</div>

		
		

		<?php else : ?>
				<form method="post" action="">
					<div class="input-group">
					<label>Chosen Accommodation 1</label>
						<select name="secimLojman1" value="<?php echo $secimLojman1; ?>">
							<?php 
								$sql = mysqli_query($db, "SELECT address FROM lojmans WHERE doluBos = 0");
								while ($row = $sql->fetch_array()){
								
								echo "<option value=";
								echo "\"$row[0]\"" ;
								echo " >" ;
								echo "$row[0]";
								echo "</option>";
								}
							?>
						</select>
					</div>

					
					<div class="input-group">
					<label>Chosen Accommodation 2</label>
						<select name="secimLojman2" value="<?php echo $secimLojman2; ?>">
							<?php 
								$sql = mysqli_query($db, "SELECT address FROM lojmans WHERE doluBos = 0");
								while ($row = $sql->fetch_array()){
								
								echo "<option value=";
								echo "\"$row[0]\"" ;
								echo " >" ;
								echo "$row[0]";
								echo "</option>";
								}
							?>
						</select>
					</div>
					<div class="input-group">
					<label>Chosen Accommodation 3</label>
						<select name="secimLojman3" value="<?php echo $secimLojman3; ?>">
							<?php 
								$sql = mysqli_query($db, "SELECT address FROM lojmans WHERE doluBos = 0");
								while ($row = $sql->fetch_array()){
								
								echo "<option value=";
								echo "\"$row[0]\"" ;
								echo " >" ;
								echo "$row[0]";
								echo "</option>";
								}
							?>
						</select>
					</div>
					<div class="input-group">
					<label>Chosen Accommodation 4</label>
						<select name="secimLojman4" value="<?php echo $secimLojman4; ?>">
							<?php 
								$sql = mysqli_query($db, "SELECT address FROM lojmans WHERE doluBos = 0");
								while ($row = $sql->fetch_array()){
								
								echo "<option value=";
								echo "\"$row[0]\"" ;
								echo " >" ;
								echo "$row[0]";
								echo "</option>";
								}
								
							?>
						</select>
					</div>
					
					
					<div class="input-group">
						<?php 
							$help4= $_SESSION['username'];
							$sql2 = mysqli_query($db, "SELECT user_name FROM secimlojman WHERE user_name = '$help4'");
							$mysql2 = $sql2->fetch_all();
							$mysql2i = $mysql2[0][0];


							if($mysql2i === null){
								echo "<button type=\"submit\" class=\"btn\" name=\"reg_lojman\"> Choose </button>";
							}
						?>
					</div>

					

					<div>
						
						<table class="table table-bordered">

						<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
						<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
								
						
							<thead>
								<tr>
								<th>Chosen Accommodation 1</th>
									<th>Chosen Accommodation 2</th>
									<th>Chosen Accommodation 3</th>
									<th>Chosen Accommodation 4</th>
									<th>Date & Hour</th>
								</tr>
							</thead>	

							<tbody>
								<tr>
									<?php 

										$help2 = $_SESSION['username'];
										$sql1 = mysqli_query($db, "SELECT secimLojman1
										FROM secimlojman
										WHERE user_name = '$help2'
										");
										$secimler = $sql1->fetch_all();

										for($a = 0; $a < 4; $a++){
											$secimler1 = $secimler[$a][0];
											
												echo "<td>";
													echo "$secimler1";
												echo "</td>";
										}

										$sql2 = mysqli_query($db, "SELECT currentTime
										FROM secimlojman
										WHERE user_name = '$help2'
										");
										$secimlerTime = $sql2->fetch_all();
										$secimlerTimea = $secimlerTime[0][0];

										echo "<td>$secimlerTimea</td>";

										
									?>
								</tr>
							</tbody>
						</table>
					
					</div>
					<div class="input-group">
							<button method="post" action="" type="submit" class="btn" name="delete" >Delete </button>
					</div>
					
					
					
				</form>
				
					
				
	<?php endif ?>

	
	
	<?php
		//show my accommidation
		
		include 'server.php';

		

		if(isset($_POST['delete'])){


			$help3 = $_SESSION['username'];

			mysqli_query($db, "DELETE
			FROM secimlojman 
			WHERE user_name = '$help3'

			
			");

		}

		if(isset($_POST['button1'])) {
			echo "<pre>";


			$userNo = $db->query("SELECT COUNT(*)
			FROM users");
			$userNo1 = $userNo->fetch_array();
			// print_r($accomNo1[0]);

			$myArray = array();
			for($i = 1; $i <= $userNo1[0]; $i++){ 
				//taking lojman informations
				$result = $db->query("SELECT SUM(yearofService*10 + (CASE
				WHEN profession ='profesor' THEN 0
				WHEN profession = 'docent' THEN 15
				WHEN profession = 'yardimciDocent' THEN 30
				WHEN profession = 'uzman' THEN 45
				WHEN profession = 'arastirmaGorevlisi' THEN 60
				WHEN profession = 'ogretimGorevlisi' THEN 75
				ELSE 0
				END) + spouseWorking*(-75) + haveCar*(-50) + haveHome*(-100) 
				+ isAdmin*(-10000)
				) 
				AS pointUser FROM users WHERE id = $i");

				
				$all = $result->fetch_all();

				$value = $all[0][0];
				$myArray[] = "$value";
				// print($myArray[0]);


				$myQuery = "UPDATE users
				SET usersPoints = '$value'
				WHERE id =$i
				";
  				mysqli_query($db, $myQuery);
				

			}

			
			// $notSortedmyArray = $myArray;

			// print_r($notSortedmyArray);


			

			// rsort($myArray);

			
			// print_r($myArray);

			// $flippedmyArray = array_flip($myArray);

			// print_r($flippedmyArray);

			$accomNo = $db->query("SELECT COUNT(*)
			FROM lojmans");
			$accomNo1 = $accomNo->fetch_array();

			$myArray2 = array();
			for($i = 1; $i <= $accomNo1[0]; $i++){ 
				//taking lojman informations
				$result6 = $db->query("SELECT  SUM(meterSquare + direction*10 + `floor`) AS pointLojman, $i FROM lojmans WHERE id = $i");
			
				
				$all6 = $result6->fetch_all();
				$value2 = $all6[0][0];
				$value3 = $all6[0][1];
				$myArray2[] = "$value2";
				$myArray3[] = "$value3";


				$myQuery2 = "UPDATE lojmans
				SET lojmanPoints = '$value2'
				WHERE id =$i
				";
  				mysqli_query($db, $myQuery2);
			}

			// $flippedmyArray2= array_flip($myArray2);

			// print_r($flippedmyArray2);

			// rsort($myArray2);

			
			// $flippedmyArray2sorted = array_flip($myArray2);

			// print_r($flippedmyArray2sorted);


			$printVal = $db->query("SELECT username FROM users WHERE username != 'admin'  ORDER BY `usersPoints` DESC");
			$printuserName = $printVal->fetch_all();
			$printVal1 = $db->query("SELECT name FROM users WHERE username != 'admin' ORDER BY usersPoints DESC ");
			$printName = $printVal1 ->fetch_all();

			$printVal3 = $db->query("SELECT address
			FROM lojmans
			WHERE doluBos = 0 
			ORDER BY lojmanPoints DESC");
			$printfornonChoosers = $printVal3->fetch_all();
			
			
			
			// print_r($printuserName);
			
			echo "<table border='1' width='600' align = 'center'>
			<tr>
			<th align ='left'>user name</th>
			<th align ='left'>name</th>
			<th align ='left'>Accommodation</th>
			<th align ='left'>Application Date</th>
			<th align ='left'>Date of Issue</th>
			</tr>"; 
			
			for($a = 0 ; $a < $userNo1[0]-1  ; $a++){


				$printuserNamea = $printuserName[$a][0];
				$printNamea = $printName[$a][0];

				$printVal2 = $db->query("SELECT secimLojman1 
				FROM secimlojman
				WHERE user_name = '$printuserNamea'
				AND doluBos = 0
				");
				$printAddress = $printVal2 ->fetch_all();
				// print_r($printAddress);
				
				$printAddressa = $printAddress[0][0];

				// print($printAddressa);

				// if($a>0){
				// 	$printAddressa = $printAddress[$a-1][0];
				// };

				// print($printAddressa);

				// print_r($printAddress);
				// print_r($printAddress);
				
				echo "<tr>";
				echo "<td>$printuserNamea </td>";
				echo "<td>$printNamea </td>";
				if($printAddressa === null){

					echo "<td>There is no eligable houses</td>";

				}else{
					echo "<td>$printAddressa </td>";
				}
				
				$printVal5 = $db->query("SELECT currentTime 
				FROM secimlojman
				WHERE user_name = '$printuserNamea'
				AND doluBos = 0
				");
				$printDate = $printVal5 ->fetch_all();
				// print_r($printAddress);
				
				$printDatea = $printDate[0][0];

				echo "<td>$printDatea</td>";

				//current Date
				$date = date('y-m-d H:i:s');
				echo "<td>$date</td>";

				echo "</tr>";

				$myQuery3 = "UPDATE lojmans SET doluBos = 1 WHERE address = '$printAddressa' ";
  				mysqli_query($db, $myQuery3);
				$myQuery4 = "UPDATE secimlojman SET doluBos = 1 WHERE secimLojman1 = '$printAddressa' ";
  				mysqli_query($db, $myQuery4);

				$myQuery5 = "UPDATE users SET secimLojman1 = '$printAddressa' WHERE username = '$printuserNamea' ";
  				mysqli_query($db, $myQuery5);

			}
			echo "
			
			</table>";


			

			// $printVal = $db->query("SELECT `name` FROM users ");
			// $printName = $printval1->fetch_all();
			// $printName1= $printName[0][0];
			// print_r($printName1);
			// $help = $_SESSION['username'];
			// $printVal = $db->query("SELECT name FROM users WHERE username = '$help'");
			// $printVal2 = $db->query("SELECT surname FROM users WHERE username = '$help'");
			// $printVal3 = $db->query("SELECT id FROM users WHERE username = '$help'");
			
			// $printName = $printVal->fetch_all();
			// $printSName = $printVal2->fetch_all();
			// $oldID = $printVal3->fetch_all();
			
			// $printName1= $printName[0][0];
			// $printSName1= $printSName[0][0];
			// $oldID1= $oldID[0][0];

			

			// $a = $notSortedmyArray[$oldID1-1];
			// $newID = $flippedmyArray[$notSortedmyArray[$oldID1-1]] +1;
			
			

			// if($newID > $accomNo1[0][0]){
			// 	$accomIDFinal1 = "There is no eligable homes for this semester.";
			// }else{
			// $b = $myArray2[$newID-1];
			// $accomID = $flippedmyArray2[$b] +1;

			// $printVal4 = $db->query("SELECT address FROM lojmans WHERE id = $accomID ");
			// $accomIDFinal = $printVal4->fetch_all();
			// $accomIDFinal1 = $accomIDFinal[0][0];
			// }
			// print_r($accomIDFinal1);
			

			
			
				

			// print("<table border='1' width='600' align = 'center'>
			// <tr>
			// <th align ='left'>Name</th>
			// <th align ='left'>Surname</th>
			// <th align ='left'>Accommodation</th>
			// </tr>
			// <td>$printName1</td>
			// <td>$printSName1</td>
			// <td>$accomIDFinal1</td>
			// <tr>
			// </tr>
			// </table>");
		
		}


		if(isset($_POST['button2'])){

			$myQuery4 = "UPDATE lojmans 
			SET doluBos = 0
			";
			mysqli_query($db, $myQuery4);

			$myQuery5 = "UPDATE secimlojman 
			SET doluBos = 0
			";
			mysqli_query($db, $myQuery5);

			$myQuery6 = "UPDATE users SET secimLojman1 = null ";
			mysqli_query($db, $myQuery6);

		}
			

		
	?>



	<script type = "text/javascript">
			//FETCHING OUR RECORD
			$("#list").click(function(){
			loadData();
			})



		//FUNCTION TO LOAD OUR RECORDS
		function loadData(){
				$("#itemlist").children().remove();
			db.transaction(function(transaction){
				var sql="SELECT * FROM items ORDER BY id DESC";
				transaction.executeSql(sql,undefined,function(transaction,result){
			if(result.rows.length){

			for(var i=0;i<result.rows.length;i++){
				var row=result.rows.item(i);
				var item=row.item;
				var id=row.id;
				var quantity=row.quantity;
				$("#itemlist").append('<tr id="del'+id+'"><td>'+id+'</td><td>'+item+'</td><td id="newqty'+id+'">'+quantity+'</td><td><a href="#" class="btn btn-danger deleteitem" data-id="'+id+'">Delete</a> <a href="#" class="btn btn-primary updateitem" data-id="'+id+'">Update</a></td></tr>');
			}
		}
	</script>

	
	<footer>
		<div class="footer">  
			@Copyright <a href="http://localhost/lojman/index.html"> University of Sciences </a> 2022-06-24 All Right Reservedd 
		</div>  
	</footer>
</body>
</html>