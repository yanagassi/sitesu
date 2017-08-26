<?php 
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();
	$fanart = new fanarts();
	$fanart->insetComentario($conn);
 ?>