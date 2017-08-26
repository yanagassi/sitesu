<?php 
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$page = new fanarts();
	$page = new adminVer();
	if ($page->verifica($conn)) {
		$id = $_GET['id'];
		$data = $conn->prepare("DELETE FROM fanarts where id = :id");
		$data->bindParam(":id", $id, PDO::PARAM_INT);
		$data->execute();
		header("Location: fanarts.php");
	}else{header("Location: fanarts.php");}
?>