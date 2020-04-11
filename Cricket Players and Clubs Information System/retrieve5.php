<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT e_id, v_id, date_of_the_match
			 FROM match_state";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_state Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "e_id: " . $row["e_id"]. "<br>v_id: " . $row["v_id"]. "<br>date_of_the_match: " . $row["date_of_the_match"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql2 = "SELECT m_id, man_of_the_match, umpires
			 FROM match_information";

	$result2 = $conn->query($sql2);

	if ($result2->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_information Table<br><br>";
	    while($row = $result2->fetch_assoc()) {
	        echo "Match ID: " . $row["m_id"]. "<br>man_of_the_match: " . $row["man_of_the_match"]. "<br>umpires: " . $row["umpires"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$conn->close();
	}
?>