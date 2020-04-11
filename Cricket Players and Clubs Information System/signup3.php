<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// club table
		$club_name = $_POST['cname'];
		$date_of_establishment = $_POST['doe'];
		$president_name = $_POST['president'];

		$sql1 = "INSERT INTO club (club_name, date_of_establishment, president_name)
				VALUES ('".$club_name."','".$date_of_establishment."','".$president_name."')";

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

	}
?>