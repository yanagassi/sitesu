<?php
	$id = $_GET['id'];
	$coment = $_POST['comment'];
	$name = $_POST['name'];

	if (!empty($id) && !empty($coment) && !empty($name)) {
		require_once('sistema/config.php');
		$DB = new DB;
		$conn = $DB -> a();
		$fanart = new fanarts();
		$fanart->addComent($conn,$id,$coment,$name);

	}
?>
