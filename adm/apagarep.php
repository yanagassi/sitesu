<?php 
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$login = new login();
	$login->protege($conn);
	$apaga = new adicionar_episodio();
	$apaga -> apagar_ep($conn);
?>