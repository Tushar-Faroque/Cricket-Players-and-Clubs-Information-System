<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// player table
		$First_Name = $_POST['fname'];
		$Middle_Name = $_POST['mname'];
		$Last_Name = $_POST['lname'];
		$Father_Name = $_POST['fathername'];
		$Mother_Name = $_POST['mothername'];
		$Date_of_Birth = $_POST['dob'];
		$Membership = $_POST['membership'];
		$Signature = $_POST['signature'];
		$Date = $_POST['date'];

		$sql1 = "INSERT INTO player (first_name, middle_name, last_name, father_name, mother_name, date_of_birth,
								 membership, signature, datee)
				VALUES ('".$First_Name."','".$Middle_Name."','".$Last_Name."','".$Father_Name."','".$Mother_Name."','".$Date_of_Birth."','".$Membership."','".$Signature."','".$Date."')";

		mysqli_query($conn, $sql1);

		//address table
		$House_No1 = $_POST['houseNo'];
		$Location1 = $_POST['location'];
		$Street1 = $_POST['street'];
		$Thana1 = $_POST['thana'];
		$District1 = $_POST['district'];
		$Post_Code1 = $_POST['postcode'];

		$sql2 = "INSERT INTO address (house_no, location, street, thana, district, post_code)
				 VALUES ('".$House_No1."', '".$Location1."', '".$Street1."', '".$Thana1."', '".$District1."', '".$Post_Code1."')";

		mysqli_query($conn, $sql2);

		$House_No2 = $_POST['houseNo2'];
		$Location2 = $_POST['location2'];
		$Street2 = $_POST['street2'];
		$Thana2 = $_POST['thana2'];
		$District2 = $_POST['district2'];
		$Post_Code2 = $_POST['postcode2'];

		$sql3 = "INSERT INTO address (house_no, location, street, thana, district, post_code)
				 VALUES ('".$House_No2."', '".$Location2."', '".$Street2."', '".$Thana2."', '".$District2."', '".$Post_Code2."')";

		mysqli_query($conn, $sql3);

		//previous_history table
		$Club_Name = $_POST['cname'];
		$Start_date = $_POST['from'];
		$End_date = $_POST['to'];
		$Total_Runs = $_POST['truns'];
		$Total_Wickets = $_POST['twickets'];
		$Team_Leader = $_POST['tleader'];

		$sql4 = "INSERT INTO previous_history (club_name, start_date, end_date, total_runs, total_wickets, team_leader)
				 VALUES ('".$Club_Name."', '".$Start_date."', '".$End_date."', '".$Total_Runs."', '".$Total_Wickets."', '".$Team_Leader."')";

		mysqli_query($conn, $sql4);

		$Club_Name2 = $_POST['cname2'];
		$Start_date2 = $_POST['from2'];
		$End_date2 = $_POST['to2'];
		$Total_Runs2 = $_POST['truns2'];
		$Total_Wickets2 = $_POST['twickets2'];
		$Team_Leader2 = $_POST['tleader2'];

		$sql5 = "INSERT INTO previous_history (club_name, start_date, end_date, total_runs, total_wickets, team_leader)
				 VALUES ('".$Club_Name2."', '".$Start_date2."', '".$End_date2."', '".$Total_Runs2."', '".$Total_Wickets2."', '".$Team_Leader2."')";

		mysqli_query($conn, $sql5);

		//Best Performance
		$Club_Name3 = $_POST['cname3'];
		$Opponent_Club_Name3 = $_POST['ocname3'];
		$Event_Id3 = $_POST['eid3'];
		$Match_Id3 = $_POST['mid3'];
		$Runs3 = $_POST['runs3'];
		$Wickets3 = $_POST['wickets3'];

		$sql6 = "INSERT INTO best_performance (club_name, opponent_club_name, e_id, m_id, runs, wickets)
				 VALUES ('".$Club_Name3."', '".$Opponent_Club_Name3."', '".$Event_Id3."', '".$Match_Id3."', '".$Runs3."', '".$Wickets3."')";

		mysqli_query($conn, $sql6);

		$Club_Name4 = $_POST['cname4'];
		$Opponent_Club_Name4 = $_POST['ocname4'];
		$Event_Id4 = $_POST['eid4'];
		$Match_Id4 = $_POST['mid4'];
		$Runs4 = $_POST['runs4'];
		$Wickets4 = $_POST['wickets4'];

		$sql7 = "INSERT INTO best_performance (club_name, opponent_club_name, e_id, m_id, runs, wickets)
				 VALUES ('".$Club_Name4."', '".$Opponent_Club_Name4."', '".$Event_Id4."', '".$Match_Id4."', '".$Runs4."', '".$Wickets4."')";

		mysqli_query($conn, $sql7);

		$Club_Name5 = $_POST['cname5'];
		$Opponent_Club_Name5 = $_POST['ocname5'];
		$Event_Id5 = $_POST['eid5'];
		$Match_Id5 = $_POST['mid5'];
		$Runs5 = $_POST['runs5'];
		$Wickets5 = $_POST['wickets5'];

		$sql8 = "INSERT INTO best_performance (club_name, opponent_club_name, e_id, m_id, runs, wickets)
				 VALUES ('".$Club_Name5."', '".$Opponent_Club_Name5."', '".$Event_Id5."', '".$Match_Id5."', '".$Runs5."', '".$Wickets5."')";

		mysqli_query($conn, $sql8);


		//qualifications table 
		$Name_of_degree = $_POST['nod'];
		$Institute = $_POST['institute'];
		$Board = $_POST['board'];
		$Year = $_POST['year'];
		$Result = $_POST['result'];

		$sql9 = "INSERT INTO qualifications (degree_name, institute, board, year, result)
				  VALUES ('".$Name_of_degree."', '".$Institute."', '".$Board."', '".$Year."', '".$Result."')";

		mysqli_query($conn, $sql9);

		$Name_of_degree2 = $_POST['nod2'];
		$Institute2 = $_POST['institute2'];
		$Board2 = $_POST['board2'];
		$Year2 = $_POST['year2'];
		$Result2 = $_POST['result2'];

		$sql10 = "INSERT INTO qualifications (degree_name, institute, board, year, result)
				  VALUES ('".$Name_of_degree2."', '".$Institute2."', '".$Board2."', '".$Year2."', '".$Result2."')";

		mysqli_query($conn, $sql10);

		// if ($conn->query($query) === TRUE) {
		// 	echo "New record created successfully";
		// } else {
		// 	echo "Error: Not Inserted";
		// }

		// $conn->close();
	}
?>