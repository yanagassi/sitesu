<?php
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$fanarts = new fanarts();
	$fanarts->adicionar_fanart($conn);
?>