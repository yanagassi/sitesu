<?php  
	require_once("../sistema/adm.class.php");
	if (!empty($_POST['user']) && !empty($_POST['pass'])) {
		$user = $_POST['user'];
		$pass = $_POST['pass'];
	}
	else{header("Location: login.php");}
	$conexao = new conectar();
	$conn = $conexao->conecta();
	$logar = new login();
	$logar->logar($conn,$user,$pass);
	
?>