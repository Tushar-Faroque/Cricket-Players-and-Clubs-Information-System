<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT c_id, p_id, date_of_formation, e_id, team_leader_id, team_leader_name, coach_id, coach_name
			 FROM team";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_state Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "c_id: " . $row["c_id"]. "<br>p_id: " . $row["p_id"]. "<br>date_of_formation: " . $row["date_of_formation"]. "<br>e_id: " . $row["e_id"]. "<br>team_leader_id: " . $row["team_leader_id"]. "<br>team_leader_name: " . $row["team_leader_name"]. "<br>coach_id: " . $row["coach_id"]. "<br>coach_name: " . $row["coach_name"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql2 = "SELECT p_id, name
			 FROM team_player_list";

	$result2 = $conn->query($sql2);

	if ($result2->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_information Table<br><br>";
	    while($row = $result2->fetch_assoc()) {
	        echo "Player ID: " . $row["p_id"]. "<br>Name: " . $row["name"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$conn->close();
	}
?>