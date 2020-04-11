<?php

	if (isset($_POST['view'])) {
	include_once "connection.php";

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT contract_id,club_id, club_name, first_name, middle_name, last_name, player_id, start_date, end_date, contract_amount, contract_witness_1, contract_witness_2
			 FROM contract";

	$result1 = $conn->query($sql1);

	if ($result1->num_rows > 0) {
	    // output data of each row
	    echo "Showing From contract Table<br><br>";
	    while($row = $result1->fetch_assoc()) {
	        echo "contract_id: " . $row["contract_id"]. "<br>club_id: " . $row["club_id"]. "<br>club_name: " . $row["club_name"]. "<br>Name: " . $row["first_name"]. " " . $row["middle_name"]. " " . $row["last_name"]. "<br>player_id: " . $row["player_id"]. "<br>start_date: " . $row["start_date"]. "<br>end_date: " . $row["end_date"]. "<br>contract_amount: " . $row["contract_amount"]. "<br>contract_witness_1: " . $row["contract_witness_1"]. "<br>contract_witness_2: " . $row["contract_witness_2"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql2 = "SELECT person_id, first_name, middle_name, last_name, designation
			 FROM person";

	$result2 = $conn->query($sql2);

	if ($result2->num_rows > 0) {
	    // output data of each row
	    echo "Showing From person Table<br><br>";
	    while($row = $result2->fetch_assoc()) {
	        echo "person_id: " . $row["person_id"]. "<br>Name: " . $row["first_name"]. " " . $row["middle_name"]. " " . $row["last_name"]. "<br>designation: " . $row["designation"]."<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$sql3 = "SELECT serial_number, due_date, payment_date, amount
			 FROM payment_schedule";

	$result3 = $conn->query($sql3);

	if ($result3->num_rows > 0) {
	    // output data of each row
	    echo "Showing From payment_schedule Table<br><br>";
	    while($row = $result3->fetch_assoc()) {
	        echo "serial_number: " . $row["serial_number"]. "<br>due_date: " . $row["due_date"]. "<br>payment_date: " . $row["payment_date"].  "<br>amount: " . $row["amount"]. "<br><br><br>";
	    }
	} else {
	    echo "0 results";
	}

	$conn->close();
	}
?>