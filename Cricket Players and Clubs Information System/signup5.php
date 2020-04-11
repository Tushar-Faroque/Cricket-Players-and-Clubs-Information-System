<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// match_state table
		$e_id = $_POST['eid'];
		$v_id = $_POST['vid'];
		$date_of_the_match = $_POST['dom'];
		

		$sql1 = "INSERT INTO match_state (e_id, v_id, date_of_the_match)
				VALUES ('".$e_id."','".$v_id."','".$date_of_the_match."')";

		mysqli_query($conn, $sql1);

		// match_information table
		$m_id = $_POST['mid'];
		$man_of_the_match = $_POST['motm'];
		$umpires = $_POST['umpires'];

		$sql2 = "INSERT INTO match_information (m_id, man_of_the_match, umpires)
				VALUES ('".$m_id."','".$man_of_the_match."','".$umpires."')";

		mysqli_query($conn, $sql2);

		$m_id2 = $_POST['mid2'];
		$man_of_the_match2 = $_POST['motm2'];
		$umpires2 = $_POST['umpires2'];

		$sql3 = "INSERT INTO match_information (m_id, man_of_the_match, umpires)
				VALUES ('".$m_id2."','".$man_of_the_match2."','".$umpires2."')";

		mysqli_query($conn, $sql3);

		$m_id3 = $_POST['mid3'];
		$man_of_the_match3 = $_POST['motm3'];
		$umpires3 = $_POST['umpires3'];

		$sql4 = "INSERT INTO match_information (m_id, man_of_the_match, umpires)
				VALUES ('".$m_id3."','".$man_of_the_match3."','".$umpires3."')";

		mysqli_query($conn, $sql4);

	}
?>