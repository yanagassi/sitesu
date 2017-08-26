<?php
	require_once('sistema/config.php');
	$DB = new DB;
	$conn = $DB -> a();

	$tiket = new tiket();
	$tiket->enviar($conn);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Problema relatado !!!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/notifica.css">
	<script type='text/javascript'>function limpa(){alert("Seu foi aviso enviado com sucesso. Obrigado !!!");}</script>
</head>
<body onload="limpa(); window.close();">
<div style="background:white; height: 80%; width: 90%; margin-left: 5%;">
</div>
</body>
</html>