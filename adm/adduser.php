<?php
	require_once("../sistema/adm.class.php");
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$index = new index_adm();
	$login = new login();
	$login->protege($conn);
	$admin=new admin();
	$rank = $admin->GetRank($conn);
	if ($rank == 1) {
		$admin->adicionarUser($conn);
	}
	else{echo "<h1>Você não tem permissão para isso !</h1>";}
?>