<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT m_id, v_id, date_of_the_match
			 FROM match_state";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_state Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "m_id: " . $row["m_id"]. "<br>v_id: " . $row["v_id"]. "<br>date_of_the_match: " . $row["date_of_the_match"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql2 = "SELECT pid, total_wickets, total_runs, outstanding_performance
			 FROM match_performance";

	$result2 = $conn->query($sql2);

	if ($result2->num_rows > 0) {
	    // output data of each row
	    echo "Showing From match_performance Table<br><br>";
	    while($row = $result2->fetch_assoc()) {
	        echo "Player ID: " . $row["pid"]. "<br>total_wickets: " . $row["total_wickets"]. "<br>total_runs: " . $row["total_runs"]. "<br>outstanding_performance: " . $row["outstanding_performance"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$conn->close();
	}
?>