<?php
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$index = new index_adm();
	$login = new login();
	$login->protege($conn);
	$page = new editarEpisodios();
	$pafa->editarEp($conn);
?>