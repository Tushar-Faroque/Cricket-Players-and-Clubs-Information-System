<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT pid, first_name, middle_name, last_name, 
				    father_name, mother_name, date_of_birth,
				    membership, signature, datee
			 FROM player";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From Player Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "Player ID: " . $row["pid"]. "<br>Name: " . $row["first_name"]. " " . $row["middle_name"]. " " . $row["last_name"]. "<br>Father Name: " . $row["father_name"]. "<br>Mother Name: " . $row["mother_name"]. "<br>Date Of Birth: " . $row["date_of_birth"]. "<br>Membership: " . $row["membership"]. "<br>Signature: " . $row["signature"]. "<br>Date: " . $row["datee"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql2 = "SELECT address_id, house_no, location, street, thana, district, post_code
			 FROM address";

	$result2 = $conn->query($sql2);

	if ($result2->num_rows > 0) {
	    // output data of each row
	    echo "Showing From Address Table<br><br>";
	    while($row = $result2->fetch_assoc()) {
	        echo "Address ID: " . $row["address_id"]. "<br>House No: " . $row["house_no"]. "<br>Location: " . $row["location"]. "<br>Street: " . $row["street"]. "<br>Thana: " . $row["thana"]. "<br>District: " . $row["district"]. "<br>Post Code: " . $row["post_code"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}


	$sql3 = "SELECT c_id, club_name, start_date, end_date, total_runs, total_wickets, team_leader
			 FROM previous_history";

	$result3 = $conn->query($sql3);

	if ($result3->num_rows > 0) {
	    // output data of each row
	    echo "Showing From previous_history Table<br><br>";
	    while($row = $result3->fetch_assoc()) {
	        echo "Club ID: " . $row["c_id"]. "<br>Club Name: " . $row["club_name"]. "<br>Start Date: " . $row["start_date"]. "<br>End Date: " . $row["end_date"]. "<br>Total Runs: " . $row["total_runs"]. "<br>Total Wickets: " . $row["total_wickets"]. "<br>Team Leader: " . $row["team_leader"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql4 = "SELECT club_name, opponent_club_name, e_id, m_id, runs, wickets
			 FROM best_performance";

	$result4 = $conn->query($sql4);

	if ($result4->num_rows > 0) {
	    // output data of each row
	    echo "Showing From best_performance Table<br><br>";
	    while($row = $result4->fetch_assoc()) {
	        echo "Club Name: " . $row["club_name"]. "<br>Opponent Club Name: " . $row["opponent_club_name"]. "<br>Event ID: " . $row["e_id"]. "<br>Match ID: " . $row["m_id"]. "<br>Runs: " . $row["runs"]. "<br>Wickets: " . $row["wickets"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql5 = "SELECT q_id, degree_name, institute, board, year, result
			 FROM qualifications";

	$result5 = $conn->query($sql5);

	if ($result5->num_rows > 0) {
	    // output data of each row
	    echo "Showing From qualifications Table<br><br>";
	    while($row = $result5->fetch_assoc()) {
	        echo "Q_ID: " . $row["q_id"]. "<br>Degree: " . $row["degree_name"]. "<br>Institute: " . $row["institute"]. "<br>Board: " . $row["board"]. "<br>Year: " . $row["year"]. "<br>Result: " . $row["result"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}
	
	$conn->close();
	}
?>