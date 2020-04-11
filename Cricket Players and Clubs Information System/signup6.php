<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// team table
		$c_id = $_POST['cid'];
		$p_id = $_POST['pid'];
		$date_of_formation = $_POST['tfd'];
		$e_id = $_POST['eid'];
		$team_leader_id = $_POST['tdid'];
		$team_leader_name = $_POST['tdname'];
		$coach_id = $_POST['coachid'];
		$coach_name = $_POST['coachname'];
		

		$sql1 = "INSERT INTO team (c_id, p_id, date_of_formation, e_id, team_leader_id, team_leader_name, coach_id, coach_name)
				VALUES ('".$c_id."','".$p_id."','".$date_of_formation."','".$e_id."','".$team_leader_id."','".$team_leader_name."','".$coach_id."','".$coach_name."')";

		mysqli_query($conn, $sql1);

		// team_player_list table
		$p_id1 = $_POST['pid1'];
		$nam1 = $_POST['n1'];

		$sql2 = "INSERT INTO team_player_list (p_id, name)
				VALUES ('".$p_id1."','".$nam1."')";

		mysqli_query($conn, $sql2);


		$p_id2 = $_POST['pid2'];
		$nam2 = $_POST['n2'];

		$sql3 = "INSERT INTO team_player_list (p_id, name)
				VALUES ('".$p_id2."','".$nam2."')";

		mysqli_query($conn, $sql3);


		$p_id3 = $_POST['pid3'];
		$nam3 = $_POST['n3'];

		$sql4 = "INSERT INTO team_player_list (p_id, name)
				VALUES ('".$p_id3."','".$nam3."')";

		mysqli_query($conn, $sql4);

	}
?>