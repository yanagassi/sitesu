<?php 
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$login = new login();
	$login->protege($conn);
	$login->sair();
?>