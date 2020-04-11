<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db = "cricket_club";

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $db);

	if ($conn->connect_error) {
    	die("Connection failed: " . $conn->connect_error);
	} 
	echo "Connected successfully" . "<br>" . "<br>";
?>