<?php
	include_once "connection.php";

	// $First_Name = $_POST['fname'];
	// $Middle_Name = $_POST['mname'];
	// $Last_Name = $_POST['lname'];
	// $Father_Name = $_POST['fathername'];
	// $Mother_Name = $_POST['mothername'];
	// $Date_of_Birth = $_POST['dob'];
	// $Membership = $_POST['membership'];
	// $Signature = $_POST['signature'];
	// $Date = $_POST['date'];

	// $sql1 = "INSERT INTO player (first_name, middle_name, last_name, father_name, mother_name, date_of_birth,
	// 							 membership, signature, datee)
	// 		VALUES ('$First_Name', '$Middle_Name', '$Last_Name', '$Father_Name', '$Mother_Name',
	// 			    '$Date_of_Birth', '$Membership', '$Signature', '$Date')";

	// mysqli_query($conn, $sql1);

	// $House_No1 = $_POST['houseNo'];
	// $Location1 = $_POST['location'];
	// $Street1 = $_POST['street'];
	// $Thana1 = $_POST['thana'];
	// $District1 = $_POST['district'];
	// $Post_Code1 = $_POST['postcode'];

	// $sql2 = "INSERT INTO address (house_no, location, street, thana, district, post_code)
	// 		VALUES ('$House_No1', '$Location1', '$Street1', '$Thana1', '$District1', 
	// 				'$Post_Code1')";

	// mysqli_query($conn, $sql2);

	// $House_No2 = $_POST['houseNo'];
	// $Location2 = $_POST['location'];
	// $Street2 = $_POST['street'];
	// $Thana2 = $_POST['thana'];
	// $District2 = $_POST['district'];
	// $Post_Code2 = $_POST['postcode'];

	// $sql3 = "INSERT INTO address (house_no, location, street, thana, district, post_code)
	// 		VALUES ('$House_No2', '$Location2', '$Street2', '$Thana2', '$District2', 
	// 				'$Post_Code2')";

	// mysqli_query($conn, $sql3);


	// $Club_Name1 = $_POST['cname'];
	// $Start_date = $_POST['from'];
	// $End_date = $_POST['to'];
	// $Total_runs = $_POST['truns'];
	// $Total_wickets = $_POST['twickets'];
	// $Team_leader = $_POST['tleader'];

	// $sql4 = "INSERT INTO club (club_name, start_date, end_date, total_runs, total_wickets, team_leader)
	// 		VALUES ('$Club_Name1', '$Start_date', '$End_date', '$Total_runs', '$Total_wickets', 
	// 				'$Team_leader')";

	// mysqli_query($conn, $sql4);

	// $Club_Name2 = $_POST['cname'];
	// $Opponent_Club_Name = $_POST['ocname'];
	// $Event_Id = $_POST['eid'];
	// $Match_Id = $_POST['mid'];
	// $Runs = $_POST['runs'];
	// $Wickets = $_POST['wickets'];

	// $sql5 = "INSERT INTO best_performance (club_name, opponent_club_name, e_id, m_id, runs, wickets)
	// 		VALUES ('$Club_Name2', '$Opponent_Club_Name', '$Event_Id', '$Match_Id', '$Runs', 
	// 				'$Wickets')";

	// mysqli_query($conn, $sql5);

	$Name_of_degree = $_POST['nod'];
	$Institute = $_POST['institute'];
	$Board = $_POST['board'];
	$Year = $_POST['year'];
	$Result = $_POST['result'];


	$sql_6 = "INSERT INTO qualifications (degree_name, institute, board, year, result)
			VALUES ('$Name_of_degree', '$Institute', '$Board', '$Year', '$Result')";

	mysqli_query($conn, $sql_6);


	echo "Inserted Successfully";

	// header("Location: Player Registration Form.php?signup=success");
?>