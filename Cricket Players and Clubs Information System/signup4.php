<?php
	if (isset($_POST['submit'])) {

		include_once "connection.php";

		// match_state table
		$m_id = $_POST['mid'];
		$v_id = $_POST['vid'];
		$date_of_the_match = $_POST['dom'];
		

		$sql1 = "INSERT INTO match_state (m_id, v_id, date_of_the_match)
				VALUES ('".$m_id."','".$v_id."','".$date_of_the_match."')";

		mysqli_query($conn, $sql1);

		// match_performance table
		$Player_pid = $_POST['pid'];
		$total_wickets = $_POST['tw'];
		$total_runs = $_POST['tr'];
		$outstanding_performance = $_POST['op'];

		$sql2 = "INSERT INTO match_performance (pid, total_wickets, total_runs, outstanding_performance)
				VALUES ('".$Player_pid."','".$total_wickets."','".$total_runs."','".$outstanding_performance."')";

		mysqli_query($conn, $sql2);

		$Player_pid2 = $_POST['pid2'];
		$total_wickets2 = $_POST['tw2'];
		$total_runs2 = $_POST['tr2'];
		$outstanding_performance2 = $_POST['op2'];

		$sql3 = "INSERT INTO match_performance (pid, total_wickets, total_runs, outstanding_performance)
				VALUES ('".$Player_pid2."','".$total_wickets2."','".$total_runs2."','".$outstanding_performance2."')";

		mysqli_query($conn, $sql3);

		$Player_pid3 = $_POST['pid3'];
		$total_wickets3 = $_POST['tw3'];
		$total_runs3 = $_POST['tr3'];
		$outstanding_performance3 = $_POST['op3'];

		$sql4 = "INSERT INTO match_performance (pid, total_wickets, total_runs, outstanding_performance	)
				VALUES ('".$Player_pid3."','".$total_wickets3."','".$total_runs3."','".$outstanding_performance3."')";

		mysqli_query($conn, $sql4);

	}
?>