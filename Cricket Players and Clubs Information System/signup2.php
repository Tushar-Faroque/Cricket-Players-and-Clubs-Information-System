<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// contract table
		$club_id = $_POST['cid'];
		$club_name = $_POST['cname'];
		$first_name = $_POST['fname'];
		$middle_name = $_POST['mname'];
		$last_name = $_POST['lname'];
		$player_id = $_POST['pid'];
		$start_date = $_POST['sdate'];
		$end_date = $_POST['edate'];
		$contract_amount = $_POST['camount'];
		$contract_witness_1 = $_POST['cwitness1'];
		$contract_witness_2 = $_POST['cwitness2'];

		$sql1 = "INSERT INTO contract (club_id, club_name, first_name, middle_name, last_name, player_id, start_date, end_date, contract_amount, contract_witness_1, contract_witness_2)
				VALUES ('".$club_id."','".$club_name."','".$first_name."','".$middle_name."','".$last_name."', '".$player_id."','".$start_date."','".$end_date."','".$contract_amount."','".$contract_witness_1."','".$contract_witness_2."')";

		mysqli_query($conn, $sql1);

		//person table
		$first_name2 = $_POST['fname2'];
		$middle_name2 = $_POST['mname2'];
		$last_name2 = $_POST['lname2'];
		$designation = $_POST['designation'];

		$sql2 = "INSERT INTO person (first_name, middle_name, last_name, designation)
				 VALUES ('".$first_name2."', '".$middle_name2."', '".$last_name2."', '".$designation."')";

		mysqli_query($conn, $sql2);

		//payment_schedule table
		$serial_number = $_POST['snumber'];
		$due_date = $_POST['ddate'];
		$payment_date = $_POST['pdate'];
		$amount = $_POST['amount'];

		$sql3 = "INSERT INTO payment_schedule (serial_number, due_date, payment_date, amount)
				 VALUES ('".$serial_number."', '".$due_date."', '".$payment_date."', '".$amount."')";

		mysqli_query($conn, $sql3);


		$serial_number2 = $_POST['snumber2'];
		$due_date2 = $_POST['ddate2'];
		$payment_date2 = $_POST['pdate2'];
		$amount2 = $_POST['amount2'];

		$sql4 = "INSERT INTO payment_schedule (serial_number, due_date, payment_date, amount)
				 VALUES ('".$serial_number2."', '".$due_date2."', '".$payment_date2."', '".$amount2."')";

		mysqli_query($conn, $sql4);

	}
?>