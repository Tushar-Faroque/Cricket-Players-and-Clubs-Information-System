<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT c_id, club_name, date_of_establishment, president_name
			 FROM club";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From club Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "c_id: " . $row["c_id"]. "<br>club_name: " . $row["club_name"]. "<br>date_of_establishment: " . $row["date_of_establishment"].  "<br>president_name: " . $row["president_name"]. "<br><br><br>";
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

	$conn->close();
	}
?>